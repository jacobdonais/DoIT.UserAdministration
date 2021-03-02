<#
.SYNOPSIS
    Exits Exchange Admin Center.

.DESCRIPTION
    The Exit-TAMUExchange function exits Exchange Admin Center.

.INPUTS
    None

.OUTPUTS
    None

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
