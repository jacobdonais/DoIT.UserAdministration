<#
.SYNOPSIS
    Returns a user's information from Exchange Admin Center.

.DESCRIPTION
    The Search-TAMUExchange function will search Exchange Admin Center and return a user's information.

.EXAMPLE
    PS> Search-TAMUExchange -Distribution -OrganizationalUnit <Press_TAB>
    This will show you all distribution lists for the selected department.

.EXAMPLE
    PS> Search-TAMUExchange -Resource -OrganizationalUnit <Press_TAB>
    This will show you all mailboxes for the selected department.

.EXAMPLE
    PS> Search-TAMUExchange -Distribution -Resource -OrganizationalUnit <Press_TAB>
    This will show you all distributions and mailboxes for the selected department.

.INPUTS

.OUTPUTS

#>

function Search-TAMUExchange {
    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidGlobalVars", "")]
    Param(
        [Parameter()]
        [Switch]$DistributionList,
        [Parameter()]
        [Switch]$Resource
    )
    DynamicParam {
        Function FixOU($OU) {
            $Dirty = $OU
            $Dirty = $Dirty -split ","
            $Dirty = $Dirty[0..($Dirty.length - 7)]
            $Dirty = $Dirty | ForEach-Object { $_ -replace ("OU=", "") }

            $ReverseDirty = @()

            for ($i = ($Dirty.length - 1); $i -ge 0; $i--) {
                $ReverseDirty += $Dirty[$i]
            }

            $Clean = $ReverseDirty -join "\"

            Return $Clean
        }

        $RuntimeParameterDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary

        $ParamName = 'OrganizationalUnit'

        $ParameterAttribute = New-Object System.Management.Automation.ParameterAttribute
        $ParameterAttribute.Position = 0
        $ParameterAttribute.Mandatory = $true
        $ParameterAttribute.ParameterSetName = '__AllParameterSets'

        $AttributeCollection = New-Object System.Collections.ObjectModel.Collection[System.Attribute]
        $AttributeCollection.Add($ParameterAttribute)

        $ParamValues = @()
        Get-ADOrganizationalUnit -Filter * -Credential $Global:AuthCreds -Server "ads.tamu.edu" -SearchBase "OU=Units,OU=Division of Student Affairs,OU=Units,OU=TAMU,OU=TAMUSystems,DC=ads,DC=tamu,DC=edu" -SearchScope OneLevel -Properties DistinguishedName |
        Select-Object -ExpandProperty DistinguishedName | ForEach-Object { $ParamValues += FixOU($_) }
        $ParamValues += "Division of Student Affairs\Units\"
        $ValidateSetAttribute = New-Object System.Management.Automation.ValidateSetAttribute($ParamValues)

        $AttributeCollection.Add($ValidateSetAttribute)

        $RuntimeParameter = New-Object System.Management.Automation.RuntimeDefinedParameter($ParamName, [String], $AttributeCollection)
        $RuntimeParameterDictionary.Add($ParamName, $RuntimeParameter)

        Return $RuntimeParameterDictionary
    }

    Begin {
        Enter-TAMUExchange
        Function ReverseOU($Path) {
            $P = $Path -split "\", -1, 'SimpleMatch'

            $PReverse = @()
            for ($i = ($P.length - 1); $i -ge 0; $i--) {
                $PReverse += $P[$i]
            }

            $PFormatted = @()
            foreach ($OU in $PReverse) {
                $PFormatted += "OU=$OU"
            }

            $PFormatted = $PFormatted -join ","
            $PFormattedFinal = "$PFormatted,OU=Units,OU=TAMU,OU=TAMUSystems,DC=ads,DC=tamu,DC=edu"

            return($PFormattedFinal)
        }

        $OU = $PSBoundParameters[$ParamName]

        if ($OU -notlike "Division of Student Affairs\Units\") {
            $OU = ReverseOU($OU)
        }
        else {
            $OU = "OU=Units,OU=Division of Student Affairs,OU=Units,OU=TAMU,OU=TAMUSystems,DC=ads,DC=tamu,DC=edu"
        }

        $Parameters = @{'OrganizationalUnit' = $OU }
    }

    Process {
        if ($DistributionList) {
            Get-DistributionGroup @Parameters |
            #where {$_.Alias -like "dsadl*"} |
            Select-Object Alias, DisplayName, PrimarySMTPAddress
        }

        if ($Resource) {
            Get-Mailbox @Parameters |
            Select-Object Alias, DisplayName, PrimarySMTPAddress
        }

        if ((-not $DistributionList) -and (-not $Resource)) {
            Get-Mailbox @Parameters | Select-Object Alias, DisplayName, PrimarySMTPAddress
            Get-DistributionGroup @Parameters |
            #where {$_.Alias -like "dsadl*"} |
            Select-Object Alias, DisplayName, PrimarySMTPAddress
        }
    }
}
