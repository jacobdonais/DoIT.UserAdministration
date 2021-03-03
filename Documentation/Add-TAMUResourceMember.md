# Add-TAMUResourceMember

## SYNOPSIS

Adds a user to one or more shared resources in Exchange Admin Center.

## SYNTAX

```
Add-TAMUResourceMember [-NetID] <String[]> [-Resource] <String[]> [-AutoMapping <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION

The Add-TAMUResourceMember function adds a user to one or more shared resources in Exchange Admin Center.

## EXAMPLES

### Example 1
```powershell
PS C:\> Add-TAMUResourceMember -NetID "jondoe" -Resource "fake-mb-1"
```

This adds a single user to a single mailbox.

### Example 2
```powershell
PS C:\> Add-TAMUResourceMember -NetID "jondoe","janedoe" -Resource "fake-mb-1"
```

This adds multiple users to a single mailbox.

### Example 3
```powershell
PS C:\> Add-TAMUResourceMember -NetID "jondoe" -Resource "fake-mb-1","fake-mb-2"
```

This adds a single user to multiple mailboxes.

### Example 4
```powershell
PS C:\> Add-TAMUResourceMember -NetID "jondoe","janedoe" -Resource "fake-mb-1","fake-mb-2"
```

This adds multiple users to multiple mailboxes.

### Example 5
```powershell
PS C:\> Add-TAMUResourceMember -NetID "jondoe" -Resource "fake-mb-1" -AutoMapping:$false
```

This adds a single user to a single mailbox and turns off automapping.

## PARAMETERS

### NetID <String[]>

    A TAMU NetID

    Required?                    true
    Position?                    1
    Default value
    Accept pipeline input?       true (ByValue, ByPropertyName)
    Accept wildcard characters?  false

### Resource <String[]>

    A DSA Resource

    Required?                    true
    Position?                    2
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### AutoMapping <Boolean>

    Automapping mailbox in Outlook

    Required?                    false
    Position?                    named
    Default value                True
    Accept pipeline input?       false
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

Valid TAMU NetID(s), Resource(s), automapping (optional)

## OUTPUTS

None

## NOTES

## RELATED LINKS
