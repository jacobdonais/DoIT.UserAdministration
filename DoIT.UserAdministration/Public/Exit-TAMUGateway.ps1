<#
.SYNOPSIS
    Logs out of CAS.

.DESCRIPTION
    The Exit-TAMUGateway function logs out of CAS.

.INPUTS

.OUTPUTS

.NOTES

Author: Jacob Donais
Version: v1.0
Change Log:
    v1.0
        Initial build

#>

Function Exit-TAMUGateway {
    [CmdletBinding()]Param (
        
    )

    PROCESS {
        ### Step 0: Initial setup ###
        $ChromeDriverService = [OpenQA.Selenium.Chrome.ChromeDriverService]::CreateDefaultService()
        $ChromeDriverService.HideCommandPromptWindow = $true
        $ChromeDriverService.SuppressInitialDiagnosticInformation = $true

        ### Step 1: Check if instance has been created ###
        if ($Global:Driver.CurrentWindowHandle -ne "" -and $null -ne $Global:Driver.CurrentWindowHandle) {
            if ($Global:Driver) {
                $Global:Driver.Quit()
                Get-Process -Name "chromedriver" -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
            }

            ### Step 2: Create CAS instance ###
            $ChromeOptions = New-Object -TypeName "OpenQA.Selenium.Chrome.ChromeOptions"
            $ChromeOptions.AddArguments('headless')
            $Global:Driver = New-Object -TypeName "OpenQA.Selenium.Chrome.ChromeDriver" -ArgumentList $ChromeDriverService, $ChromeOptions
            Enter-SeUrl -Driver $Global:Driver -Url "https://cas.tamu.edu/cas/logout" -Wait

            ### Step 3: Logout
            (Find-SeElement -Driver $Global:Driver -TagName "button" | Where-Object { $_.text -eq "Log Out" }).Click()

            ### Step 4: Confirm Logout
            $LoginSuccess = Find-SeElement -Driver $Global:Driver -ClassName "alert__title" | Where-Object { $_.text -eq "You successfully logged out." }
            if (!$LoginSuccess) {
                throw "Failed to logout"
            }

            ### Step 5: Close Global Driver
            $Global:Driver.Close()
            $Global:Driver.Quit()
        }
    }
}
