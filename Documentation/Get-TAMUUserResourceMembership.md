# Get-TAMUUserResourceMembership

## SYNOPSIS

Returns all shared mailboxes for a user from Exchange Admin Center.

## SYNTAX

```
Get-TAMUUserResourceMembership [-NetID] <String[]> [-AsText] [<CommonParameters>]
```

## DESCRIPTION

The Get-TAMUUserResourceMembership function returns all shared mailboxes for a user in Exchange Admin Center.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TAMUUserResourceMembership -NetID "jdoe"
```

This will return all TAMU Exchange resources that user 'jdoe' is a member of.

### Example 2
```powershell
PS C:\> "jdoe" | Get-TAMUUserResourceMembership
```

This will also return all TAMU Exchange resources that user 'jdoe' is a member of.

## PARAMETERS

### NetID <String[]>

    TAMU NetID

    Required?                    true
    Position?                    1
    Default value
    Accept pipeline input?       true (ByValue)
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

One or more valid TAMU NetID(s)

## OUTPUTS

TAMU Resource Membership

## NOTES

## RELATED LINKS
