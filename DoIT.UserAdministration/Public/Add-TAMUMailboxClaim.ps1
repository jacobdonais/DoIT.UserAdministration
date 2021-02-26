<#
.SYNOPSIS
    Claims a mailbox for a user.

.DESCRIPTION
    The Add-TAMUMailboxClaim function claims a mailbox for a user.

.INPUTS

.OUTPUTS

.NOTES

Author: Jacob Donais
Version: v1.0
Change Log:
    v1.0
        Initial build

#>

Function Add-TAMUMailboxClaim {
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
        [string]$Department,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $false)]
        [ValidateSet(
            "10 GB",
            "25 GB",
            "50 GB",
            "100 GB"
        )]
        [ValidateNotNullOrEmpty()]
        [string]$Quota = "10 GB"
    )

    BEGIN {
        ### Step 0: Setup ###
        Enter-TAMUGateway
        $GatewayPath = "https://gateway.tamu.edu/settings/proxy/exchange"
        $EditPath = "add"
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

        ### Step 3: Select the department
        Write-Verbose "..Selecting Department"
        $Element = (Find-SeElement -Driver $Global:Driver -XPath '//*[@id="id_to_group"]/option') | Where-Object { $_.text -like "TAMU - $Department" }
        if ($Element.count -ne 1) {
            throw "Found multiple department claims"
        }
        if (!$Element.Selected) {
            $Element.Click()
        }

        ### Step 4: Select the quota ###
        Write-Verbose "..Selecting quota"
        $Element = (Find-SeElement -Driver $Global:Driver -XPath '//*[@id="id_quota"]/option') | Where-Object { $_.text -like "$Quota" }
        if ($Element.count -ne 1) {
            throw "Found multiple Quotas"
        }
        if (!$Element.Selected) {
            $Element.Click()
        }

        ### Step 4: Submit the save ###
        Write-Verbose "..Submit the save"
        (Find-SeElement -Driver $Global:Driver -XPath '//*[@id="add_form_submit"]').Click()
        
        Write-Verbose "..Checking for update"
        if ((Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[1]").Text -eq "Mailbox has been created for the user.") {
            Write-Verbose "Success....Update found"
            return $true
        }
        Write-Verbose "Failed....Update not found"
        return $false
    }
}
