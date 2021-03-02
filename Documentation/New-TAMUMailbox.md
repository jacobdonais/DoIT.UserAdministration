# New-TAMUMailbox

## SYNOPSIS

Claims a mailbox and adds external addresses.

## SYNTAX

```
New-TAMUMailbox [-UIN] <String> [-UserName] <String> [[-EmailDomain] <String>] [-Department] <String> [<CommonParameters>]
```

## DESCRIPTION

The New-TAMUMailbox function will claim a mailbox and add default and optional external addresses.

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

### UserName <String>

    Required?                    true
    Position?                    2
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### EmailDomain <String>

    Required?                    false
    Position?                    3
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### Department <String>

    Required?                    true
    Position?                    4
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

UIN, UserName, EmailDomain, Department

## OUTPUTS

None

## NOTES

## RELATED LINKS
