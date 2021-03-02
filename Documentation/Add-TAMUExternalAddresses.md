# Add-TAMUExternalAddresses

## SYNOPSIS

Will add an external email address to an account in Exchange Management.

## SYNTAX

```
Add-TAMUExternalAddresses [-UIN] <String> [-Username] <String> [[-EmailDomain] <String>] [-Default] [<CommonParameters>]
```

## DESCRIPTION

The Add-TAMUExternalAddresses function will add an external address in Exchange Management.

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

### Username <String>

    A Username

    Required?                    true
    Position?                    2
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### EmailDomain <String>

    A DSA email domain

    Required?                    false
    Position?                    3
    Default value                dsa.tamu.edu
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### Default [<SwitchParameter>]

    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

A valid TAMU UIN, a Username, and a Domain (optional)

## OUTPUTS

Boolean

## NOTES

## RELATED LINKS
