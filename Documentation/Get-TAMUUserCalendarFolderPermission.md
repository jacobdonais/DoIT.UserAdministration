# Get-TAMUUserCalendarFolderPermission

## SYNOPSIS

Returns all calendar folder permissions for one or more user accounts from Exchange Admin Center.

## SYNTAX

```
Get-TAMUUserCalendarFolderPermission [-NetID] <String[]> [<CommonParameters>]
```

## DESCRIPTION

The Get-TAMUUserCalendarFolderPermission function returns all calendar folder permissions for one or more user accounts from Exchange Admin Center.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TAMUUserCalendarFolderPermission -NetID "jdoe"
NetID         User           Mailbox                             AccessRights
-----         ----           -------                             ------------
jdoe          Doe, John      fake-mb-1:\Calendar                 {Editor}
jdoe          Doe, John      fake-mb-2:\Calendar                 {PublishingEditor}
jdoe          Doe, John      fake-mb-3:\Calendar                 {Owner}
```

This returns all the places where a user has been added to a mailbox calendar folder.

### Example 2
```powershell
PS C:\> "jdoe" | Get-TAMUUserCalendarFolderPermission
NetID         User           Mailbox                             AccessRights
-----         ----           -------                             ------------
jdoe          Doe, John      fake-mb-1:\Calendar                 {Editor}
jdoe          Doe, John      fake-mb-2:\Calendar                 {PublishingEditor}
jdoe          Doe, John      fake-mb-3:\Calendar                 {Owner}
```

This also returns all the places where a user has been added to a mailbox calendar folder.

## PARAMETERS

### NetID <String[]>

    TAMU NetID

    Required?                    true
    Position?                    1
    Default value
    Accept pipeline input?       true (ByValue)
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

One of more valid TAMU NetID(s)

## OUTPUTS

Calendar Folder Permission

## NOTES

## RELATED LINKS
