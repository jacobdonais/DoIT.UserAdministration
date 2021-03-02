<#
.SYNOPSIS
    Disables a DSA User Account

.DESCRIPTION
    The Disable-ADUser function will perform the following:
    1. Get AD Account information
    2. Set AD description to mark ManualDisable
    3. Disable AD account
    4a. Find the User in Exchange
    4b. Collect Exchange Information
    4c. Remove Distribution Groups
    4d. Remove Shared Resources
    4e. Remove Contact For
    4f. Remove Mailbox Claim
    5. Output Disable User message

.PARAMETER UserName
    DSA Username

.INPUTS
    A valid AD UserName

.OUTPUTS
    None

#>

Function Disable-DSAUser {
    [CmdletBinding()]Param (
        [Parameter (Mandatory = $true, Position = 0)]
        [ValidateNotNullOrEmpty()]
        [ValidateScript( { $null -ne (Get-ADUser -Filter "samaccountname -eq '$_'") })]
        [String]$UserName
    )

    BEGIN {
        Read-Host -Prompt "Press any key to continue or CTRL+C to quit"
        $NoteOutput = Get-Content -Path "$PSScriptRoot\..\Resources\DisableDSAUser\DisableDSAUserMSG"
        Enter-TAMUExchange
    }

    PROCESS {
        ### Step 1: Find the user in AD and collect information ###
        $ADUser = Get-ADUser -Filter "samaccountname -eq '$UserName'" -Property *

        # Get and display AD Groups
        $ADGroups = (Get-ADPrincipalGroupMembership -Identity $UserName).name

        ### Step 2: Set the AD description ###
        # Sets description to "ADManualDisable: (Get-Date -Format d)"
        $DisableDescription = "ADManualDisable: $(Get-Date -Format d) - "
        try {
            $ADUser | Set-ADUser -Description ($DisableDescription + $ADUser.Description)
        }
        catch {
            throw "Failed to set AD Description"
        }

        ### Step 3: Disable AD Account ###
        try {
            $ADUser | Disable-ADAccount -Verbose:$Verbose
        }
        catch {
            throw "Failed to disable AD account"
        }

        ### Step 4 (optional): Delete Exchange claim if any ###
        # Get TAMU User Detail from EAC Get-TAMUUserDetail
        if (-not [string]::IsNullOrEmpty($ADUser.employeeid)) {
            ### Step 4a: Find the User in Exchange ###
            $ExchangeUser = Get-TAMUUserDetail -Identity $ADUser.employeeid -Verbose:$Verbose
        }
        if (-not [string]::IsNullOrEmpty($ExchangeUser) -and (Get-Recipient -Identity $ExchangeUser.NetID -ErrorAction SilentlyContinue)) {
            ### Step 4b: Collect Exchange Information ###
            # Get Distribution Groups, Resources, Aliases, Contact for, and mailbox claim
            $Distributions = $ExchangeUser.DistributionGroupMembership | Where-Object -FilterScript { $_ -like "dg-dsa*" }
            $Resources = (Get-TAMUUserResourceMembership -NetID $ExchangeUser.NetID).resource
            $Aliases = $ExchangeUser.BoutiqueAddress
            $ContactFor = $ExchangeUser.ContactFor
            $MailClaim = $ExchangeUser.MailboxClaim

            ### Step 4c: Remove Distribution Groups ###
            if (-not [string]::IsNullOrEmpty($Distributions)) {
                try {
                    Remove-TAMUDistributionMember -NetID $ExchangeUser.NetID -Distribution $Distributions
                }
                catch {
                    throw "Failed to remove distribution member"
                }
            }

            ### Step 4d: Remove Shared Resources ###
            if (-not [string]::IsNullOrEmpty($resources)) {
                try {
                    Remove-TAMUResourceMember -NetID $ExchangeUser.NetID -Resource $Resources
                }
                catch {
                    throw "Failed to remove resource member"
                }
            }

            ### Step 4e: Remove Contact For ###
            if (-not [string]::IsNullOrEmpty($ContactFor)) {
                try {
                    Remove-TAMUMailContact -UIN $ExchangeUser.UIN -ContactFor $ContactFor -Verbose:$Verbose -ErrorAction Stop
                }
                catch {
                    throw "Failed to remove mail contact"
                }
            }

            ### Step 4f: Remove Mailbox Claim ###
            if (-not [string]::IsNullOrEmpty($MailClaim)) {
                try {
                    Remove-TAMUMailbox -UIN $ExchangeUser.UIN -Verbose:$Verbose -ErrorAction Stop
                }
                catch {
                    throw "Failed to remove mailbox"
                }
            }
        }

        ### Step 5 (final): Output Disable User Msg ###
        # Output DisableUserMSG
        $NoteOutput = $NoteOutput -replace "===USERNAME===", $UserName
        $NoteOutput = $NoteOutput -replace "===OU===", $ADUser.CanonicalName
        $NoteOutput = $NoteOutput -replace "===ADGROUPS===", $ADGroups
        $NoteOutput = $NoteOutput -replace "===EMAILADDRESS===", $ADUser.EmailAddress
        $NoteOutput = $NoteOutput -replace "===CONTACTFOR===", $ContactFor
        $NoteOutput = $NoteOutput -replace "===MAILBOXCLAIM===", $MailClaim
        $NoteOutput = $NoteOutput -replace "===DISTRIBUTIONS===", $Distributions
        $NoteOutput = $NoteOutput -replace "===RESOURCES===", $Resources
        $NoteOutput = $NoteOutput -replace "===ALIASES===", $Aliases
        $NoteOutput = $NoteOutput -replace "===NAME===", $ADUser.Name
        Write-Output $NoteOutput
    }
}
