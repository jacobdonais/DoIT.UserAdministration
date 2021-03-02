<#
.SYNOPSIS
    Removes a mailbox claim for a user in Exchange Management.

.DESCRIPTION
    The Remove-TAMUMailboxClaim function will remove the mailbox claim for a user in Exchange Management.

.PARAMETER UIN
    A TAMU UIN

.PARAMETER Department
    A DSA Department

.INPUTS
    UIN, Department

.OUTPUTS
    Boolean

#>

Function Remove-TAMUMailboxClaim {
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
        ### Step 0: Setup ###
        Enter-TAMUGateway
        $GatewayPath = "https://gateway.tamu.edu/settings/proxy/exchange"
        $EditPath = "delete"
    }

    PROCESS {
        ### Step 1: Navigate to Gateway for user ###
        Write-Verbose "Navigation to $GatewayPath/$UIN/$EditPath"
        Enter-SeUrl -Url "$GatewayPath/$UIN/$EditPath" -Driver $Global:Driver
        if ($Global:Driver.Url -like "https://cas.tamu.edu/cas/login*") {
            Write-Verbose "..Not logged in. Entering TAMU Gateway..."
            Enter-TAMUGateway -Force
        }
        
        ### Step 2: Check for permissions ###
        Write-Verbose "..Checking for edit contact for permissions"
        if ((Find-SeElement -Driver $Global:Driver -XPath '//*[@id="contentarea"]/h3').Text -like "You are not authorized to use this service.") {
            throw "You are not authorized to add a contact for."
        }

        ### Step 3: Validate department to delete ###
        Write-Verbose "..Checking for department"
        if ((Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div/p/strong").Text -notlike "*$Department*") {
            throw "Invalid department to delete"
        }

        ### Step 4: Submit the save ###
        Write-Verbose "..Submit the save"
        (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div/form/table/tbody/tr/td/a[2]/button").Click()

        ### Step 5: Check for the update ###
        Write-Verbose "..Checking for update"
        if ((Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[1]").Text -eq "User's mailbox removed.") {
            Write-Verbose "Success....Update found"
            Write-Output "Removed Mailbox Claim for $Department"
            return $true
        }
        Write-Verbose "Failed....Update not found"
        return $false
    }
}
