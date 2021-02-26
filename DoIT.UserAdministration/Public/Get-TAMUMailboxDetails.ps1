<#
.SYNOPSIS
    Returns mailbox details from Exchange Management.

.DESCRIPTION
    The Get-TAMUMailboxDetails function will return the mailbox details from Exchange Management.

.INPUTS

.OUTPUTS

.NOTES

Author: Jacob Donais
Version: v1.0
Change Log:
    v1.0
        Initial build

#>

Function Get-TAMUMailboxDetails {
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
        $ret = [ordered]@{
            UIN = $UIN
        }

        ### Step 2: Get Mailbox Details ###
        Write-Verbose "..Getting Mailbox Details"
        $MailboxDetails = (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[2]/div[1]/dl[2]").Text
        if ($MailboxDetails -eq $null) { $MailboxDetails = "User has no mailbox" }
        if ($MailboxDetails -ne "User has no mailbox") {
            Write-Verbose "....Found a mailbox"
            $ret.DiskUsage = (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[2]/div[1]/dl[2]/dd[1]")[0].Text
            $ret.FromAddress = (Find-SeElement -Driver $Global:Driver -XPath "/html/body/div/div[2]/div[2]/div[1]/dl[2]/dd[2]")[0].Text
        }
        else {
            $ret.MailboxDetails = $MailboxDetails
        }

        ### Step 3: Return object ###
        return $ret
    }
}
