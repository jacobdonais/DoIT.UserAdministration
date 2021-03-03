# Add-TAMUDistributionMember

## SYNOPSIS

Adds a user to one or more distribution groups in Exchange Admin Center.

## SYNTAX

```
Add-TAMUDistributionMember [-NetID] <String[]> [-Distribution] <String[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION

The Add-TAMUDistributionMember function adds a user to one or more distribution groups in in Exchange Admin Center.

## EXAMPLES

### Example 1
```powershell
PS C:\> Add-TAMUDistributionMember -NetID "jondoe" -Distribution "fake-dl-1"
```

This adds a single user to a single DL.

### Example 2
```powershell
PS C:\> Add-TAMUDistributionMember -NetID "jondoe","janedoe" -Distribution "fake-dl-1"
```

This adds multiple users to a single DL.

### Example 3
```powershell
PS C:\> Add-TAMUDistributionMember -NetID "jondoe" -Distribution "fake-dl-1","fake-dl-2"
```

This adds one user to multiple DL's.

### Example 4
```powershell
PS C:\> Add-TAMUDistributionMember -NetID "jondoe","janedoe" -Distribution "fake-dl-1","fake-dl-2"
```

This adds multiple users to multiple DL's.

## PARAMETERS

### NetID <String[]>

    TAMU NetID

    Required?                    true
    Position?                    1
    Default value
    Accept pipeline input?       true (ByValue, ByPropertyName)
    Accept wildcard characters?  false

### Distribution <String[]>

    DSA Distribution List

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

Valid NetID(s) and valid Distribution(s)

## OUTPUTS

None

## NOTES

## RELATED LINKS
