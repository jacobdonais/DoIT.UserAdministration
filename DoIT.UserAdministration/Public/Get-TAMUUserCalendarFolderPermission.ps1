<#
.SYNOPSIS
    Returns all calendar folder permissions for one or more user accounts from Exchange Admin Center.

.DESCRIPTION
    The Get-TAMUUserCalendarFolderPermission function returns all calendar folder permissions for one
    or more user accounts from Exchange Admin Center.

.PARAMETER NetID
    TAMU NetID

.INPUTS
    One of more valid TAMU NetID(s)

.OUTPUTS
    Calendar Folder Permission

#>

function Get-TAMUUserCalendarFolderPermission {
    Param(
        [parameter(
            Mandatory,
            ValueFromPipeline,
            Position = 0
        )]
        [ValidateNotNullOrEmpty()]
        [ValidateScript( {
                Get-Recipient -Identity $_
            })]
        [String[]]$NetID
    )

    Begin {
        Enter-TAMUExchange
        #Get list of all DSA resources
        $MailboxArray = @()

        Get-Mailbox -OrganizationalUnit "OU=Division of Student Affairs,OU=Units,OU=TAMU,OU=TAMUSystems,DC=ads,DC=tamu,DC=edu" |
        Select-Object -ExpandProperty Identity |
        ForEach-Object {
            $MailboxArray += ($_.split("/")[-1]
            ) }

        $MailboxArray = $MailboxArray | Sort-Object
    }
    Process {
        $NetID | ForEach-Object {
            $nID = $_

            $DisplayName = (Get-Mailbox $_).DisplayName

            $MailboxArray | ForEach-Object {

                try {
                    $Access = Get-MailboxFolderPermission -Identity "$_`:\Calendar" -User $DisplayName -ErrorAction Stop
                }
                catch {
                    $Access = $null
                }

                if ($null -ne $Access) {
                    [pscustomobject]@{
                        NetID        = $nID
                        User         = $Access.User.DisplayName
                        Mailbox      = ($Access.Identity).Split("/")[-1]
                        AccessRights = $Access.AccessRights
                    }
                }
            }
        }
    }
}
