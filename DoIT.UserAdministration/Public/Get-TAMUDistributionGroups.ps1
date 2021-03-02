<#
.SYNOPSIS
    Return distriubtion group information from Exchange Management.

.DESCRIPTION
    The Get-TAMUDistributionGroups function will return the distribution group information from Exchange Management.

.PARAMETER UIN
    A TAMU UIN

.INPUTS
    A valid TAMU UIN

.OUTPUTS
    Distribution Groups

#>

Function Get-TAMUDistributionGroups {
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

        ### Step 2: Get Distribution Groups ###
        Write-Verbose "..Getting Distribution Groups"
        $DistributionGroups = (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[2]/div[2]/ul").Text
        if ($DistributionGroups -ne "User is not in any distribution groups.") {
            $DistributionGroups = $DistributionGroups -split "`n"
        }
        $DistributionGroups
    }
}
