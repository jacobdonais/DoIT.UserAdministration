# Remove-TAMUMailboxClaim

## SYNOPSIS

Removes a mailbox claim for a user in Exchange Management.

## SYNTAX

```
Remove-TAMUMailboxClaim [-UIN] <String> [-Department] <String> [<CommonParameters>]
```

## DESCRIPTION

The Remove-TAMUMailboxClaim function will remove the mailbox claim for a user in Exchange Management.

## EXAMPLES

### Example 1

```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### UIN <String>

    A TAMU UIN

    Required?                    true
    Position?                    1
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### Department <String>

    A DSA Department

    Required?                    true
    Position?                    2
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

UIN, Department

## OUTPUTS

Boolean

## NOTES

## RELATED LINKS
