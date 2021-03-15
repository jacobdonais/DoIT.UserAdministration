<#
.SYNOPSIS
    Claims a mailbox and adds external addresses.

.DESCRIPTION
    The New-TAMUMailbox function will claim a mailbox and add default and optional external addresses.

.PARAMETER UIN
    A TAMU UIN

.INPUTS
    UIN, UserName, EmailDomain, Department

.OUTPUTS
    None

#>

Function New-TAMUMailbox {
    [CmdletBinding()]Param (
        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $true)]
        [ValidateScript( {
                if ($_ -notmatch "^[0-9]{3}00[0-9]{4}$") {
                    throw "Only valid UINs are allowed"
                }
                else { $true }
            })]
        [ValidateNotNullOrEmpty()]
        [string]$UIN,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string]$UserName,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $false)]
        [ValidateSet(
            "bgcc.tamu.edu",
            "caps.tamu.edu",
            "corps.tamu.edu",
            "disability.tamu.edu",
            "dms.tamu.edu",
            "doit.tamu.edu",
            "dsa.tamu.edu",
            "ems.tamu.edu",
            "msc.tamu.edu",
            "navy.tamu.edu",
            "nrotcmail.tamu.edu",
            "rec.tamu.edu",
            "reslife.tamu.edu",
            "shs.tamu.edu",
            "sls.tamu.edu",
            "stuact.tamu.edu",
            "studentlife.tamu.edu",
            "studentmedia.tamu.edu",
            "uart.tamu.edu",
            "vpsa.tamu.edu"
        )]
        [ValidateNotNullOrEmpty()]
        [string]$EmailDomain,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $true)]
        [ValidateSet(
            "Disability Resources",
            "Counseling & Psychological Services",
            "DSA Student Organizations",
            "Office of the VP for Student Affairs",
            "University Art Collections & Exhibitions",
            "Student Life",
            "University Center and Special Events",
            "Student Health Services",
            "Student Life Studies",
            "Memorial Student Center",
            "Recreational Sports",
            "Music Activities",
            "Multicultural Services",
            "Student Affairs Development Office",
            "Corps of Cadets",
            "Student Affairs IT",
            "Residence Life",
            "Student Activities",
            "Children's Center"
        )]
        [ValidateNotNullOrEmpty()]
        [string]$Department
    )

    BEGIN {
        Enter-TAMUGateway -ErrorAction Stop
    }

    PROCESS {
        # Step 0: Confirm there is no mailbox claim
        $MailboxClaims = Get-TAMUMailboxClaims -UIN $UIN
        if ($MailboxClaims) {
            if ($MailboxClaims.MailboxClaims) {
                if ($MailboxClaims.MailboxClaims -ne "There are no Mailbox Claims for this user.") {
                    throw "User already has a mailbox claim"
                }
            }
        }
        else {
            throw "Failed to get Mailbox claims"
        }

        # Step 1: add the claim
        Write-Verbose "..Claiming mailbox with Add-TAMUMailboxClaim"
        if (!(Add-TAMUMailboxClaim -UIN $UIN -Department $Department)) {
            throw "Failed to add Mailbox"
        }
        

        # Step 2: Confirm the claim
        Write-Verbose "..Confirming Mailbox claim"
        $IsMailboxClaimed = $false
        $count = 0
        while (!$IsMailboxClaimed -and $count -lt 10) {
            Write-Verbose "....Attempt $count"
            $MailboxClaims = Get-TAMUMailboxClaims -UIN $UIN
            if ($MailboxClaims.Organization) {
                foreach ($MailboxClaim in $MailboxClaims) {
                    if ($MailboxClaim.Organization -eq $Department) {
                        if ($MailboxClaim.Status -eq "Approved") {
                            Write-Verbose "....Mailbox is claimed"
                            $IsMailboxClaimed = $true
                        }
                        elseif ($MailboxClaim.Status -eq "Pending") {
                            throw "Mailbox claim is pending"
                        }
                    }
                }
            }
            else {
                Start-Sleep -Seconds 5
            }
            $count++
        }

        # Step 3: Add dsa address
        Write-Verbose "..Adding dsa email address"
        if (!(Add-TAMUExternalAddresses -UIN $UIN -UserName $UserName -Default)) {
            Start-Sleep -Seconds 5
            Write-Verbose "..Final Attempt: Adding dsa email address"
            if (!(Add-TAMUExternalAddresses -UIN $UIN -UserName $UserName -Default)) {
                throw "Failed to add DSA email address"
            }
        }

        # Step 4: Confirm email address
        Write-Verbose "..Confirming DSA email address"
        $IsDefaultAddressAdded = $false
        $count = 0
        while (!$IsDefaultAddressAdded -and $count -le 10) {
            Write-Verbose "....Attempt $count"
            $Addresses = Get-TAMUExternalAddresses -UIN $UIN
            if ($Addresses) {
                foreach ($Address in $Addresses) {
                    if ($Address.Address -eq "$Username@dsa.tamu.edu") {
                        Write-Verbose "....Address Confirmed"
                        $IsDefaultAddressAdded = $true
                    }
                }
            }
            else {
                Start-Sleep -Seconds 5
            }
            $count++
        }

        
        if ($EmailDomain -ne "dsa.tamu.edu") {
            # Step 5: Add optional email domain
            Write-Verbose "..Adding optional email address"
            if (!(Add-TAMUExternalAddresses -UIN $UIN -UserName $UserName -EmailDomain $EmailDomain -Default)) {
                Start-Sleep -Seconds 5
                Write-Verbose "..Final Attempt: Adding optional email address"
                if (!(Add-TAMUExternalAddresses -UIN $UIN -UserName $UserName -EmailDomain $EmailDomain -Default)) {
                    throw "Failed to add optional email address"
                }
            }

            # Step 6: Confirm email address
            Write-Verbose "..Confirming optional email address"
            $IsOptionalAddressAdded = $false
            $count = 0
            while (!$IsOptionalAddressAdded -and $count -le 10) {
                Write-Verbose "....Attempt $count"
                $Addresses = Get-TAMUExternalAddresses -UIN $UIN
                if ($Addresses) {
                    foreach ($Address in $Addresses) {
                        if ($Address.Address -eq "$Username@$EmailDomain") {
                            Write-Verbose "....Address Confirmed"
                            $IsOptionalAddressAdded = $true
                        }
                    }
                }
                else {
                    Start-Sleep -Seconds 5
                }
                $count++
            }
        }
    }
}
