# Add-TAMUMailboxClaim

## SYNOPSIS

Claims a mailbox for a user in Exchange Management.

## SYNTAX

```
Add-TAMUMailboxClaim [-UIN] <String> [-Department] <String> [[-Quota] <String>] [<CommonParameters>]
```

## DESCRIPTION

The Add-TAMUMailboxClaim function claims a mailbox for a user in Exchange Management.

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

### Quota <String>

    A mailbox quota

    Required?                    false
    Position?                    3
    Default value                10 GB
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

A valid TAMU UIN, a DSA Department, and a size quota (optional)

## OUTPUTS

Boolean

## NOTES

## RELATED LINKS
