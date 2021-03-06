﻿<#
.SYNOPSIS
    Sets default from address in Exchange Management.

.DESCRIPTION
    The Set-TAMUFromAddress function will set the default from address in Exchange Management.

.PARAMETER UIN
    A TAMU UIN

.PARAMETER Email
    An email for the user

.INPUTS
    UIN and email

.OUTPUTS
    Boolean

#>

Function Set-TAMUFromAddress {
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

        ### Step 3: Select email address ###
        Write-Verbose "..Select email address $Email"
        $Element = (Find-SeElement -Driver $Global:Driver -XPath '//*[@id="id_from_address"]/option') | Where-Object { $_.text -eq $Email }
        if ($Element.count -ne 1) {
            throw "Did not find the email"
        }
        if ($Element.Selected) {
            Write-Verbose "....Email address already selected; no change"
        }
        else {
            Write-Verbose "....Found email; selected"
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
            Write-Output "Successfully default address to $Email"
            return $true
        }
        Write-Verbose "Failed....Update not found"
        return $false
    }
}
