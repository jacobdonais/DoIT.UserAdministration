# New-DSAUser

## SYNOPSIS

Creates a new DSA user account.

## SYNTAX

```
New-DSAUser -Username <String> -FirstName <String> -LastName <String> [-UIN <String>] [-NetID <String>] [-Title <String>] [-PhoneNumber <String>] [-Office <String>] -Department <String> -FunctionalGroup <String> [-EmailDomain <String>] [<CommonParameters>]

New-DSAUser -Username <String> -FirstName <String> -LastName <String> [-UIN <String>] [-NetID <String>] [-Title <String>] [-PhoneNumber <String>]  [-Office <String>] -Department <String> -FunctionalGroup <String> [-EmailDomain <String>] [-ClaimMailbox] [<CommonParameters>]
```

## DESCRIPTION

The New-DSAUser function creates a new DSA user account.

## EXAMPLES

### Example 1

```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### Username <String>

    Required?                    true
    Position?                    named
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### FirstName <String>

    Required?                    true
    Position?                    named
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### LastName <String>

    Required?                    true
    Position?                    named
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### UIN <String>

    Required?                    false
    Position?                    named
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### NetID <String>

    Required?                    false
    Position?                    named
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### Title <String>

    Required?                    false
    Position?                    named
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### PhoneNumber <String>

    Required?                    false
    Position?                    named
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### Office <String>

    Required?                    false
    Position?                    named
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### Department <String>

    Required?                    true
    Position?                    named
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### FunctionalGroup <String>

    Required?                    true
    Position?                    named
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### EmailDomain <String>

    Required?                    false
    Position?                    named
    Default value
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### ClaimMailbox [<SwitchParameter>]

    Required?                    false
    Position?                    named
    Default value                False
    Accept pipeline input?       true (ByPropertyName)
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

Username, FirstName, LastName, UIN (optional), NetID (optional), EmailDomain (optional), Department, FunctionalGroup

## OUTPUTS

None

## NOTES

## RELATED LINKS
