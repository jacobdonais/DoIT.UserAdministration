<#
.SYNOPSIS
    Creates a new DSA user account.

.DESCRIPTION
    The New-DSAUser function creates a new DSA user account.

.INPUTS

.OUTPUTS

.NOTES

Author: Jacob Donais
Version: v1.0
Change Log:
    v1.0
        Initial build

#>

Function New-DSAUser {
    [CmdletBinding(
        DefaultParameterSetName = "NoClaimMailbox")]
    Param(
        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $true)]
        [ValidateLength(1, 64)]
        [ValidateScript( {
                if ($null -ne (Get-ADUser -Filter "samaccountname -eq '$_'")) {
                    throw "Username is taken"
                }
                else { $true }
            })]
        [ValidateScript( {
                if ($_ -match '["\/\\\[\]\:\;\|\=\,\+\\\*\?\<\>]') {
                    throw "Username contains invalid characters"
                }
                else { $true }
            })]
        [ValidateNotNullOrEmpty()]
        [string]$Username,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $true)]
        [ValidateScript( {
                if ($_ -match '["\/\\\[\]\:\;\|\=\,\+\\\*\?\<\>]') {
                    throw "Username contains invalid characters"
                }
                else { $true }
            })]
        [ValidateNotNullOrEmpty()]
        [string]$FirstName,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $true)]
        [ValidateScript( {
                if ($_ -match '["\/\\\[\]\:\;\|\=\,\+\\\*\?\<\>]') {
                    throw "Username contains invalid characters"
                }
                else { $true }
            })]
        [ValidateNotNullOrEmpty()]
        [string]$LastName,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $false)]
        [ValidateScript( {
                if ($_ -notmatch "^[0-9]{3}00[0-9]{4}$") {
                    throw "Only valid UINs are allowed"
                }
                else { $true }
            })]
        [ValidateNotNullOrEmpty()]
        [string]$UIN,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string]$NetID,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $false)]
        [ValidateScript( {
                if ($_ -notmatch "^[A-Za-z0-9\- ]{2,}$") {
                    throw "Only letters, numbers, dash, and space are allowed in title field."
                }
                else { $true }
            })]
        [ValidateNotNullOrEmpty()]
        [string]$Title,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $false)]
        [ValidateScript( {
                if ($_ -notmatch "^[0-9]{3}-[0-9]{3}-[0-9]{4}$") {
                    throw "Only numbers and dashes allowed for PhoneNumber"
                }
                else { $true }
            })]
        [ValidateNotNullOrEmpty()]
        [string]$PhoneNumber,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [ValidateScript( {
                if ($_ -notmatch "^[A-Za-z0-9\.\- ]{3,}$") {
                    throw "Only letters, numbers, period, dash, and space are allowed for office."
                }
                else { $true }
            })]
        [string]$Office,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $true)]
        [ValidateSet(
            "Disability Resources",
            "Counseling & Psychological Services",
            "DSA Student Organizations",
            "Office of the VP for Student Affairs",
            "University Art Collections & Exhibitions",
            "Student Life",
            "University Center and Special Events",
            "Student Health Services",
            "Student Life Studies",
            "Memorial Student Center",
            "Recreational Sports",
            "Music Activities",
            "Multicultural Services",
            "Student Affairs Development Office",
            "Corps of Cadets",
            "Student Affairs IT",
            "Residence Life",
            "Student Activities",
            "Children's Center"
        )]
        [ValidateNotNullOrEmpty()]
        [string]$Department,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $true)]
        [ValidateSet(
            "BGCC - Staff",
            "BGCC - Student Worker",
            "BGCC - Teacher",

            "OOC - Academics Staff",
            "OOC - Academics Student Worker",
            "OOC - Corps Center Staff",
            "OOC - Corps Center Student Worker",
            "OOC - Development Default",
            "OOC - Discipline Default",
            "OOC - Leadership Default",
            "OOC - NoGroupUsers Default",
            "OOC - Ops & Training Staff",
            "OOC - Ops & Training Student Worker",
            "OOC - Recruiting Staff",
            "OOC - Recruiting Student Worker",
            "OOC - Scholarships Default",
            "OOC - Trigon Staff",
            "OOC - Trigon Student Worker",
            "OOC - UDC Staff",
            "OOC - UDC Student Worker",
            "AFROTC - Default",
            "ARROTC - Default",
            "NROTC - Default",

            "CAPS - Staff",
            "CAPS - Student Worker",

            "DOIT - Administration Staff",
            "DOIT - Administration Student Worker",
            "DOIT - Applications Staff",
            "DOIT - Applications Student Worker",
            "DOIT - Applications Graduate Assistant",
            "DOIT - Business Relationship Management Default",
            "DOIT - Database Group Default",
            "DOIT - Project Management Default",
            "DOIT - Risk Management",
            "DOIT - Service Desk Staff",
            "DOIT - Service Desk Student Technician",
            "DOIT - Systems Default",

            "DR - Staff",
            "DR - Student Worker",

            "MARCOMM - Staff",
            "MARCOMM - Student Worker",

            "MSC - Administrative Services Staff",
            "MSC - Administrative Services Student Worker",
            "MSC - Box Office Staff",
            "MSC - Box Office Student Worker",
            "MSC - Committees Staff Default",
            "MSC - Directors Office Staff",
            "MSC - Directors Office Student Worker",
            "MSC - Directors Office Graduate Assistant",
            "MSC - Marketing Staff",
            "MSC - Marketing Student Worker",
            "MSC - OPAS Staff",
            "MSC - OPAS Student Worker",
            "MSC - Student Programs Office Staff",
            "MSC - Student Programs Office Student Worker",

            "DMS - Staff",
            "DMS - Student Worker",

            "MUSA - Choral Activities Staff",
            "MUSA - Choral Activities Student Worker",
            "MUSA - University Bands Staff",
            "MUSA - University Bands Student Worker",

            "VPSA - Staff",
            "VPSA - Student Worker",

            "REC - Accounting Staff",
            "REC - Accounting Student Worker",
            "REC - Aquatics Staff",
            "REC - Aquatics Student Worker",
            "REC - Custodians Default",
            "REC - Development Staff",
            "REC - Development Student Worker",
            "REC - Facilities Staff",
            "REC - Facilities Student Worker",
            "REC - Fitness Staff",
            "REC - Fitness Student Worker",
            "REC - Golf Default",
            "REC - Information Technology Default",
            "REC - Intramurals Staff",
            "REC - Intramurals Student Worker",
            "REC - Kiosks Default",
            "REC - Maintenance Default",
            "REC - Management Staff",
            "REC - Management Student Worker",
            "REC - Marketing Staff",
            "REC - Marketing Student Worker",
            "REC - Member Services Default",
            "REC - Outdoors Default",
            "REC - Penberthy Default",
            "REC - Personal Training Default",
            "REC - Programming Default",
            "REC - Sports Club Staff",
            "REC - Sports Club Student Worker",
            "REC - Weight Room Staff",
            "REC - Weight Room Student Worker",
            
            "DRL - Business Services Staff",
            "DRL - Business Services Student Worker",
            "DRL - Central Area Office Staff",
            "DRL - Central Area Office Student Worker",
            "DRL - Conference Services Staff",
            "DRL - Conference Services Student Worker",
            "DRL - Custodial North Area East Default",
            "DRL - Custodial North Area West Default",
            "DRL - Custodial South Area Commons Default",
            "DRL - Custodial Sourth Area South Default",
            "DRL - Custodial University Apartments Default",
            "DRL - Engagement Learning Support Staff",
            "DRL - Engagement Learning Support Student Worker",
            "DRL - Facilities & Operations Staff",
            "DRL - Facilities & Operations Student Worker",
            "DRL - Game Room and Events Staff",
            "DRL - Game Room and Events Student Worker",
            "DRL - Housing Assignments Office Staff",
            "DRL - Housing Assignments Office Student Worker",
            "DRL - Maintenance Default",
            "DRL - NoGroupUsers Default",
            "DRL - North Area Office Staff",
            "DRL - North Area Office Student Worker",
            "DRL - Residence Halls Apartment Default",
            "DRL - Residence Halls Apartment Residence Advisor",
            "DRL - Residence Halls Apartment Hall Director",
            "DRL - Residence Halls Apartment Resident Advisor",
            "DRL - Shared Accounts Default",
            "DRL - South Area Office Staff",
            "DRL - South Area Office Student Worker",
            "DRL - University Apartments Staff",
            "DRL - University Apartments Student Worker",
            "DRL - White Creek Apartments Staff",
            "DRL - White Creek Apartments Student Worker",

            "SACT - Accounting and Payroll Staff",
            "SACT - Accounting and Payroll Student Worker",
            "SACT - Campus Programs for Minors Staff",
            "SACT - Class Center Staff",
            "SACT - Class Center Student Worker",
            "SACT - Directors Office Default",
            "SACT - Extended Orientation Staff",
            "SACT - Extended Orientation Student Worker",
            "SACT - Greek Councils Default",
            "SACT - Leadership and Service Center Staff",
            "SACT - Leadership and Service Center Student Worker",
            "SACT - Marketing Default",
            "SACT - NoGroupUsers Default",
            "SACT - Office of Fraternity and Sorority Life Staff",
            "SACT - Office of Fraternity and Sorority Life Student Worker",
            "SACT - Shared Accounts Default",
            "SACT - SODA Staff",
            "SACT - SODA Student Worker",
            "SACT - Student Government Staff",
            "SACT - Student Government Student Worker",
            "SACT - Student Organization Finance Center Staff",
            "SACT - Student Organization Finance Center Student Worker",

            "SHS - Administration Staff",
            "SHS - Administration Student Worker",
            "SHS - Business Office Default",
            "SHS - Careteam Staff",
            "SHS - Careteam Student Worker",
            "SHS - Clinic Staff",
            "SHS - Clinic Student Worker",
            "SHS - Custodial Default",
            "SHS - EMS Staff",
            "SHS - EMS Student Worker",
            "SHS - Health Education Default",
            "SHS - Information Technology Default",
            "SHS - Laboratory Staff",
            "SHS - Laboratory Student Worker",
            "SHS - Medical Records Default",
            "SHS - Patient Services Staff",
            "SHS - Patient Services Student Worker",
            "SHS - Pharmacy Staff",
            "SHS - Pharmacy Student Worker",
            "SHS - Physical Therapy Staff",
            "SHS - Physical Therapy Student Worker",
            "SHS - Preventive Medicine Default",
            "SHS - Radiology Staff",
            "SHS - Radiology Student Worker",
            "SHS - Resouce Accounts",

            "DSL - Business Services Staff",
            "DSL - Business Services Student Worker",
            "DSL - Deans Office Staff",
            "DSL - Deans Office Student Worker",
            "DSL - Graduate & Professional Student Government Staff",
            "DSL - Graduate & Professional Student Government Student Worker",
            "DSL - Health Promotion Staff",
            "DSL - Health Promotion Student Worker",
            "DSL - LGBTQ Pride Center Staff",
            "DSL - LGBTQ Pride Center Student Worker",
            "DSL - New Student & Family Programs Staff",
            "DSL - New Student & Family Programs Student Worker",
            "DSL - Off-Campus Student Services Staff",
            "DSL - Off-Campus Student Services Student Worker",
            "DSL - Student Assistance Services Staff",
            "DSL - Student Assistance Services Student Worker",
            "DSL - Student Conduct Office Staff",
            "DSL - Student Conduct Office Student Worker",
            "DSL - Student Legal Services Staff",
            "DSL - Student Legal Services Student Worker",
            "DSL - Student Media Staff",
            "DSL - Student Media Student Worker",
            "DSL - Womens Resource Center Staff",
            "DSL - Womens Resource Center Student Worker",

            "SLS - Staff",
            "SLS - Student Worker",

            "UART - Staff",
            "UART - Student Worker",

            "UCSE - Administration Staff",
            "UCSE - Administration Student Worker",
            "UCSE - Event Services Staff",
            "UCSE - Event Services Student Worker",
            "UCSE - Presentation Operations Default",
            "UCSE - RTC Special Events Staff",
            "UCSE - RTC Special Events Student Worker",
            "UCSE - Theater Operations Default",

            "VSRC - Staff",
            "VSRC - Student Worker"
        )]
        [ValidateNotNullOrEmpty()]
        [string]$FunctionalGroup,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $false)]
        [ValidateSet(
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
        )]
        [ValidateNotNullOrEmpty()]
        [string]$EmailDomain,

        [Parameter(
            ValueFromPipelineByPropertyName,
            Mandatory = $false,
            ParameterSetName = 'ClaimMailbox')]
        [switch]$ClaimMailbox
    )

    BEGIN {
        ### STEP 0a (Prep): Load Department Table and validate user ###
        # Load department Table
        Write-Verbose "Load Department Table..."
        . $PSScriptRoot\..\Resources\NewDSAUser\NewUserDepartmentTable.ps1

        # Make sure user has sufficient permissions to run this script
        Write-Verbose "..Check if user has sufficient permissions to run this script"
        $CurrentUserDisplayName = Get-ADUser -Identity $env:USERNAME -Properties DisplayName | Select-Object -ExpandProperty DisplayName
        $FileServerAdmins = Get-ADGroupMember -Identity "Folder - File Server Admins" -Recursive | Select-Object -ExpandProperty Name
        $HasPermissions = $FileServerAdmins -contains $CurrentUserDisplayName

        if ($HasPermissions -eq $false) {
            Throw "Your useraccount ($env:USERNAME) does not have enough permissions to successfully run this script."
        }

        $NoteOutput = Get-Content -Path "$PSScriptRoot\..\Resources\NewDSAUser\NewDSAUserMSG"
    }

    PROCESS {
        ### Step 0b (Prep): Adjust and validate input values ###
        if ($ClaimMailbox) {
            if (-not($UIN)) {
                throw "Missing UIN"
            }
            if (-not($EmailDomain)) {
                throw "Missing Email Domain"
            }
        }

        # Display names must be no more than 64 characters long.
        if ("$LastName, $FirstName".length -gt 64) {
            throw "Display name is longer than 64 characters long."
        }

        # Validate OU from Department Table
        $Path = $userlocation.Item($Department).Item($FunctionalGroup).Win10OU
        if (![adsi]::Exists("LDAP://$Path")) {
            throw "Path does not exist; $Path"
        }

        # Validate AD Groups from Department Table
        $Groups = $userlocation.Item($Department).Item($FunctionalGroup).Groups
        foreach ($Group in $Groups) {
            try {
                Get-ADGroup $Group | Out-Null
            }
            catch {
                throw "AD Group does not exist; $Group"
            }
        }

        # Validate Profile Path from Department Table
        $ProfilePath = $userlocation.Item($Department).Item($FunctionalGroup).ProfilePath
        $ProfilePathMake = "$ProfilePath$Username"
        $ProfilePath = "$ProfilePath$Username\$Username"
        if (Test-Path -Path $ProfilePathMake) {
            throw "Error: Folder $ProfilePathMake already exists"
        }

        # Validate Home Directory from Department Table
        $HomeDirectory = $userlocation.Item($Department).Item($FunctionalGroup).HomeDriveText
        $HomeDirectory = "$HomeDirectory$Username"
        if (Test-Path -Path $HomeDirectory) {
            throw "Folder $HomeDirectory already exists"
        }

        # Set other records
        $Company = $department

        # Trim any whitespace
        $UserName = $UserName.Trim()
        $FirstName = $FirstName.Trim()
        $LastName = $LastName.Trim()
        if ($NetID) {
            $NetID = $NetID.Trim()
        }
        if ($Title) {
            $Title = $Title.Trim()
        }
        if ($Office) {
            $Office = $Office.Trim()
        }

        ### Step 1 (optional): Claim the mailbox ###
        # Claim the mailbox
        if ($ClaimMailbox) {
            try {
                Write-Verbose "Claim mailbox..."
                New-TAMUMailbox -UIN $UIN -Username $UserName -EmailDomain $EmailDomain -Organization $Department
            }
            catch {
                throw "Mailbox creation failed"
            }
        }
        
        ### Step 2: Create a temp password ###
        # Create a temp password
        Write-Verbose "Create a temp password..."
        try {
            $TempPassword = New-DSARandomPassword
        }
        catch {
            throw "Failed to generate temp password"
        }

        ### Step 3: Set the values for AD account ###
        # Set user account
        Write-Verbose "Set user account..."
        $user = @{
            AccountPassword       = (ConvertTo-SecureString -String $TempPassword -AsPlainText -Force)
            ChangePasswordAtLogon = $true
            Company               = $Company
            Department            = $Department
            DisplayName           = "$LastName, $FirstName"
            Enabled               = $true
            GivenName             = $FirstName
            HomeDirectory         = $HomeDirectory
            HomeDrive             = "M:"
            Name                  = "$FirstName $LastName"
            Path                  = $Path
            ProfilePath           = $ProfilePath
            SamAccountName        = $Username
            Surname               = $LastName
            UserPrincipalName     = "$Username@dsa.reldom.tamu.edu"
            ErrorAction           = "Stop"
        }
        if ($UIN) {
            $user.EmployeeID = $UIN
        }
        if ($NetID) {
            $user.EmployeeNumber = $NetID
        }
        if ($Title) {
            $user.Description = $Title
            $user.Title = $Title
        }
        if ($PhoneNumber) {
            $user.OfficePhone = $PhoneNumber
        }
        if ($Office) {
            $user.Office = $Office
        }
        if ($ClaimMailbox) {
            $EmailAddress = "$($Username)@$($EmailDomain)"
            $user.EmailAddress = $EmailAddress
        }

        ### Step 4: Create the AD account ###
        # Create AD account
        Write-Verbose "Creating AD account..."
        try {
            New-ADUser @user
        }
        catch {
            throw "User creation failed"
        }

        ### Step 5: Create home directory, profile path, and add security groups ###
        # Create Home Directory
        Write-Verbose "..Creating home directory..."
        try {
            New-Item -Path $HomeDirectory -ItemType Directory -Verbose:$PSboundparameters.ContainsKey("Verbose") -ErrorAction Stop | Out-Null
            New-Item -Path "$HomeDirectory\Desktop" -ItemType Directory -Verbose:$PSboundparameters.ContainsKey("Verbose") -ErrorAction Stop | Out-Null
            New-Item -Path "$HomeDirectory\My Documents" -ItemType Directory -Verbose:$PSboundparameters.ContainsKey("Verbose") -ErrorAction Stop | Out-Null
            New-Item -Path "$HomeDirectory\Favorites" -ItemType Directory -Verbose:$PSboundparameters.ContainsKey("Verbose") -ErrorAction Stop | Out-Null
            New-Item -Path "$HomeDirectory\My Share" -ItemType Directory -Verbose:$PSboundparameters.ContainsKey("Verbose") -ErrorAction Stop | Out-Null

            $ADDomain = (Get-ADDomain).DNSRoot
            $DCs = Get-ADDomainController -Filter * -Server $ADDomain | Select-Object -ExpandProperty hostname
            $DCsReplicated = @()
            do {
                $DCs | ForEach-Object {
                    if (Get-ADUser -Filter "samaccountname -eq '$Username'" -Server $_) {
                        if ($DCsReplicated -notcontains $_) {
                            $DCsReplicated += $_
                        }
                    }
                }
            } until ($null -eq (Compare-Object -ReferenceObject $DCs -DifferenceObject $DCsReplicated))

            Add-NTFSAccess -Path "$HomeDirectory\Desktop" -AccessRights Modify -Account $Username -Verbose:$PSboundparameters.ContainsKey("Verbose") -ErrorAction Stop
            Add-NTFSAccess -Path "$HomeDirectory\My Documents" -AccessRights Modify -Account $Username -Verbose:$PSboundparameters.ContainsKey("Verbose") -ErrorAction Stop
            Add-NTFSAccess -Path "$HomeDirectory\Favorites" -AccessRights Modify -Account $Username -Verbose:$PSboundparameters.ContainsKey("Verbose") -ErrorAction Stop
            Add-NTFSAccess -Path "$HomeDirectory\My Share" -AccessRights Modify -Account $Username -Verbose:$PSboundparameters.ContainsKey("Verbose") -ErrorAction Stop
        }
        catch {
            throw "Home directory creation failed"
        }

        # Create Profile Path
        Write-Verbose "..Creating profile path..."
        try {
            New-Item -Path $ProfilePathMake -ItemType Directory -Verbose:$PSboundparameters.ContainsKey("Verbose") -ErrorAction Stop | Out-Null
            Add-NTFSAccess -Path $ProfilePathMake -AccessRights Modify -Account $Username -Verbose:$PSboundparameters.ContainsKey("Verbose") -ErrorAction Stop
        }
        catch {
            throw "Profile directory creation failed"
        }

        # Add Security Groups
        Write-Verbose "..Adding security groups..."
        try {
            if (-not([string]::IsNullOrEmpty($Groups))) {
                foreach ($Group in $Groups) {
                    Write-Verbose "....Adding $Group..."
                    if (Get-ADGroup -Identity $Group) {
                        do {
                            Start-Sleep -Milliseconds 10
                            Add-ADGroupMember -Identity $Group -Members $Username -ErrorAction SilentlyContinue
                        } until ((Get-ADGroupMember -Identity $Group | Select-Object -ExpandProperty samaccountname) -contains $Username)
                    }
                }
            }
        }
        catch {
            throw "Failed to add AD Groups"
        }

        ### Step 6 (Final): Output important information ###
        # Output Important Information
        $NoteOutput = $NoteOutput -replace "===LASTNAME===",$LastName
        $NoteOutput = $NoteOutput -replace "===FIRSTNAME===",$FirstName
        $NoteOutput = $NoteOutput -replace "===USERNAME===",$UserName
        $NoteOutput = $NoteOutput -replace "===EMAILADDRESS",$EmailAddress
        $NoteOutput = $NoteOutput -replace "===TEMPPASSWORD",$TempPassword
        Write-Output $NoteOutput
    }
}
