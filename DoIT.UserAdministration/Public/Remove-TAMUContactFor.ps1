<#
.SYNOPSIS
    Removes a user as a contact for from Exchange Management.

.DESCRIPTION
    The Remove-TAMUContactFor function removes a user as a contact for a department from Exchange Management.

.PARAMETER UIN
    A TAMU UIN

.PARAMETER Department
    A DSA Department

.INPUTS
    UIN, Department

.OUTPUTS
    Boolean

#>

Function Remove-TAMUContactFor {
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
        $EditPath = "contact_groups"
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

        ### Step 3: Search for the checkbox ###
        Write-Verbose "..Searching for checkbox"
        $Element = (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div//form//label[contains(text(),'$Department')]/input[@type='checkbox']")
        if (!$Element.selected) {
            Write-Verbose "....Checkbox found; is not a contact for $Department"
            return $true
        }

        ### Step 4: Check the checkbox ###
        Write-Verbose "....Checkbox found; deselecting checkbox"
        $Element.Click()

        ### Step 5: Submit the save ###
        Write-Verbose "..Submit the save"
        (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/form/div/div/button").Click()

        ### Step 6: Check for the update ###
        Write-Verbose "..Checking for update"
        if ((Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[1]").Text -eq "Contact group membership updated.") {
            Write-Verbose "Success....Update found"
            Write-Output "Removed Contact for $Department"
            return $true
        }
        Write-Verbose "Failed....Update not found"
        return $false
        
    }
}
