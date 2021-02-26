<#
.SYNOPSIS
    Will add an external email address to an account.

.DESCRIPTION
    The Add-TAMUExternalAddresses function will add an external address. There is a flag
    to set the address as default.

.INPUTS
    UIN, Username, Domain (optional)

.OUTPUTS
    Booleon

#>

Function Add-TAMUExternalAddresses {
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
        [string]$Username,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $false)]
        [ValidateSet(
            "bgcc.tamu.edu",
            "caps.tamu.edu",
            "corps.tamu.edu",
            "disability.tamu.edu",
            "dms.tamu.edu",
            "doit.tamu.edu",
            "dsa.tamu.edu",
            "ems.tamu.edu",
            "msc.tamu.edu",
            "navy.tamu.edu",
            "nrotcmail.tamu.edu",
            "rec.tamu.edu",
            "reslife.tamu.edu",
            "shs.tamu.edu",
            "sls.tamu.edu",
            "stuact.tamu.edu",
            "studentlife.tamu.edu",
            "studentmedia.tamu.edu",
            "uart.tamu.edu",
            "vpsa.tamu.edu"
        )]
        [ValidateNotNullOrEmpty()]
        [string]$EmailDomain = "dsa.tamu.edu",

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $false)]
        [switch]$Default
    )

    BEGIN {
        ### Step 0: Setup ###
        Enter-TAMUGateway
        $GatewayPath = "https://gateway.tamu.edu/settings/proxy/exchange"
        $EditPath = "addresses/add/"
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

        ### Step 3: Set the username field ###
        Write-Verbose "..Set the username field"
        $UsernameElement = (Find-SeElement -Driver $Global:Driver -XPath '//*[@id="id_alias"]')
        $UsernameElement.Clear()
        $UsernameElement.SendKeys("$Username")

        ### Step 4: Set the address field ###
        Write-Verbose "..Set the address field"
        $DomainElement = (Find-SeElement -Driver $Global:Driver -XPath '//*[@id="id_domain"]/option') | Where-Object { $_.text -eq $EmailDomain }
        $DomainElement.Click()

        ### Step 5 (optional): Set as default email ###
        Write-Verbose "..Set the default field"
        $DefaultElement = (Find-SeElement -Driver $Global:Driver -XPath '//*[@id="id_is_from_address"]')
        if ($Default) {
            Write-Verbose "....default flag set"
            if (!$DefaultElement.Selected) {
                Write-Verbose "......Not selected; selecting it"
                $DefaultElement.Click()
            }
            else {
                Write-Verbose "......Selected; no change"
            }
        }
        else {
            Write-Verbose "....default flag not set"
            if ($DefaultElement.Selected) {
                Write-Verbose "......Selected; deselecting it"
                $DefaultElement.Click()
            }
            else {
                Write-Verbose "......Not selected; no change"
            }
        }

        ### Step 6: Submit the save ###
        Write-Verbose "..Submit the save"
        (Find-SeElement -Driver $Global:Driver -XPath '/html/body/div/div[2]/div/div/form/button').Click()
        
        Write-Verbose "..Checking for update"
        if ((Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[1]").Text -eq "Address $Username@$EmailDomain added to account") {
            Write-Verbose "Success....Update found"
            Write-Output "Added external address $Username@$EmailDomain"
            return $true
        }
        Write-Verbose "Failed....Update not found"
        return $false
    }
}
