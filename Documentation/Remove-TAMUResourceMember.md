# Remove-TAMUResourceMember

## SYNOPSIS

Removes a user from a shared mailbox in Exchange Admin Center.

## SYNTAX

```
Remove-TAMUResourceMember [-NetID] <String[]> [-Resource] <String[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION

The Remove-TAMUResourceMember function removes a user from a shared mailbox in Exchange Admin Center.

## EXAMPLES

### Example 1
```powershell
PS C:\> Remove-TAMUResourceMember -NetID "jondoe" -Resource "fake-mb-1"
```

This removes a single user from a single mailbox.

### Example 2
```powershell
PS C:\> Remove-TAMUResourceMember -NetID "jondoe" -Resource "fake-mb-1","fake-mb-2"
```

This removes a single user from multiple mailboxes.

### Example 3
```powershell
PS C:\> Remove-TAMUResourceMember -NetID "jondoe","janedoe" -Resource "fake-mb-1"
```

This removes multiple users from a single mailbox.

### Example 4
```powershell
PS C:\> Remove-TAMUResourceMember -NetID "jondoe" -Resource "fake-mb-1"
```

This removes multiple users from multiple mailboxes.

## PARAMETERS

### NetID <String[]>

    TAMU NetID

    Required?                    true
    Position?                    1
    Default value
    Accept pipeline input?       true (ByValue, ByPropertyName)
    Accept wildcard characters?  false

### Resource <String[]>

    TAMU Resource

    Required?                    true
    Position?                    2
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### WhatIf [<SwitchParameter>]

    Required?                    false
    Position?                    named
    Default value
    Accept pipeline input?       false
    Accept wildcard characters?  false

### Confirm [<SwitchParameter>]

    Required?                    false
    Position?                    named
    Default value
    Accept pipeline input?       false
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

NetID, Resource

## OUTPUTS

None

## NOTES

## RELATED LINKS
