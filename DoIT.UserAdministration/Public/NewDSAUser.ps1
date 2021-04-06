Function NewDSAUser {
    Add-Type -AssemblyName PresentationFramework

    . "$PSScriptRoot\..\Resources\NewDSAUser\NewUserDepartmentTable.ps1"

    # where is the XAML file?
    $xamlFile = "$PSScriptRoot\..\Resources\NewDSAUser\MainWindow.xaml"

    # create window
    $inputXML = Get-Content $xamlFile -Raw
    $inputXML = $inputXML -replace 'mc:Ignorable="d"', '' -replace "x:N", 'N' -replace '^<Win.*', '<Window'
    [XML]$XAML = $inputXML

    # Read XAML
    $reader = (New-Object System.Xml.XmlNodeReader $xaml)
    try {
        $window = [Windows.Markup.XamlReader]::Load( $reader )
    }
    catch {
        Write-Warning $_.Exception
        throw
    }

    $xaml.SelectNodes("//*[@Name]") | ForEach-Object {
        try {
            Set-Variable -Name "var_$($_.Name)" -Value $window.FindName($_.Name) -ErrorAction Stop
        }
        catch {
            throw
    }
    }

    ## GENERAL FUNCTIONS
    Function GetUIN {
        return ($var_UIN_TextBox.Text.Trim())
    }

    Function IsValidUIN {
        $textBox = GetUIN
        $pattern = "^[0-9]{3}00[0-9]{4}$"
        return $textBox -match $pattern
    }

    Function GetNetID {
        return ($var_NetID_TextBox.Text.Trim())
    }

    Function IsValidNetID {
        $textBox = GetNetID
        return -not[string]::IsNullOrEmpty($textBox)
    }

    Function GetFirstName {
        return ($var_FirstName_TextBox.Text.Trim())
    }

    Function IsValidFirstName {
        $textBox = GetFirstName
        $pattern = '["\/\\\[\]\:\;\|\=\,\+\\\*\?\<\>]'
        return ($textBox -notmatch $pattern) -and -not[string]::IsNullOrEmpty($textBox)
    }

    Function GetLastName {
        return ($var_LastName_TextBox.Text.Trim())
    }

    Function IsValidLastName {
        $textBox = GetLastName
        $pattern = "[\/\\\[\]\:\;\|\=\,\+\\\*\?\<\>]"
        return ($textBox -notmatch $pattern) -and (-not[string]::IsNullOrEmpty($textBox))
    }

    Function GetDepartment {
        return ($var_Department_DropBox.SelectedItem)
    }

    Function IsValidDepartment {
        $textBox = GetDepartment
        return -not[string]::IsNullOrEmpty($textBox)
    }

    Function GetFunctionalGroup {
        return ($var_FunctionalGroup_DropBox.SelectedItem)
    }

    Function IsValidFunctionalGroup {
        $textBox = GetFunctionalGroup
        return -not[string]::IsNullOrEmpty($textBox)
    }

    Function GetUsername {
        return ($var_Username_TextBox.Text.Trim())
    }

    Function IsValidUsername {
        $textBox = GetUsername
        if ([string]::IsNullOrEmpty($textBox)) {
            return $false
        }
        return ((Get-ADUser -Filter "samaccountname -eq '$textBox'").count -eq 0)
    }

    Function GetJobTitle {
        return ($var_JobTitle_TextBox.Text.Trim())
    }

    Function IsValidJobTitle {
        $textBox = GetJobTitle
        $pattern = "^[A-Za-z0-9\- ]{2,}$"
        return $textBox -match $pattern
    }

    Function GetLocation {
        return ($var_Office_TextBox.Text.Trim())
    }

    Function IsValidLocation {
        $textBox = GetLocation
        $pattern = "^[A-Za-z0-9\- ]{2,}$"
        return $textBox -match $pattern
    }

    Function GetPhoneNumber {
        return ($var_Phone_TextBox.Text.Trim())
    }

    Function IsValidPhoneNumber {
        $textBox = GetPhoneNumber
        $pattern = "^[0-9]{3}-[0-9]{3}-[0-9]{4}$"
        return $textBox -match $pattern
    }

    Function IsClaimMailbox {
        return $var_ClaimMailbox_CheckBox.IsChecked -and $var_ClaimMailbox_CheckBox.IsEnabled
    }

    Function GetEmailDomain {
        return ($var_EmailDomain_DropBox.SelectedItem)
    }

    Function IsEndDate {
        return ($var_EndDate_CheckBox.IsChecked) -and ((GetEndDate) -match "([1-9]|0[1-9]|1[012])/([1-9]|0[1-9]|[12][0-9]|3[01])/(19|20)[0-9]{2}")
    }

    Function GetEndDate {
        return ($var_EndDate_DatePicker.Text)
    }

    Function CreateUsername {
        if (GetDepartment -ne "") {
            if (GetFirstName -ne "") {
                if (GetLastName -ne "") {
                    $firstName = (GetFirstName).ToLower()
                    $lastName = (GetLastName).ToLower()
                    switch (GetDepartment) {
                        "Disability Resources" {
                            return ($firstName + $lastName[0])
                        }
                        "Counseling & Psychological Services" {
                            return ($firstName[0] + $lastName)
                        }
                        "Office of the VP for Student Affairs" {
                            return ($firstName + $lastName[0])
                        }
                        "University Art Collections & Exhibitions" {
                            return ($firstName[0] + $lastName)
                        }
                        "Student Life" {
                            return ($firstName + $lastName[0])
                        }
                        "University Center and Special Events" {
                            return ($firstName[0] + "-" + $lastName)
                        }
                        "Student Health Services" {
                            return ($firstName[0] + $lastName)
                        }
                        "Student Life Studies" {
                            return ($firstName[0] + $lastName)
                        }
                        "Memorial Student Center" {
                            return ($firstName[0] + $lastName)
                        }
                        "Recreational Sports" {
                            return ($firstName[0] + $lastName)
                        }
                        "Music Activities" {
                            return ($firstName[0] + $lastName)
                        }
                        "Multicultural Services" {
                            return ($firstName[0] + $lastName)
                        }
                        "Corps of Cadets" {
                            return ($firstName[0] + $lastName)
                        }
                        "Student Affairs IT" {
                            return ($firstName + $lastName[0])
                        }
                        "Residence Life" {
                            return ($firstName + "_" + $lastName)
                        }
                        "Student Activities" {
                            return ($firstName[0] + $lastName)
                        }
                        "Children's Center" {
                            return ($firstName[0] + $lastName)
                        }
                        default {
                            return ($firstName[0] + "-" + $lastName)
                        }
                    }
                }
            }
        }
        return ""
    }

    ## General Events
    # Disables/Enables the get user info button
    $var_UIN_TextBox.add_TextChanged({
        $uin = GetUIN
        if ($uin -match "^[0-9]{3}00[0-9]{4}$") {
            $var_GetUserInfo_Button.IsEnabled = $true
            $var_ClaimMailbox_CheckBox.IsEnabled = $true
        }
        else {
            $var_ClaimMailbox_CheckBox.IsEnabled = $false
            $var_GetUserInfo_Button.IsEnabled = $true
        }
        IsValidRequest
    })

    $var_NetID_TextBox.add_TextChanged({
        IsValidRequest
    })

    $var_FirstName_TextBox.add_TextChanged({
        IsValidRequest
    })

    $var_LastName_TextBox.add_TextChanged({
        IsValidRequest
    })

    # Add the departments
    $var_Department_DropBox.Items.Clear()
    $var_Department_DropBox.Text = ""
    foreach ($Department in ($UserLocation.Keys | Sort-Object)) {
        $var_Department_DropBox.Items.add($Department) | Out-Null
    }

    # Adds the functional group based on department
    $var_Department_DropBox.add_SelectionChanged({
        $var_FunctionalGroup_DropBox.Items.Clear()
        $var_FunctionalGroup_DropBox.Text = ""
        $var_FunctionalGroup_DropBox.IsEnabled = $true
        $Department = $var_Department_DropBox.SelectedItem
        foreach ($FunctionalGroup in ($UserLocation.item($Department).Keys | Sort-Object)) {
            $FunctionalGroup
            $var_FunctionalGroup_DropBox.Items.add($FunctionalGroup)
        }

        if ($var_Username_TextBox.Text -eq "") {
            $var_Username_TextBox.Text = CreateUsername
        }
        IsValidRequest
    })

    $var_FunctionalGroup_DropBox.add_SelectionChanged({
        IsValidRequest
    })

    $var_Username_TextBox.add_TextChanged({
        IsValidRequest
    })

    $var_JobTitle_TextBox.add_TextChanged({
        IsValidRequest
    })

    $var_Phone_TextBox.add_TextChanged({
        IsValidRequest
    })

    $var_Office_TextBox.add_TextChanged({
        IsValidRequest
    })

    # Adds function to get user info button
    $var_GetUserInfo_Button.add_Click({
        $uin = GetUIN
        $UserDetails = Get-TAMUUserDetails -UIN $uin
        $FullName = $UserDetails.Name
        $NameRegex = "^(?<LASTNAME>.+), (?<FIRSTNAME>.+) .+$"
        $FullName -match $NameRegex

        if ($var_FirstName_TextBox.Text -eq "") {
            $var_FirstName_TextBox.Text = $Matches["FIRSTNAME"]
        }
        if ($var_LastName_TextBox.Text -eq "") {
            $var_LastName_TextBox.Text = $Matches["LASTNAME"]
        }
        if ($var_NetID_TextBox.Text -eq "") {
            $var_NetID_TextBox.Text = $UserDetails.NetID
        }
        if ($var_JobTitle_TextBox.Text -eq "") {
            $var_JobTitle_TextBox.Text = $UserDetails.Title
        }
    })

    # Determines if username is available
    $var_Username_TextBox.add_TextChanged({
        $username = $var_Username_TextBox.Text

        if ($username -ne "") {
            if (Get-ADUser -Filter "samaccountname -eq '$username'") {
                $var_Username_TextBox.Background = "#FF0000"
            }
            else {
                $var_Username_TextBox.Background = "#FFFFFF"
            }
        }
        else {
            $var_Username_TextBox.Background = "#FFFFFF"
        }

        IsValidRequest
    })

    # Add all emails to the combo box if box is checked
    $var_ClaimMailbox_CheckBox.Add_Click({
        
        if ($var_ClaimMailbox_CheckBox.IsChecked -eq $true) {
            $var_EmailDomain_DropBox.IsEnabled = $true
            $EmailDomains = @(
                "bgcc.tamu.edu",
                "caps.tamu.edu",
                "corps.tamu.edu",
                "disability.tamu.edu",
                "dms.tamu.edu",
                "doit.tamu.edu",
                "dsa.tamu.edu",
                "ems.tamu.edu",
                "msc.tamu.edu",
                "navy.tamu.edu",
                "nrotcmail.tamu.edu",
                "rec.tamu.edu",
                "reslife.tamu.edu",
                "shs.tamu.edu",
                "sls.tamu.edu",
                "stuact.tamu.edu",
                "studentlife.tamu.edu",
                "studentmedia.tamu.edu",
                "uart.tamu.edu",
                "vpsa.tamu.edu"
            )

            foreach ($EmailDomain in ($EmailDomains | Sort-Object)) {
                $var_EmailDomain_DropBox.Items.add($EmailDomain)
            }

            $Department = GetDepartment
            Switch ($Department) {
                "Disability Resources" {
                    $var_EmailDomain_DropBox.SelectedItem ="disability.tamu.edu"
                }
                "Counseling & Psychological Services" {
                    $var_EmailDomain_DropBox.SelectedItem ="caps.tamu.edu"
                }
                "Office of the VP for Student Affairs" {
                    $var_EmailDomain_DropBox.SelectedItem ="vpsa.tamu.edu"
                }
                "University Center and Special Events" {
                    $var_EmailDomain_DropBox.SelectedItem ="dsa.tamu.edu"
                }
                "Student Life" {
                    $var_EmailDomain_DropBox.SelectedItem ="studentlife.tamu.edu"
                }
                "University Art Collections & Exhibitions" {
                    $var_EmailDomain_DropBox.SelectedItem ="uart.tamu.edu"
                }
                "Student Health Services" {
                    $var_EmailDomain_DropBox.SelectedItem ="shs.tamu.edu"
                }
                "Student Life Studies" {
                    $var_EmailDomain_DropBox.SelectedItem ="sls.tamu.edu"
                }
                "Memorial Student Center" {
                    $var_EmailDomain_DropBox.SelectedItem ="msc.tamu.edu"
                }
                "Recreational Sports" {
                    $var_EmailDomain_DropBox.SelectedItem ="rec.tamu.edu"
                }
                "Music Activities" {
                    $var_EmailDomain_DropBox.SelectedItem ="dsa.tamu.edu"
                }
                "Multicultural Services" {
                    $var_EmailDomain_DropBox.SelectedItem ="dms.tamu.edu"
                }
                "Corps of Cadets" {
                    $var_EmailDomain_DropBox.SelectedItem ="corps.tamu.edu"
                }
                "Student Affairs IT" {
                    $var_EmailDomain_DropBox.SelectedItem ="doit.tamu.edu"
                }
                "Residence Life" {
                    $var_EmailDomain_DropBox.SelectedItem ="reslife.tamu.edu"
                }
                "Student Activities" {
                    $var_EmailDomain_DropBox.SelectedItem ="stuact.tamu.edu"
                }
                "Children's Center" {
                    $var_EmailDomain_DropBox.SelectedItem ="bgcc.tamu.edu"
                }
                default {
                    $var_EmailDomain_DropBox.SelectedItem ="dsa.tamu.edu"
                }
            }
            
        }
        else {
            $var_EmailDomain_DropBox.IsEnabled = $false
            $var_EmailDomain_DropBox.Items.Clear()
            $var_EmailDomain_DropBox.Text = ""
        }
        IsValidRequest
    })

    # Enable/disble end date
    $var_EndDate_CheckBox.Add_Click({
        if ($var_EndDate_CheckBox.IsChecked -eq $true) {
            $var_EndDate_DatePicker.IsEnabled = $true
        }
        else {
            $var_EndDate_DatePicker.IsEnabled = $false
        }
        IsValidRequest
    })

    $var_EndDate_DatePicker.Add_SelectedDateChanged({
        IsValidRequest
    })

    # Check if the submit button should be enabled
    Function IsValidRequest {
        $validRequest = $true
        $validRequest = $validRequest -and (IsValidFirstName)
        $validRequest = $validRequest -and (IsValidLastName)
        $validRequest = $validRequest -and (IsValidDepartment)
        $validRequest = $validRequest -and (IsValidFunctionalGroup)
        $validRequest = $validRequest -and (IsValidUsername)
        if (GetUIN -ne "") {
            $validRequest = $validRequest -and (IsValidUIN)
        }
        if (GetNetID -ne "") {
            $validRequest = $validRequest -and (IsValidNetID)
        }
        if (GetJobTitle -ne "") {
            $validRequest = $validRequest -and (IsValidJobTitle)
        }
        if (GetLocation -ne "") {
            $validRequest = $validRequest -and (IsValidLocation)
        }
        if (GetPhoneNumber -ne "") {
            $validRequest = $validRequest -and (IsValidPhoneNumber)
        }

        $var_Submit_Button.IsEnabled = $validRequest
    }

    # Submit button action
    $var_Submit_Button.Add_Click({
        $Request = @{
            Username = (GetUsername) # Required
            FirstName = (GetFirstName) # Required
            LastName = (GetLastName) # Required
            FunctionalGroup = (GetFunctionalGroup) # Required
        }
        if (GetUIN) {
            $Request.UIN = (GetUIN)
        }
        if (GetNetID) {
            $Request.NetID = (GetNetID)
        }
        if (GetJobTitle) {
            $Request.Title = (GetJobTitle)
        }
        if (GetPhoneNumber) {
            $Request.PhoneNumber = (GetPhoneNumber)
        }
        if (GetLocation) {
            $Request.Office = (GetLocation)
        }

        $EmailDomain = if (IsClaimMailbox) {GetEmailDomain} else {""} # Optional
        if ($EmailDomain) {
            $Request.EmailDomain = $EmailDomain
        }
        
        $EndDate = if (IsEndDate) {GetEndDate} else {""} # Optional
        if ($EndDate) {
            $Request.EndDate = $EndDate
        }

        $Request = New-Object PSCustomObject -Property $Request

        [reflection.assembly]::loadwithpartialname('System.Windows.Forms')
        [reflection.assembly]::loadwithpartialname('System.Drawing')
        $notify = new-object system.windows.forms.notifyicon
        $notify.icon = [System.Drawing.SystemIcons]::Information
        $notify.visible = $true
        $notify.showballoontip(10,'PROCESSING','Processing the new user request. Please be patient...',[system.windows.forms.tooltipicon]::None)

        $ClaimMailbox = IsClaimMailbox # Optional
        if ($ClaimMailbox) {
            $Request | New-DSAUser -ClaimMailbox | Out-Host
        }
        else {
            $Request | New-DSAUser | Out-Host
        }
        
    })

    $Null = $window.ShowDialog()

}
