<#
.SYNOPSIS
    Exits EAC.

.DESCRIPTION
    The Exit-TAMUExchange function exits EAC.

.INPUTS

.OUTPUTS

.NOTES

Author: 
Version: v1.0
Change Log:
    v1.0
        Initial build

#>

function Exit-TAMUExchange {

    Process {
        if ("exchange.tamu.edu" -notin (Get-PSSession).ComputerName) {
            Get-PSSession |
            Where-Object { $_.ComputerName -like "exchange.tamu.edu" } |
            Remove-PSSession

            if ($AuthCreds) {
                Remove-Variable AuthCreds -Scope Global
            }
        }
    }
}
