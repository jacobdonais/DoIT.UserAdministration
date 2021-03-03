# Get-TAMUResourceMember

## SYNOPSIS

Returns all users of a shared resource from Exchange Admin Center.

## SYNTAX

```
Get-TAMUResourceMember [-Resource] <String[]> [-AsText] [<CommonParameters>]
```

## DESCRIPTION

The Get-TAMUResourceMember function returns all users of a shared resource in Exchange Admin Center.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TAMUResourceMember -Resource "fake-mb-1"
```

This returns the membership of a single mailbox.

### Example 2
```powershell
PS C:\> Get-TAMUResourceMember -Resource "fake-mb-1","fake-mb-2"
```

This returns the membership of multiple mailboxes.

## PARAMETERS

### Resource <String[]>

    A TAMU resource

    Required?                    true
    Position?                    1
    Default value
    Accept pipeline input?       true (ByValue, ByPropertyName)
    Accept wildcard characters?  false

### AsText [<SwitchParameter>]

    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

A valid TAMU resource

## OUTPUTS

Resource Members

## NOTES

## RELATED LINKS
