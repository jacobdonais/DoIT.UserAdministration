<#
.SYNOPSIS
    Returns user detail information from Exchange Management.

.DESCRIPTION
    The Get-TAMUUserDetails function will return the user detail information from Exchange Management.

.INPUTS
    UIN

.OUTPUTS
    Name, NetID, UIN, Department

#>

Function Get-TAMUUserDetails {
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
        
        ### Step 2: Get User details ###
        Write-Verbose "..Geting User Details"
        return New-Object psobject -Property ([ordered]@{
                Name       = (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[2]/div[1]/dl/dd[1]")[0].Text
                NetID      = (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[2]/div[1]/dl/dd[2]")[0].Text
                UIN        = (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[2]/div[1]/dl/dd[3]")[0].Text
                Title      = (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[2]/div[1]/dl/dd[4]")[0].Text
                Department = (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[2]/div[1]/dl/dd[5]")[0].Text
            })
    }
}
