<#
.SYNOPSIS
    Removes a user from one or more distribution lists in Exchange Management.

.DESCRIPTION
    The Remove-TAMUDistributionGroups function removes a user from one or more distribution lists in Exchange Management.

.PARAMETER UIN
    A TAMU UIN

.PARAMETER Department
    DSA Department

.PARAMETER DistributionLists
    DSA Distribution list. Either in "DSA - DL " format or as an email

.INPUTS
    UIN, DistributionList (DSA - DL * -or- resource@department.tamu.edu)

.OUTPUTS
    Boolean

#>

Function Remove-TAMUDistributionGroups {
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
            Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [ValidateScript( {
                if ($_ -match '^.*@.*tamu\.edu$') {
                    $true
                }
                elseif ($_ -match '^DSA - DL - ') {
                    $true
                }
                else { throw "Only valid DLs are allowed" }
            })]
        [string[]]$DistributionLists
    )

    BEGIN {
        ### Step 0: Setup ###
        Enter-TAMUGateway
        $GatewayPath = "https://gateway.tamu.edu/settings/proxy/exchange"
        $EditPath = "distribution_groups"
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

        ### Step 3: Select Department ###
        Write-Verbose "..Selecting the department $Department"
        (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div/div/ul/li//a[contains(text(),'$Department')]").Click()

        ### Step 4: Select DLs
        Write-Verbose "..Selecting the Distribution Lists"
        foreach ($DistributionList in $DistributionLists) {
            Write-Verbose "....Searching for $Distribution"
            if (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/form//label[contains(text(),'$DistributionList')]") {
                $DistributionElement = (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/form//label[contains(text(),'$DistributionList')]/input[@type='checkbox']")

                if ($DistributionElement.Selected) {
                    Write-Verbose "......Found; $DistributionList deselected"
                    $DistributionElement.Click()
                }
                else {
                    Write-Verbose "......Found; $DistributionList already deselected"
                }

                Write-Output "Removed $DistributionList"
            }
            else {
                throw "$DistributionList was not found"
            }
        }
        
        ### Step 5: Save the changes ###
        Write-Verbose "..Submit the save"
        (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/form/div/div/button").Click()

        ### Step 6: Check for the update ###
        Write-Verbose "..Checking for update"
        if ((Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[1]").Text -eq "Distribution group membership updated.") {
            Write-Verbose "Success....Update found"
            return $true
        }
        Write-Verbose "Failed....Update not found"
        return $false
    }
}
