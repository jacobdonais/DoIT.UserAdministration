<#
.SYNOPSIS
    Removes a user from a distribution group.

.DESCRIPTION
    The Remove-TAMUDistributionMember function removes a user from a distribution group.

.INPUTS
    NetID, DistributionList

.OUTPUTS
    None

#>

function Remove-TAMUDistributionMember {
    [CmdLetBinding(SupportsShouldProcess)]
    Param (
        [Parameter(
            Mandatory,
            Position = 0,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true
        )]
        [ValidateNotNullOrEmpty()]
        [ValidateScript( {
                Get-Recipient -Identity $_
            })]
        [string[]]$NetID,
        [Parameter(
            Mandatory,
            Position = 1,
            ValueFromPipelineByPropertyName = $true
        )]
        [ValidateScript( {
                Get-DistributionGroup -Identity $_
            })]
        [string[]]$Distribution
    )

    Begin {
        Enter-TAMUExchange
    }

    Process {
        $NetID | ForEach-Object {
            $User = $_

            $Distribution | ForEach-Object {
                if ($PSCmdlet.Shouldprocess("Removing $User from $_")) {
                    Remove-DistributionGroupMember -Identity $_ -Member $User -Confirm:$false

                    Write-Output "Removed $User from $_"
                }
            }
        }
    }
}
