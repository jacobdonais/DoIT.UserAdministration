<#
.SYNOPSIS
    Removes a user from a distribution group.

.DESCRIPTION
    The Remove-TAMUDistributionMember function removes a user from a distribution group.

.INPUTS

.OUTPUTS

.NOTES

Author: 
Version: v1.0
Change Log:
    v1.0
        Initial build

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
