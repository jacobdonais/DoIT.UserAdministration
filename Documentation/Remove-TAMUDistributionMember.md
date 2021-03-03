# Remove-TAMUDistributionMember

## SYNOPSIS

Removes a user from a distribution group in Exchange Admin Center.

## SYNTAX

```
Remove-TAMUDistributionMember [-NetID] <String[]> [-Distribution] <String[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION

The Remove-TAMUDistributionMember function removes a user from a distribution group in Exchange Admin Center.

## EXAMPLES

### Example 1
```powershell
PS C:\> Remove-TAMUDistributionMember -NetID "jondoe" -Distribution "fake-dl-1"
```

This removes a single user from a single DL.

### Example 2
```powershell
PS C:\> Remove-TAMUDistributionMember -NetID "jondoe" -Distribution "fake-dl-1","fake-dl-2"
```

This removes a single user from multiple DL's.

### Example 3
```powershell
PS C:\> Remove-TAMUDistributionMember -NetID "jondoe","janedoe" -Distribution "fake-dl-1"
```

This removes multiple users from a single DL.

### Example 4
```powershell
PS C:\> Remove-TAMUDistributionMember -NetID "jondoe","janedoe" -Distribution "fake-dl-1","fake-dl-2"
```

This removes multiple users from multiple DL's.

## PARAMETERS

### NetID <String[]>

    TAMU NetID

    Required?                    true
    Position?                    1
    Default value
    Accept pipeline input?       true (ByValue, ByPropertyName)
    Accept wildcard characters?  false

### Distribution <String[]>

    TAMU Distribution

    Required?                    true
    Position?                    2
    Default value
    Accept pipeline input?       true (ByPropertyName)
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

NetID, DistributionList

## OUTPUTS

None

## NOTES

## RELATED LINKS
