<#
.SYNOPSIS
    Return the mailbox claim information from Exchange Management.

.DESCRIPTION
    The Get-TAMUMailboxClaims function will return the mailbox claim information from Exchange Management.

.INPUTS

.OUTPUTS

.NOTES

Author: Jacob Donais
Version: v1.0
Change Log:
    v1.0
        Initial build

#>

Function Get-TAMUMailboxClaims {
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

        ### Step 2: Get Mailbox Claim ###
        Write-Verbose "..Getting Mailbox Claim"
        $MailboxClaims = (Find-SeElement -Driver $Global:Driver -XPath '//*[@id="mailbox-claims-tbl"]/tbody').Text
        if ([string]::IsNullOrEmpty($MailboxClaims)) {
            New-Object psobject -Property ([ordered]@{
                    UIN           = $UIN
                    MailboxClaims = "There are no Mailbox Claims for this user."
                })
        }
        else {
            Write-Verbose "....Found one or more mailbox claims"
            $MailboxClaims = $MailboxClaims -split "`n"

            foreach ($MailboxClaim in $MailboxClaims) {
                $MailboxClaimRegex = '^TAMU - (?<DEPARTMENT>.*) (?<STATUS>.*) (?<SIZE>.*) GB'
                if ($MailboxClaim -match $MailboxClaimRegex) {
                    New-Object psobject -Property ([ordered]@{
                            UIN          = $UIN
                            Organization = $Matches["DEPARTMENT"]
                            Status       = $Matches["STATUS"]
                            SizeGB       = $Matches["SIZE"]
                        })
                }
            }
        }
    }
}
