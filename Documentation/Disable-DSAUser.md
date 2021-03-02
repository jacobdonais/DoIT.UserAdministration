# Disable-DSAUser

## SYNOPSIS

Disables a DSA User Account

## SYNTAX

```
Disable-DSAUser [-UserName] <String> [<CommonParameters>]
```

## DESCRIPTION

The Disable-ADUser function will perform the following:

1. Get AD Account information
2. Set AD description to mark ManualDisable
3. Disable AD account
4. Exchange Management
   1. Find the User in Exchange
   2. Collect Exchange Information
   3. Remove Distribution Groups
   4. Remove Shared Resources
   5. Remove Contact For
   6. Remove Mailbox Claim 5. Output Disable User message

## EXAMPLES

### Example 1

```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### UserName <String>

    DSA Username

    Required?                    true
    Position?                    1
    Default value
    Accept pipeline input?       false
    Accept wildcard characters?  false

### CommonParameters

    This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

    A valid AD UserName

## OUTPUTS

    None

## NOTES

## RELATED LINKS
