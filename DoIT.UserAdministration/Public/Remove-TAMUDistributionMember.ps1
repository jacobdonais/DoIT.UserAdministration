<#
.SYNOPSIS
    Removes a user from a distribution group in Exchange Admin Center.

.DESCRIPTION
    The Remove-TAMUDistributionMember function removes a user from a distribution group in Exchange Admin Center.

.EXAMPLE
    PS > Remove-TAMUDistributionMember -NetID "jondoe" -Distribution "fake-dl-1"
    This removes a single user from a single DL.

.EXAMPLE
    PS> Remove-TAMUDistributionMember -NetID "jondoe" -Distribution "fake-dl-1","fake-dl-2"
    This removes a single user from multiple DL's.

.EXAMPLE
    PS> Remove-TAMUDistributionMember -NetID "jondoe","janedoe" -Distribution "fake-dl-1"
    This removes multiple users from a single DL.

.EXAMPLE
    PS> Remove-TAMUDistributionMember -NetID "jondoe","janedoe" -Distribution "fake-dl-1","fake-dl-2"
    This removes multiple users from multiple DL's.

.PARAMETER NetID
    TAMU NetID

.PARAMETER Distribution
    TAMU Distribution

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
