<#
.SYNOPSIS
    Return contact for information from Exchange Management.

.DESCRIPTION
    The Get-TAMUContactFor function will return the contact for from Exchange Management.

.INPUTS
    UIN

.OUTPUTS
    Contact For

#>

Function Get-TAMUContactFor {
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
        [string]$UIN
    )

    BEGIN {
        ### Step 0: Setup ###
        Enter-TAMUGateway
        $GatewayPath = "https://gateway.tamu.edu/settings/proxy/exchange"
    }

    PROCESS {
        ### Step 1: Navigate to Gateway for user ###
        Write-Verbose "Navigation to $GatewayPath/$UIN/"
        Enter-SeUrl -Url "$GatewayPath/$UIN/" -Driver $Global:Driver
        if ($Global:Driver.Url -like "https://cas.tamu.edu/cas/login*") {
            Write-Verbose "..Not logged in. Entering TAMU Gateway..."
            Enter-TAMUGateway -Force
        }

        ### Step 2: Get Contact For ###
        Write-Verbose "..Getting Contact For"
        return New-Object psobject -Property ([ordered]@{
                UIN        = $UIN
                ContactFor = (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[3]/div[1]/ul").Text
            })
    }
}
