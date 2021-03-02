<#
.SYNOPSIS
    Returns all users of one or more distribution groups from Exchange Admin Center.

.DESCRIPTION
    The Get-TAMUDistributionMember function returns all users of one or more distribution groups from Exchange Admin Center.

.PARAMETER Distribution
    TAMU Distribution

.INPUTS
    One or more valid TAMU Distribution

.OUTPUTS
    Distribution Members

#>

function Get-TAMUDistributionMember {
    Param (
        [Parameter(
            Mandatory,
            ValueFromPipeline,
            Position = 0
        )]
        [ValidateScript( {
                Get-DistributionGroup $_
            })]
        [String[]]$Distribution
    )

    Begin {
        Enter-TAMUExchange
    }

    Process {
        $Distribution | ForEach-Object {
            $DistName = $_

            $Members = Get-DistributionGroupMember -identity $DistName | Select-Object Name, DisplayName

            $Members | ForEach-Object {
                try {
                    $Email = (Get-ADUser -Identity ($_.Name) -Server ads.tamu.edu -Credential $AuthCreds -Properties EmailAddress -ErrorAction Stop).EmailAddress
                }
                catch {
                    $Email = $null
                }

                [PSCustomObject]@{
                    NetID        = $_.Name
                    DisplayName  = $_.DisplayName
                    EmailAddress = $Email
                    Distribution = $DistName
                }
            }
        }
    }
}
