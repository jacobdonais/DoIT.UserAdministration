<#
.SYNOPSIS
    

.DESCRIPTION
    The Set-AutoMappingTrue function will perform the following:
    1. Get all mailboxes in EAC for a user
    2. Remove all mailbox permissions for all shared mailboxes
    3. Add all mailboxes back with full permissions and set the automap flag to true

.INPUTS
    NetID

.OUTPUTS
    None

#>

function Set-AutoMappingTrue {
    [CmdletBinding(
        SupportsShouldProcess = $true)]
    Param (
        [parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true)]
        [ValidateNotNullOrEmpty()]
        [ValidateScript( {
                Get-Recipient -Identity $_ })]
        [String[]]$NetID
    )

    Begin {
        Enter-TAMUExchange
    }

    process {
        foreach ($N in $NetID) {
            $MailboxArray = @()

            Get-Mailbox -OrganizationalUnit "OU=Division of Student Affairs,OU=Units,OU=TAMU,OU=TAMUSystems,DC=ads,DC=tamu,DC=edu" |
            Get-MailboxPermission -User "Auth\$N" |
            Select-Object -ExpandProperty Identity |
            ForEach-Object {
                $MailboxArray += ($_.split("/")[-1])
            }

            foreach ($M in $MailboxArray) {
                if ($PSCmdlet.ShouldProcess("Removing $N from $M")) {
                    Remove-MailboxPermission -identity $M -user "Auth\$N" -accessrights FullAccess -Confirm:$false | Out-Null
                    Write-Output "Removed $N from $M"
                }
            }

            foreach ($M in $MailboxArray) {
                if ($PSCmdlet.ShouldProcess("Re-adding $N to $M with AutoMapping on")) {
                    Add-MailboxPermission -identity $M -user "Auth\$N" -accessrights FullAccess -AutoMapping:$True | Out-Null
                    Write-Output "Re-added $N to $M with auto-mapping on"
                }
            }
        }
    }
}
