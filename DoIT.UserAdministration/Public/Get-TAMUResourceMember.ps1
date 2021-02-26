<#
.SYNOPSIS
    Returns all users of a shared resource.

.DESCRIPTION
    The Get-TAMUResourceMember function returns all users of a shared resource in EAC.

.INPUTS
    Resource

.OUTPUTS
    Resource Members

#>

function Get-TAMUResourceMember {
    Param (
        [Parameter(
            Mandatory,
            ValueFromPipeline,
            Position=0,
            ValueFromPipelineByPropertyName=$True
        )]
        [ValidateScript({
            Get-Mailbox $_
        })]
        [String[]]$Resource,
        [Switch]$AsText
    )

    Begin {
        Enter-TAMUExchange
    }

    Process {
        $Resource | ForEach-Object {
            $Members = @()

            $MailboxDN = Get-Mailbox -identity $_ -OrganizationalUnit "OU=Division of Student Affairs,OU=Units,OU=TAMU,OU=TAMUSystems,DC=ads,DC=tamu,DC=edu" | Select-Object -ExpandProperty Name

            $FullAccess = Get-MailboxPermission -Identity $_ | Where-Object {($_.AccessRights -eq "FullAccess") -and ($_.User -like "*AUTH\*")} | Select-Object -ExpandProperty User

            $SendAs = Get-ADPermission -Identity $MailboxDN | Where-Object {($_.ExtendedRights -eq "Send-As") -and ($_.User -like "*AUTH\*")} | Select-Object -ExpandProperty User

            $FullAccess | ForEach-Object {
                if($_ -notin $Members) {
                    $Members += $_
                }
            }

            $SendAs | ForEach-Object {
                if($_ -notin $Members) {
                    $Members += $_
                }
            }

            $Members | ForEach-Object {
                $AccessLevel = @{}

                $NetID = $_ -replace("AUTH\\","")

                $DisplayName = $_ -replace("AUTH\\","") |
                    Get-ADUser -Server ads.tamu.edu -Credential $AuthCreds -Properties displayname |
                    Select-Object -ExpandProperty displayName

                if($FullAccess -contains $_) {
                    $AccessLevel['FullAccess'] = $true
                }
                else {
                    $AccessLevel['FullAccess'] = $false
                }

                if($SendAs -contains $_) {
                    $AccessLevel['SendAs'] = $true
                }
                else {
                    $AccessLevel['SendAs'] = $false
                }

                [pscustomobject]@{
                    NetID = $NetID
                    Name = $DisplayName
                    FullAccess = $AccessLevel['FullAccess']
                    SendAs = $AccessLevel['SendAs']
                    Resource = $MailboxDN
                }
            }
        }
    }
}
