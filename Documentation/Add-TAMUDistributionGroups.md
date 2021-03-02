# Add-TAMUDistributionGroups

## SYNOPSIS

Adds a user to one or more distribution lists in Exchange Management.

## SYNTAX

```
Add-TAMUDistributionGroups [-UIN] <String> [-Department] <String> [-DistributionLists] <String[]> [<CommonParameters>]
```

## DESCRIPTION

The Add-TAMUDistributionGroups function adds a user to one or more distribution lists in Exchange Management.

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

    A DSA department

    Required?                    true
    Position?                    2
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### DistributionLists <String[]>

    A Distribution List for the department

    Required?                    true
    Position?                    3
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

A valid TAMU UIN, valid Department, and a valid DistributionGroups

## OUTPUTS

Boolean

## NOTES

## RELATED LINKS
