<#
.SYNOPSIS
    Enters CAS system.

.DESCRIPTION
    The Enter-TAMUGateway function logs in to the CAS system and will do a DUO push.

.PARAMETER Force
    Forces the login

.INPUTS
    None

.OUTPUTS
    None

#>

Function Enter-TAMUGateway {
    [CmdletBinding()]Param (
        [switch]$Force
    )

    PROCESS {
        ### Step 0: Initial setup ###
        $ChromeDriverService = [OpenQA.Selenium.Chrome.ChromeDriverService]::CreateDefaultService()
        $ChromeDriverService.HideCommandPromptWindow = $true
        $ChromeDriverService.SuppressInitialDiagnosticInformation = $true

        ### Step 1: Check if instance has been created ###
        if ([string]::IsNullOrEmpty($Global:Driver.CurrentWindowHandle) -or $null -eq $Global:Driver.CurrentWindowHandle -or $Force) {
            if ($Global:Driver) {
                $Global:Driver.Quit()
                Get-Process -Name "chromedriver" -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
            }

            ### Step 2: Create CAS instance ###
            $ChromeOptions = New-Object -TypeName "OpenQA.Selenium.Chrome.ChromeOptions"
            $ChromeOptions.AddArguments('headless')
            $Global:Driver = New-Object -TypeName "OpenQA.Selenium.Chrome.ChromeDriver" -ArgumentList $ChromeDriverService, $ChromeOptions
            Enter-SeUrl -Driver $Global:Driver -Url "https://cas.tamu.edu/cas/login" -Wait

            ### Step 3: Enter NetID Credentials ###
            $Tries = 0
            do {
                $Tries++
                ### Step 3a: Get NetID Credentials from user ###
                $Cred = Get-Credential -UserName "NetID" -Message "Connecting to gateway\exchange..."

                ### Step 3b: Enter NetID Credentials ###
                Write-Verbose "Entering username..."
                $Element = Find-SeElement -Driver $Global:Driver -Name "username" -Wait
                $Element.SendKeys($Cred.UserName)

                Write-Verbose "Entering password..."
                $Element = Find-SeElement -Driver $Global:Driver -Name "password" -Wait
                $Element.SendKeys($cred.GetNetworkCredential().Password)
                (Find-SeElement -Driver $Global:Driver -TagName "button" | Where-Object { $_.text -eq "Next" }).Click()

                ### Step 3c: check if login failed ###
                $LoginFailed = Find-SeElement -Driver $Global:Driver -ClassName "alert__title" | Where-Object text -eq "Invalid NetID or Password."

                if ($Tries -gt 3) {
                    Throw "Too many login attempts"
                }
            } while ($LoginFailed)

            ### Step 4: Send DUO push ###
            $Tries = 0
            do {
                Start-Sleep -Seconds 1
                $DUO_iframe = $Global:Driver.FindElementById("duo_iframe")
                $tries++

                if ($Tries -gt 5) {
                    Throw "DUO took too long"
                }
            } until ($DUO_iframe)

            Write-Verbose "Sending DUO push..."
            Write-Output "Check phone for DUO push"
            $Global:Driver.SwitchTo().frame($DUO_iframe) | Out-Null
            (Find-SeElement -Driver $Global:Driver -TagName "button" | Where-Object { $_.text -eq "Send Me a Push" }).Click()

            ### Step 5: Handle DUO Timeout ###
            $Wait = 0
            do {
                $LoginSuccess = Find-SeElement -Driver $Global:Driver -ClassName "alert__title" | Where-Object { $_.text -eq "You successfully logged in!" }
                Start-Sleep -Seconds 1
                $Wait++

                if ($Wait -ge 60) {
                    Throw "DUO took too long"
                }
            } until ($Driver.Url -notlike "https://cas.tamu.edu/cas/login*" -or $null -ne $LoginSuccess)

            ### Step 6: Cleanup ###
            $Global:Driver.SwitchTo().ParentFrame() | Out-Null
            Remove-Variable Cred
        }
    }
}
