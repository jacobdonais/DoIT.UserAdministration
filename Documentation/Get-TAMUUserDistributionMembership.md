# Get-TAMUUserDistributionMembership

## SYNOPSIS

Returns all distribution groups a user is a member of from Exchange Admin Center.

## SYNTAX

```
Get-TAMUUserDistributionMembership [-NetID] <String[]> [-AsText] [<CommonParameters>]
```

## DESCRIPTION

The Get-TAMUUserDistributionMembership function returns all distribution groups a user is a member of in Exchange Admin Center.

## EXAMPLES

### Example 1

```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### NetID <String[]>

    TAMU NetID

    Required?                    true
    Position?                    1
    Default value
    Accept pipeline input?       true (ByValue)
    Accept wildcard characters?  false

### AsText [<SwitchParameter>]

    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

One of more valid TAMU NetID(s)

## OUTPUTS

Distribution Membership

## NOTES

## RELATED LINKS
