# Get-TAMUDistributionMember

## SYNOPSIS

Returns all users of one or more distribution groups from Exchange Admin Center.

## SYNTAX

```
Get-TAMUDistributionMember [-Distribution] <String[]> [<CommonParameters>]
```

## DESCRIPTION

The Get-TAMUDistributionMember function returns all users of one or more distribution groups from Exchange Admin Center.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TAMUDistributionMember -Distribution "fake-dl-1"
```

This returns the membership of a single distribution.

### Example 2
```powershell
PS C:\> Get-TAMUDistributionMember -Distribution "fake-dl-1","fake-dl-2"
```

This returns the membership of multiple distributions.

## PARAMETERS

### Distribution <String[]>

    TAMU Distribution

    Required?                    true
    Position?                    1
    Default value
    Accept pipeline input?       true (ByValue)
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

Distribution

## OUTPUTS

Distribution Members

## NOTES

## RELATED LINKS
