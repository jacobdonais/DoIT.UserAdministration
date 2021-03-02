# Remove-TAMUDistributionGroups

## SYNOPSIS

Removes a user from one or more distribution lists in Exchange Management.

## SYNTAX

```
Remove-TAMUDistributionGroups [-UIN] <String> [-Department] <String> [-DistributionLists] <String[]> [<CommonParameters>]
```

## DESCRIPTION

The Remove-TAMUDistributionGroups function removes a user from one or more distribution lists in Exchange Management.

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

    DSA Department

    Required?                    true
    Position?                    2
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### DistributionLists <String[]>

    DSA Distribution list. Either in "DSA - DL " format or as an email

    Required?                    true
    Position?                    3
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

UIN, DistributionList (DSA - DL \* -or- resource@department.tamu.edu)

## OUTPUTS

Boolean

## NOTES

## RELATED LINKS
