﻿<#
.SYNOPSIS
    Adds a user to one or more distribution groups in Exchange Admin Center.

.DESCRIPTION
    The Add-TAMUDistributionMember function adds a user to one or more distribution groups in in Exchange Admin Center.

.EXAMPLE
    PS> Add-TAMUDistributionMember -NetID "jondoe" -Distribution "fake-dl-1"
    This adds a single user to a single DL.

.EXAMPLE
    PS> Add-TAMUDistributionMember -NetID "jondoe","janedoe" -Distribution "fake-dl-1"
    This adds multiple users to a single DL.

.EXAMPLE
    PS> Add-TAMUDistributionMember -NetID "jondoe" -Distribution "fake-dl-1","fake-dl-2"
    This adds one user to multiple DL's.

.EXAMPLE
    PS> Add-TAMUDistributionMember -NetID "jondoe","janedoe" -Distribution "fake-dl-1","fake-dl-2"
    This adds multiple users to multiple DL's.

.PARAMETER NetID
    TAMU NetID

.PARAMETER Distribution
    DSA Distribution List

.INPUTS
    Valid NetID(s) and valid Distribution(s)

.OUTPUTS
    None

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