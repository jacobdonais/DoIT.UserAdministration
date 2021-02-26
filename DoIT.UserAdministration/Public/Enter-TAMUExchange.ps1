<#
.SYNOPSIS
    Enters EAC.

.DESCRIPTION
    The Enter-TAMUExchange function enters EAC.

.INPUTS
    None

.OUTPUTS
    None

#>

function Enter-TAMUExchange {
    [CmdletBinding()]Param (
        [switch]$Force
    )

    Process {
        if ("exchange.tamu.edu" -notin (Get-PSSession).ComputerName -or $Force) {
            [PSCredential]$Credential = (Get-Credential -Credential auth\)

            $Session = New-PSSession -Credential ($Credential) -ConfigurationName Microsoft.Exchange -Authentication Basic -URI https://exchange.tamu.edu/powershell

            Import-PSSession -Session $Session -DisableNameChecking -AllowClobber

            Get-Module -All | Where-Object { $_.name -like "tmp_*" -and ($_.exportedcommands).keys -contains "Get-Mailbox" } | Import-Module -Scope Global -DisableNameChecking

            Set-ADServerSettings -ViewEntireForest $true

            $global:AuthCreds = $Credential
        }
    }
}
