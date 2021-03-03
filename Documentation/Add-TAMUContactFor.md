# Add-TAMUContactFor

## SYNOPSIS

Adds a user as a contact for a department in Exchange Management.

## SYNTAX

```
Add-TAMUContactFor [-UIN] <String> [-Department] <String> [<CommonParameters>]
```

## DESCRIPTION

The Add-TAMUContactFor function will add a user as a contact for a department in Exchange Management.

## EXAMPLES

### Example 1

```powershell
PS C:\> Add-TAMUContactFor -UIN 123005678 -Department "Student Affairs IT"
```

Adds user UIN 123005678 as a contact for "Student Affairs IT"

## PARAMETERS

### UIN <String>

    A valid UIN.

    Required? true
    Position? 1
    Default value
    Accept pipeline input? true (ByPropertyName)
    Accept wildcard characters? false

### Department <String>

    A valid department.

    Required? true
    Position? 2
    Default value
    Accept pipeline input? true (ByPropertyName)
    Accept wildcard characters? false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

A valid TAMU UIN and a valid Department.

## OUTPUTS

Boolean

## NOTES

## RELATED LINKS
