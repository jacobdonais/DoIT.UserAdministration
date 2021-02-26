<#
.SYNOPSIS
    Adds a user to a distribution group

.DESCRIPTION
    The Add-TAMUDistributionMember function adds a user to a distribution group.

.INPUTS

.OUTPUTS

.NOTES

Author:
Version: v1.0
Change Log:
    v1.0
        Initial build

#>

function Add-TAMUDistributionMember {
    [CmdletBinding(SupportsShouldProcess)]
    Param (
        [Parameter(
            Mandatory = $True,
            Position = 0,
            ValueFromPipeline = $True,
            ValueFromPipelineByPropertyName = $True
        )]
        [ValidateNotNullOrEmpty()]
        [ValidateScript( {
                Get-Recipient -Identity $_
            })]
        [String[]]$NetID,
        [Parameter(
            Mandatory = $True,
            Position = 1,
            ValueFromPipelineByPropertyName = $True
        )]
        [ValidateNotNullOrEmpty()]
        [ValidateScript( {
                Get-DistributionGroup -Identity $_
            })]
        [String[]]$Distribution
    )

    Begin {
        Enter-TAMUExchange
    }

    Process {
        foreach ($n in $NetID) {
            foreach ($d in $Distribution) {
                if ($PSCmdlet.ShouldProcess("Adding user $n to $d")) {
                    # Add user to DG
                    Add-DistributionGroupMember -Identity $d -Member $n

                    Write-Output "Added $n to $d."
                }
            }
        }
    }
}