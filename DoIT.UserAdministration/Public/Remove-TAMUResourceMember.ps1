<#
.SYNOPSIS
    Removes a user from a shared mailbox.

.DESCRIPTION
    The Remove-TAMUResourceMember function removes a user from a shared mailbox in EAC.

.INPUTS
    NetID, Resource

.OUTPUTS
    None

#>

Function Remove-TAMUResourceMember {
    [CmdLetBinding(SupportsShouldProcess)]
    Param (
        [Parameter(
            Mandatory = $True,
            Position = 0,
            ValueFromPipeline = $True,
            ValueFromPipelineByPropertyName = $true
        )]
        [ValidateNotNullOrEmpty()]
        [ValidateScript( {
                Get-Recipient -Identity $_
            })]
        [String[]]$NetID,
        [Parameter(
            Mandatory = $True,
            Position = 1,
            ValueFromPipelineByPropertyName = $true
        )]
        [ValidateNotNullOrEmpty()]
        [ValidateScript( {
                Get-Mailbox -Identity $_
            })]
        [String[]]$Resource
    )

    Begin {
        Enter-TAMUExchange
    }

    Process {
        foreach ($N in $NetID) {
            foreach ($R in $Resource) {
                if ($PSCmdlet.ShouldProcess("Removing $N from $R")) {
                    # Remove user from FullAccess
                    Remove-MailboxPermission -Identity $R -User $N -AccessRights FullAccess -Confirm:$False

                    Write-Output "Removed $N from FullAccess on $R."

                    # Remove user from Send-As
                    $MailboxDN = Get-Mailbox -Identity $R -OrganizationalUnit "OU=Division of Student Affairs,OU=Units,OU=TAMU,OU=TAMUSystems,DC=ads,DC=tamu,DC=edu" | Select-Object -ExpandProperty Name

                    Remove-ADPermission -Identity $MailboxDN -User $N -ExtendedRights "Send As" -Confirm:$False

                    Write-Output "Removed $N from Send-As on $MailboxDN."
                }
            }
        }
    }
}
