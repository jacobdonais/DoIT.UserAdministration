<#
.SYNOPSIS
    Removes an external address in Exchange Management.

.DESCRIPTION
    The Remove-TAMUExternalAddresses function removes an external address in Exchange Management.

.PARAMETER UIN
    A TAMU UIN

.PARAMETER Email
    An email address

.INPUTS
    UIN, Email

.OUTPUTS
    Boolean

#>

Function Remove-TAMUExternalAddresses {
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
        [string]$Email
    )

    BEGIN {
        ### Step 0: Setup ###
        Enter-TAMUGateway
        $GatewayPath = "https://gateway.tamu.edu/settings/proxy/exchange"
        $EditPath = "addresses/$Email/delete/"
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

        ### Step 3: Submit the save ###
        Write-Verbose "..Submit the save"
        (Find-SeElement -Driver $Global:Driver -XPath '/html/body/div/div[2]/form/button').Click()
        
        Write-Verbose "..Checking for update"
        (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[1]").Text
        if ((Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[1]").Text -eq "Address $Email removed from account") {
            Write-Verbose "Success....Update found"
            Write-Output "Removed external address $Email"
            return $true
        }
        Write-Verbose "Failed....Update not found"
        return $false
    }
}
