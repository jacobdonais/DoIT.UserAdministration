<#
.SYNOPSIS
    Returns all distribution groups a user is a member of from Exchange Admin Center.

.DESCRIPTION
    The Get-TAMUUserDistributionMembership function returns all distribution groups a user is a member of
    in Exchange Admin Center.

.PARAMETER NetID
    TAMU NetID

.INPUTS
    One of more valid TAMU NetID(s)

.OUTPUTS
    Distribution Membership

#>

function Get-TAMUUserDistributionMembership {
    Param (
        [Parameter(
            Mandatory,
            Position = 0,
            ValueFromPipeline
        )]
        [ValidateNotNullOrEmpty()]
        [ValidateScript( {
                Get-Recipient -Identity $_
            })]
        [String[]]$NetID,
        [Switch]$AsText
    )

    Begin {
        Enter-TAMUExchange
    }

    Process {
        foreach ($N in $NetID) {
            # Find Distributions
            $DistArray = @()
            $FixedDistArray = @()

            Get-ADUser $N -Properties MemberOf -Credential ($AuthCreds) -Server ads-dc-t1.ads.tamu.edu |
            Select-Object -ExpandProperty MemberOf |
            ForEach-Object {
                if ($_ -like "*dg-dsa*") {
                    $DistArray += ($_.split(",")[0])
                }
            }

            foreach ($D in $DistArray) {
                $FixedDistArray += ($D -replace ("CN=", ""))
            }

            if ($AsText) {
                $N + "`n------`n" + (($FixedDistArray | Sort-Object) -join "`n") + "`n"
            }
            else {
                [pscustomobject]@{
                    NetID        = $N
                    Distribution = $FixedDistArray
                }
            }
        }
    }
}
