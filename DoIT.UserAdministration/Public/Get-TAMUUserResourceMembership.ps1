<#
.SYNOPSIS
    Returns all shared mailboxes for a user.

.DESCRIPTION
    The Get-TAMUUserResourceMembership function returns all shared mailboxes for a user in EAC.

.INPUTS
    NetID

.OUTPUTS
    TAMU Resource Membership

#>

function Get-TAMUUserResourceMembership {
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
        #Array for storing user objects
        Enter-TAMUExchange
        $UserArray = @()
    }
    Process {
        $NetID | ForEach-Object {
            #Variables for our user object
            $nID = $_
            $UserMailboxes = @()

            #Add user object to our array
            $UserArray += [pscustomobject]@{
                NetID    = $nID
                Resource = $UserMailboxes
            }

            #Find all resources each user is in
            $UserMailboxes = Get-Mailbox -OrganizationalUnit "OU=Division of Student Affairs,OU=Units,OU=TAMU,OU=TAMUSystems,DC=ads,DC=tamu,DC=edu" |
            Get-MailboxPermission -User "AUTH\$nID" |
            Select-Object -ExpandProperty Identity |
            ForEach-Object {
                #Clean up resource names
                $_.split("/")[-1]
            }

            #Add resource names to user's list
            $UserMailboxes |
            Sort-Object |
            ForEach-Object {
                ($UserArray | Where-Object NetID -EQ $nID).Resource += $_
            }
        }
    }
    End {
        #Text mode output
        if ($AsText) {
            $UserArray | ForEach-Object {
                "------`nNetID: " + ($_.NetID) + "`n------`n" + (($_.Resource) -join "`n") + "`n"
            }
        }
        #Object output
        else {
            return $UserArray
        }
    }
}
