<#
.SYNOPSIS
    Enters EAC.

.DESCRIPTION
    The Enter-TAMUExchange function enters EAC.

.INPUTS

.OUTPUTS

.NOTES

Author: 
Version: v1.0
Change Log:
    v1.0
        Initial build

#>

function Enter-TAMUExchange {
    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidGlobalVars", "")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSUseDeclaredVarsMoreThanAssignments", "")]
    Param (
        [Parameter(Position = 0)]
        [PSCredential]$Credential = (Get-Credential -Credential auth\)
    )

    Process {
        if ("exchange.tamu.edu" -notin (Get-PSSession).ComputerName) {
            $Session = New-PSSession -Credential ($Credential) -ConfigurationName Microsoft.Exchange -Authentication Basic -URI https://exchange.tamu.edu/powershell

            Import-PSSession -Session $Session -DisableNameChecking -AllowClobber

            Get-Module -All | Where-Object { $_.name -like "tmp_*" -and ($_.exportedcommands).keys -contains "Get-Mailbox" } | Import-Module -Scope Global -DisableNameChecking

            Set-ADServerSettings -ViewEntireForest $true

            $global:AuthCreds = $Credential
        }
    }
}
