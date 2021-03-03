<#
.SYNOPSIS
    Adds a user to one or more shared resources in Exchange Admin Center.

.DESCRIPTION
    The Add-TAMUResourceMember function adds a user to one or more shared resources in Exchange Admin Center.

.EXAMPLE
    PS> Add-TAMUResourceMember -NetID "jondoe" -Resource "fake-mb-1"
    This adds a single user to a single mailbox.

.EXAMPLE
    PS> Add-TAMUResourceMember -NetID "jondoe","janedoe" -Resource "fake-mb-1"
    This adds multiple users to a single mailbox.

.EXAMPLE
    PS> Add-TAMUResourceMember -NetID "jondoe" -Resource "fake-mb-1","fake-mb-2"
    This adds a single user to multiple mailboxes.

.EXAMPLE
    PS> Add-TAMUResourceMember -NetID "jondoe","janedoe" -Resource "fake-mb-1","fake-mb-2"
    This adds multiple users to multiple mailboxes.

.EXAMPLE
    PS> Add-TAMUResourceMember -NetID "jondoe" -Resource "fake-mb-1" -AutoMapping:$false
    This adds a single user to a single mailbox and turns off automapping.

.PARAMETER NetID
    A TAMU NetID

.PARAMETER Resource
    A DSA Resource

.PARAMETER AutoMapping
    Automapping mailbox in Outlook

.INPUTS
    Valid TAMU NetID(s), Resource(s), automapping (optional)

.OUTPUTS
    None

#>

Function Add-TAMUResourceMember {
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
                Get-Mailbox -Identity $_
            })]
        [String[]]$Resource,
        [bool]$AutoMapping = $True
    )

    Begin {
        Enter-TAMUExchange
    }

    Process {
        foreach ($n in $NetID) {
            foreach ($r in $Resource) {
                if ($PSCmdlet.ShouldProcess("Adding user $n to FullAccess on $r")) {
                    # Add to mailbox with FullAccess
                    $var = Add-MailboxPermission -identity $r -user $n -accessrights FullAccess -AutoMapping:$AutoMapping

                    # Check if FullAccess was successful
                    if ($var.User -eq "AUTH\$n" -and $var.AccessRights -eq "FullAccess") {
                        Write-Output "Successfully added $n to FullAccess on $r."
                    }
                    else {
                        Write-Output "Couldn't add $n to FullAccess on $r."
                    }
                }

                if ($PSCmdlet.ShouldProcess("Adding user $n to SendAs on $r")) {
                    # Give user Send-As to mailbox
                    $MailboxDN = Get-Mailbox -identity $r -OrganizationalUnit "OU=Division of Student Affairs,OU=Units,OU=TAMU,OU=TAMUSystems,DC=ads,DC=tamu,DC=edu" | Select-Object -expandproperty Name

                    $var = Add-ADPermission -Identity $MailboxDN -User $n -ExtendedRights "Send-As"

                    # Check if Send-As was successful
                    if ($var.User -eq "AUTH\$n") {
                        Write-Output "Successfully added $n to Send-As on $MailboxDN."
                    }
                    else {
                        Write-Output "Couldn't add $n to Send-As on $MailboxDN."
                    }
                }
            }
        }
    }
}
