# Set-TAMUMailboxQuota

## SYNOPSIS

Sets the mailbox quota in Exchange Management.

## SYNTAX

```
Set-TAMUMailboxQuota [-UIN] <String> [-Quota] <String> [<CommonParameters>]
```

## DESCRIPTION

The Set-TAMUMailboxQuota function sets the mailbox quota for a user in Exchange Management.

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

### Quota <String>

    The mailbox quota size: (10 GB, 25 GB, 50 GB, 100 GB)

    Required?                    true
    Position?                    2
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

UIN, Quota (10 GB, 25 GB, 50 GB, 100 GB)

## OUTPUTS

Boolean

## NOTES

## RELATED LINKS
