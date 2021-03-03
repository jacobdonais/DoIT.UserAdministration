# Enter-TAMUExchange

## SYNOPSIS

Enters Exchange Admin Center.

## SYNTAX

```
Enter-TAMUExchange [-Force] [<CommonParameters>]
```

## DESCRIPTION

The Enter-TAMUExchange function enters Exchange Admin Center.

## EXAMPLES

### Example 1
```powershell
PS C:\> Enter-TAMUExchange
```

This will prompt you for your NetID and password, then connect you to exchange.

### Example 2
```powershell
PS C:\> Enter-TAMUExchange -Credential auth\johndoe
```

This will prompt you for your NetID password, with the username portion already filled out, then connect you to exchange.

## PARAMETERS

### Force [<SwitchParameter>]

    Forces the login

    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       false
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

None

## OUTPUTS

None

## NOTES

## RELATED LINKS
