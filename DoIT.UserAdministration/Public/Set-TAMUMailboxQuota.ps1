<#
.SYNOPSIS
    Sets the mailbox quota

.DESCRIPTION
    The Set-TAMUMailboxQuota function sets the mailbox quota for a user in Exchange Management.

.INPUTS
    UIN, Quote (10 GB, 25 GB, 50 GB, 100 GB)

.OUTPUTS
    Booleon

#>

Function Set-TAMUMailboxQuota {
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
            "10 GB",
            "25 GB",
            "50 GB",
            "100 GB"
        )]
        [ValidateNotNullOrEmpty()]
        [string]$Quota
    )

    BEGIN {
        ### Step 0: Setup ###
        Enter-TAMUGateway
        $GatewayPath = "https://gateway.tamu.edu/settings/proxy/exchange"
        $EditPath = "edit"
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

        ### Step 3: Select the quota ###
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
        $SaveElement = (Find-SeElement -Driver $Global:Driver -XPath '/html/body/div/div[2]/div[1]/div[1]/form/button[@type="submit"]')
        # This is pretty annoying, but this appears to be the only way to click the button to avoid click interception
        Invoke-SeClick -Element $SaveElement -JavaScriptClick -Driver $Global:Driver
        
        Write-Verbose "..Checking for update"
        if ((Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[1]").Text -eq "User mailbox updated.") {
            Write-Verbose "Success....Update found"
            Write-Output "Successfully set Quota to $Quota"
            return $true
        }
        Write-Verbose "Failed....Update not found"
        return $false
    }
}
