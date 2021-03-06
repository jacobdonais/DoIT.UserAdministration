# Get-TAMUUserDetails

## SYNOPSIS

Returns user detail information from Exchange Management.

## SYNTAX

```
Get-TAMUUserDetails [-UIN] <String> [<CommonParameters>]
```

## DESCRIPTION

The Get-TAMUUserDetails function will return the user detail information from Exchange Management.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-TAMUUserDetail -Identity 123004567
```

Gets user data for user 123004567.

### Example 2
```powershell
PS C:\> Get-TAMUUserDetail -Identity 123004567,NetID1,NetID2
```

Gets user data for users 123004567, NetID1, and NetID2.

## PARAMETERS

### UIN <String>

    A TAMU UIN

    Required?                    true
    Position?                    1
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

A valid TAMU UIN

## OUTPUTS

Name, NetID, UIN, Department

## NOTES

## RELATED LINKS
