# Search-TAMUExchange

## SYNOPSIS
Returns a user's information from Exchange Admin Center.

## SYNTAX

```
Search-TAMUExchange [-DistributionList] [-Resource] [<CommonParameters>]
```

## DESCRIPTION
The Search-TAMUExchange function will search Exchange Admin Center and return a user's information.

## EXAMPLES

### Example 1
```powershell
PS C:\> Search-TAMUExchange -Distribution -OrganizationalUnit <Press_TAB>
```

This will show you all distribution lists for the selected department.

### Example 2
```powershell
PS C:\> Search-TAMUExchange -Resource -OrganizationalUnit <Press_TAB>
```

This will show you all mailboxes for the selected department.

### Example 3
```powershell
PS C:\> Search-TAMUExchange -Distribution -Resource -OrganizationalUnit <Press_TAB>
```

This will show you all distributions and mailboxes for the selected department.

## PARAMETERS
### DistributionList [<SwitchParameter>]
    
    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false

### Resource [<SwitchParameter>]

    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false

### CommonParameters
    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
