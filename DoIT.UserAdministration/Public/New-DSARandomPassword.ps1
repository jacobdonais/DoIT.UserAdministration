<#
.SYNOPSIS
    Returns a random DSA password.

.DESCRIPTION
    The New-DSARandomPassword function returns a random password.

.INPUTS

.OUTPUTS

.NOTES

Author: 
Version: v1.0
Change Log:
    v1.0
        Initial build

#>

Function New-DSARandomPassword {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSUseShouldProcessForStateChangingFunctions", "", Justification = "Don't know why it's throwing this")]
    Param ()

    $AgWords = @(
        "12thMan"
        "Aggie"
        "BadBull"
        "Battalion"
        "Beutel"
        "BigEvent"
        "Blocker"
        "Bonfire"
        "Commons"
        "Corps"
        "ElephantWalk"
        "Evans"
        "Excellence"
        "Fightin"
        "FishCamp"
        "GigEm"
        "GoodBull"
        "Hiss"
        "Howdy"
        "Hullabaloo"
        "Hwy6"
        "Integrity"
        "Koldus"
        "KyleField"
        "Langford"
        "Leadership"
        "Loyalty"
        "Maroon"
        "Mays"
        "MSC"
        "Muster"
        "NorthSide"
        "Olsen"
        "Preeminent"
        "Quad"
        "Reed"
        "Respect"
        "Reveille"
        "Ring"
        "Rudder"
        "Sbisa"
        "SelflessService"
        "SouthSide"
        "Spirit"
        "Sully"
        "Tradition"
        "WestCampus"
        "Whoop"
        "Wildcat"
        "Yell"
    )

    $a = Get-Random -InputObject $AgWords

    do {
        $b = Get-Random -InputObject $AgWords
    } #can't be the same word
    While ($b -eq $a)

    do {
        #generate random 4 digit number
        $c = @()
        for ($i = 0; $i -lt 4; $i++) {
            $c += (0..9 | Get-Random)
        }
        $c = $c -join ""
    } #don't generate 666
    while ($c -match '6{3}')

    $TempPassword = $a + "_" + $b + "_" + $c

    return $TempPassword
}
