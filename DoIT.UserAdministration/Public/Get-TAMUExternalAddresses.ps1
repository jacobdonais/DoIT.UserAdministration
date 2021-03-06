﻿<#
.SYNOPSIS
    Returns external addresses from Exchange Management.

.DESCRIPTION
    The Get-TAMUExternalAddresses function returns all external addresses from Exchange Management.

.PARAMETER UIN
    A TAMU UIN

.INPUTS
    A valid TAMU UIN

.OUTPUTS
    External Addresses

#>

Function Get-TAMUExternalAddresses {
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

        ### Step 2: Get External Address ###
        $Emails = (Find-SeElement -Driver $Global:Driver -XPath '/html/body/div/div[2]/div[2]/div/table/tbody/tr/td[1]').Text
        foreach ($Email in $Emails) {
            $Email
        }
    }
}
