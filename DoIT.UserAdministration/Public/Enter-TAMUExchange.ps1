<#
.SYNOPSIS
    Enters Exchange Admin Center.

.DESCRIPTION
    The Enter-TAMUExchange function enters Exchange Admin Center.

.EXAMPLE
    PS> Enter-TAMUExchange
    This will prompt you for your NetID and password, then connect you to exchange.

.EXAMPLE
    PS> Enter-TAMUExchange -Credential auth\johndoe
    This will prompt you for your NetID password, with the username portion already filled out, then connect you to exchange.

.PARAMETER Force
    Forces the login

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
