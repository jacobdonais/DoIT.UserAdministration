# Set-AutoMappingTrue

## SYNOPSIS

Sets Automapping to true for shared resources.

## SYNTAX

```
Set-AutoMappingTrue [-NetID] <String[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION

The Set-AutoMappingTrue function will perform the following:

1. Get all mailboxes in EAC for a user
2. Remove all mailbox permissions for all shared mailboxes
3. Add all mailboxes back with full permissions and set the automap flag to true

## EXAMPLES

### Example 1

```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### NetID <String[]>

    TAMU NetID

    Required?                    true
    Position?                    1
    Default value
    Accept pipeline input?       true (ByValue)
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

NetID

## OUTPUTS

None

## NOTES

## RELATED LINKS
