[Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSUseDeclaredVarsMoreThanAssignments", "", Justification="It's being invoked in another script")]

$UserLocation = @{
    "Disability Resources" = @{
        "DR - Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Disability Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DS\"
		    Groups = "DR Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Disability Resources,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DR - Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Disability Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DS\"
		    Groups = "DR Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Disability Resources,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "Counseling & Psychological Services" = @{
        "CAPS - Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Counseling and Psychological Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\CAPS\"
		    Groups = "CAPS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Counseling and Psychological Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "CAPS - Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Counseling and Psychological Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\CAPS\"
		    Groups = "CAPS Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Counseling and Psychological Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "DSA Student Organizations" = @{
    }
    "Office of the VP for Student Affairs" = @{
        "MARCOMM - Staff" = @{
		    HomeDriveText = ""
		    ProfilePath = ""
		    Groups = "MARCOM - Staff","OVP DSA MarCom"
		    Win10OU = "OU=Secure Win10 Users,OU=Marketing and Communications,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MARCOMM - Student Worker" = @{
		    HomeDriveText = ""
		    ProfilePath = ""
		    Groups = "MARCOM - Student Workers","OVP DSA MarCom"
		    Win10OU = "OU=Secure Win10 Users,OU=Marketing and Communications,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "VPSA - Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Vice Presidents Office\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OVP\"
		    Groups = "OVP Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Office of the Vice President,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "VPSA - Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Vice Presidents Office\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OVP\"
		    Groups = "OVP Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Office of the Vice President,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "VSRC - Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Veterans Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\VRSC\"
		    Groups = "VS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Veteran Resource and Support Center,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "VSRC - Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Veterans Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\VRSC\"
		    Groups = "VS Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Veteran Resource and Support Center,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "University Art Collections & Exhibitions" = @{
        "UART - Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\University Art\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\UART\"
		    Groups = "UART Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=University Art,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "UART - Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\University Art\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\UART\"
		    Groups = "UART All Users"
		    Win10OU = "OU=Secure Win10 Users,OU=University Art,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "Student Life" = @{
        "DSL - Business Services Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Business Services","DSL Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Business Services,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Business Services Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Business Services"
		    Win10OU = "OU=Secure Win10 Users,OU=Business Services,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Deans Office Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Dean's Office","DSL Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Dean""s Office,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Deans Office Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Dean's Office Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Dean""s Office,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Graduate & Professional Student Government Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Graduate & Professional Student Government","DSL Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Graduate & Professional Student Government,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Graduate & Professional Student Government Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Graduate & Professional Student Government"
		    Win10OU = "OU=Secure Win10 Users,OU=Graduate & Professional Student Government,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Health Promotion Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Health Promotion","DSL Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Health Promotion,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Health Promotion Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Health Promotion"
		    Win10OU = "OU=Secure Win10 Users,OU=Health Promotion,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - LGBTQ Pride Center Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL LGBTQ Pride Center","DSL Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=LGBTQ Pride Center,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - LGBTQ Pride Center Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL LGBTQ Pride Center"
		    Win10OU = "OU=Secure Win10 Users,OU=LGBTQ Pride Center,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - New Student & Family Programs Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL New Student and Family Programs","DSL Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=New Student & Family Programs,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - New Student & Family Programs Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL New Student and Family Programs"
		    Win10OU = "OU=Secure Win10 Users,OU=New Student & Family Programs,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Off-Campus Student Services Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Off-Campus Student Services","DSL Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Off-Campus Student Services,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Off-Campus Student Services Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Off-Campus Student Services"
		    Win10OU = "OU=Secure Win10 Users,OU=Off-Campus Student Services,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Student Assistance Services Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "SAS Staff", "DSL Student Assistance Services","DSL Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Assistance Services,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Student Assistance Services Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Student Assistance Services","SAS Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Assistance Services,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Student Conduct Office Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Student Conduct Services", "DSL Student Conflict Resolution Services","DSL Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Conduct Office,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Student Conduct Office Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Student Conduct Services","DSL Student Conflict Resolution Services"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Conduct Office,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Student Legal Services Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Student Legal Services","DSL Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Legal Services,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Student Legal Services Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Student Legal Services"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Legal Services,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Student Media Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Student Media Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Media,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Student Media Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "DSL Student Media Battalion Arists","DSL Student Media Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Media,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Womens Resource Center Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "WRC Staff", "DSL Womens Resource Center"
		    Win10OU = "OU=Secure Win10 Users,OU=Womens Resource Center,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DSL - Womens Resource Center Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\ODSL\"
		    Groups = "WRC Student Workers", "DSL Womens Resource Center"
		    Win10OU = "OU=Secure Win10 Users,OU=Womens Resource Center,OU=Student Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "University Center and Special Events" = @{
        "UCSE - Administration Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\University Center and Special Events\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\UCSE\"
		    Groups = "UCEN Administration"
		    Win10OU = "OU=Secure Win10 Users,OU=Administration,OU=University Center and Special Events,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "UCSE - Administration Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\University Center and Special Events\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\UCSE\"
		    Groups = "UCEN Administration Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Administration,OU=University Center and Special Events,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "UCSE - Event Services Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\University Center and Special Events\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\UCSE\"
		    Groups = "UCEN Event Services Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Event Services,OU=University Center and Special Events,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "UCSE - Event Services Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\University Center and Special Events\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\UCSE\"
		    Groups = "UCEN Event Services Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Event Services,OU=University Center and Special Events,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "UCSE - Presentation Operations Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\University Center and Special Events\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\UCSE\"
		    Groups = ""
		    Win10OU = "OU=Secure Win10 Users,OU=Presentation Operations,OU=University Center and Special Events,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "UCSE - RTC Special Events Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\University Center and Special Events\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\UCSE\"
		    Groups = "UCEN RTC Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=RTC Special Events,OU=University Center and Special Events,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "UCSE - RTC Special Events Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\University Center and Special Events\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\UCSE\"
		    Groups = "UCEN RTC Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=RTC Special Events,OU=University Center and Special Events,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "UCSE - Theater Operations Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\University Center and Special Events\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\UCSE\"
		    Groups = ""
		    Win10OU = "OU=Secure Win10 Users,OU=Theater Operations,OU=University Center and Special Events,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "Student Health Services" = @{
        "SHS - Administration Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Administration","SHS Records Destruction"
		    Win10OU = "OU=Secure Win10 Users,OU=Administration,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Administration Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Administration Student Workers","SHS Records Destruction"
		    Win10OU = "OU=Secure Win10 Users,OU=Administration,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Business Office Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Business Office"
		    Win10OU = "OU=Secure Win10 Users,OU=Business Office,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Careteam Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = ""
		    Win10OU = "OU=Secure Win10 Users,OU=Careteam,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Careteam Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = ""
		    Win10OU = "OU=Secure Win10 Users,OU=Careteam,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Clinic Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Nursing"
		    Win10OU = "OU=Secure Win10 Users,OU=Clinic,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Clinic Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Nursing"
		    Win10OU = "OU=Secure Win10 Users,OU=Clinic,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Custodial Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = ""
		    Win10OU = "OU=Secure Win10 Users,OU=Custodial,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - EMS Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Emergency Medical Services","SHS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=EMS,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - EMS Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Emergency Medical Services"
		    Win10OU = "OU=Secure Win10 Users,OU=EMS,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Health Education Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Health Education"
		    Win10OU = "OU=Secure Win10 Users,OU=Health Education,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Information Technology Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Information Technology"
		    Win10OU = "OU=Secure Win10 Users,OU=Information Technology,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Laboratory Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Laboratory","SHS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Laboratory,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Laboratory Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Laboratory"
		    Win10OU = "OU=Secure Win10 Users,OU=Laboratory,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Medical Records Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Medical Records", "SHS Records Destruction"
		    Win10OU = "OU=Secure Win10 Users,OU=Medical Records,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Patient Services Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Patient Services","SHS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Patient Services,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Patient Services Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Patient Services"
		    Win10OU = "OU=Secure Win10 Users,OU=Patient Services,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Pharmacy Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Pharmacy","SHS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Pharmacy,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Pharmacy Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Pharmacy"
		    Win10OU = "OU=Secure Win10 Users,OU=Pharmacy,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Physical Therapy Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Physical Therapy","SHS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Physical Therapy,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Physical Therapy Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Physical Therapy"
		    Win10OU = "OU=Secure Win10 Users,OU=Physical Therapy,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Preventive Medicine Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SHS Preventive Medicine"
		    Win10OU = "OU=Secure Win10 Users,OU=Preventive Medicine,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Radiology Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SharedPrinterUsers","SHS Radiology","SHS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Radiology,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Radiology Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = "SharedPrinterUsers","SHS Radiology"
		    Win10OU = "OU=Secure Win10 Users,OU=Radiology,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SHS - Resouce Accounts" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Health Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SHS\"
		    Groups = ""
		    Win10OU = "OU=Resource Accounts,OU=Student Health Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "Student Life Studies" = @{
        "SLS - Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life Studies\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SLS\"
		    Groups = "SLS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Life Studies,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SLS - Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Life Studies\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SLS\"
		    Groups = "SLS Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Life Studies,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "Memorial Student Center" = @{
        "MSC - Administrative Services Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = "MSC Accounting","MSC Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Administrative Services,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MSC - Administrative Services Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = "MSC Accounting"
		    Win10OU = "OU=Secure Win10 Users,OU=Administrative Services,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MSC - Box Office Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = "MSC Box Office","MSC Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Box Office,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MSC - Box Office Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = "MSC Box Office"
		    Win10OU = "OU=Secure Win10 Users,OU=Box Office,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MSC - Committees Staff Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = ""
		    Win10OU = "OU=Secure Win10 Users,OU=Committees Staff,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MSC - Directors Office Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = "MSC Director's Office","MSC Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Director's Office,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MSC - Directors Office Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = "MSC Director's Office Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Director's Office,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MSC - Directors Office Graduate Assistant" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = "MSC Director's Office Development GAs"
		    Win10OU = "OU=Secure Win10 Users,OU=Director's Office,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MSC - Marketing Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = "MSC Marketing Staff","MSC Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Marketing,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MSC - Marketing Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = "MSC Marketing"
		    Win10OU = "OU=Secure Win10 Users,OU=Marketing,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MSC - OPAS Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = "MSC OPAS Staff","MSC Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=OPAS,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MSC - OPAS Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = "MSC OPAS"
		    Win10OU = "OU=Secure Win10 Users,OU=OPAS,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MSC - Student Programs Office Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = "MSC Student Programs Office Staff","MSC Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Programs Office,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MSC - Student Programs Office Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\MSC\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MSC\"
		    Groups = "MSC Student Programs Office Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Programs Office,OU=MSC,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "Recreational Sports" = @{
        "REC - Accounting Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Staff","REC Accounting"
		    Win10OU = "OU=Secure Win10 Users,OU=Accounting,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Accounting Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Accounting"
		    Win10OU = "OU=Secure Win10 Users,OU=Accounting,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Aquatics Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Staff","REC Aquatics"
		    Win10OU = "OU=Secure Win10 Users,OU=Aquatics,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Aquatics Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Aquatics"
		    Win10OU = "OU=Secure Win10 Users,OU=Aquatics,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Custodians Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = ""
		    Win10OU = "OU=Secure Win10 Users,OU=Custodians,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Development Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Staff","REC Development"
		    Win10OU = "OU=Secure Win10 Users,OU=Development,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Development Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Development"
		    Win10OU = "OU=Secure Win10 Users,OU=Development,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Facilities Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Staff","REC Facilities"
		    Win10OU = "OU=Secure Win10 Users,OU=Facilities,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Facilities Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Facilities"
		    Win10OU = "OU=Secure Win10 Users,OU=Facilities,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Fitness Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Staff","REC Fitness"
		    Win10OU = "OU=Secure Win10 Users,OU=Fitness,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Fitness Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Fitness"
		    Win10OU = "OU=Secure Win10 Users,OU=Fitness,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Golf Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Golf"
		    Win10OU = "OU=Secure Win10 Users,OU=Golf,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Information Technology Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Information Technology"
		    Win10OU = "OU=Secure Win10 Users,OU=Information Technology,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Intramurals Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Staff","REC Intramurals"
		    Win10OU = "OU=Secure Win10 Users,OU=Intramurals,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Intramurals Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Intramurals"
		    Win10OU = "OU=Secure Win10 Users,OU=Intramurals,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Kiosks Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = ""
		    Win10OU = "OU=Secure Win10 Users,OU=Kiosks,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Maintenance Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Maintenance"
		    Win10OU = "OU=Secure Win10 Users,OU=Maintenance,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Management Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Staff","REC Management"
		    Win10OU = "OU=Secure Win10 Users,OU=Management,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Management Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Management"
		    Win10OU = "OU=Secure Win10 Users,OU=Management,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Marketing Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Marketing","REC Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Marketing,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Marketing Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Marketing"
		    Win10OU = "OU=Secure Win10 Users,OU=Marketing,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Member Services Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = ""
		    Win10OU = "OU=Secure Win10 Users,OU=Member Services,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Outdoors Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Outdoors"
		    Win10OU = "OU=Secure Win10 Users,OU=Outdoors,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Penberthy Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Penberthy"
		    Win10OU = "OU=Secure Win10 Users,OU=Penberthy,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Personal Training Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Personal Training"
		    Win10OU = "OU=Secure Win10 Users,OU=Personal Training,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Programming Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Programming"
		    Win10OU = "OU=Secure Win10 Users,OU=Programming,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Sports Club Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Sport Clubs","REC Sport Clubs Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Sport Clubs,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Sports Club Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Sport Clubs"
		    Win10OU = "OU=Secure Win10 Users,OU=Sport Clubs,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Weight Room Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Weight Room","REC Weightroom", "REC Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Weight Room,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "REC - Weight Room Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Recreational Sports\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\REC\"
		    Groups = "REC Weight Room","REC Weightroom"
		    Win10OU = "OU=Secure Win10 Users,OU=Weight Room,OU=Recreational Sports,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "Music Activities" = @{
        "MUSA - Choral Activities Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Choral Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MUSA\"
		    Groups = "MUSA Choral Activities All Users","MUSA Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Choral Activities,OU=Music Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MUSA - Choral Activities Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Choral Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MUSA\"
		    Groups = "MUSA Choral Activities All Users"
		    Win10OU = "OU=Secure Win10 Users,OU=Choral Activities,OU=Music Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MUSA - University Bands Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Choral Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MUSA\"
		    Groups = "MUSA University Bands All Users","MUSA Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=University Bands,OU=Music Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "MUSA - University Bands Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Choral Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\MUSA\"
		    Groups = "MUSA University Bands All Users"
		    Win10OU = "OU=Secure Win10 Users,OU=University Bands,OU=Music Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "Multicultural Services" = @{
        "DMS - Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Multicultural Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DMS\"
		    Groups = "DMS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Multicultural Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DMS - Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Multicultural Services\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DMS\"
		    Groups = "DMS Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Multicultural Services,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "Student Affairs Development Office" = @{
    }
    "Corps of Cadets" = @{
        "OOC - Academics Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS Academics Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Academics,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - Academics Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Academics,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - Corps Center Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS CorpsCenter","CORPS Recruiting","CORPS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Corps Center,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - Corps Center Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS CorpsCenter","CORPS Recruiting","CORPS Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Corps Center,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - Development Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = ""
		    Win10OU = "OU=Secure Win10 Users,OU=Development,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - Discipline Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS Discipline"
		    Win10OU = "OU=Secure Win10 Users,OU=Discipline,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - Leadership Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS Leadership"
		    Win10OU = "OU=Secure Win10 Users,OU=Leadership,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - NoGroupUsers Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS All Users"
		    Win10OU = "OU=Secure Win10 Users,OU=NoGroupUsers,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - Ops & Training Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS OpsAndTraining","CORPS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Ops & Training,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - Ops & Training Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS OpsAndTraining","CORPS Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Ops & Training,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - Recruiting Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS Recruiting","CORPS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Recruiting,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - Recruiting Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS Recruiting","CORPS Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Recruiting,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - Scholarships Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS Scholarships"
		    Win10OU = "OU=Secure Win10 Users,OU=Scholarships,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - Trigon Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS Trigon","CORPS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Trigon,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - Trigon Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS Trigon","CORPS Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Trigon,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - UDC Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS MPW","CORPS Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=UDC,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "OOC - UDC Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS MPW","CORPS Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=UDC,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "AFROTC - Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS Air Force ROTC"
		    Win10OU = "OU=Secure Win10 Users,OU=Air Force ROTC,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "ARROTC - Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS Army ROTC"
		    Win10OU = "OU=Secure Win10 Users,OU=Army ROTC,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "NROTC - Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Corps of Cadets\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\OOC\"
		    Groups = "CORPS Navy ROTC","CORPS Navy ROTC Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Navy ROTC,OU=Corps of Cadets,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "Student Affairs IT" = @{
        "DOIT - Administration Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Information Technology\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DoIT\"
		    Groups = "DoIT Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Administration,OU=Dept of Information Technology,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DOIT - Administration Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Information Technology\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DoIT\"
		    Groups = "DoIT Admin Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Administration,OU=Dept of Information Technology,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DOIT - Applications Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Information Technology\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DoIT\"
		    Groups = "DoIT Staff","DoIT Applications"
		    Win10OU = "OU=Staff,OU=Secure Win10 Users,OU=Applications Group,OU=Dept of Information Technology,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DOIT - Applications Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Information Technology\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DoIT\"
		    Groups = "DoIT Applications"
		    Win10OU = "OU=Secure Win10 Users,OU=Applications Group,OU=Dept of Information Technology,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DOIT - Applications Graduate Assistant" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Information Technology\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DoIT\"
		    Groups = "DoIT Graduate Assistants","DoIT Applications"
		    Win10OU = "OU=Staff,OU=Secure Win10 Users,OU=Applications Group,OU=Dept of Information Technology,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DOIT - Business Relationship Management Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Information Technology\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DoIT\"
		    Groups = "DoIT Business Relationship Management"
		    Win10OU = "OU=Secure Win10 Users,OU=Business Relationship Management,OU=Dept of Information Technology,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DOIT - Database Group Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Information Technology\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DoIT\"
		    Groups = "DoIT Database"
		    Win10OU = "OU=Secure Win10 Users,OU=Applications Group,OU=Dept of Information Technology,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DOIT - Project Management Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Information Technology\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DoIT\"
		    Groups = "DoIT Project Management"
		    Win10OU = "OU=Secure Win10 Users,OU=Project Management,OU=Dept of Information Technology,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DOIT - Risk Management" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Information Technology\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DoIT\"
		    Groups = "DoIT Risk Management"
		    Win10OU = "OU=Secure Win10 Users,OU=Risk Management,OU=Dept of Information Technology,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DOIT - Service Desk Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Information Technology\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DoIT\"
		    Groups = "DoIT Service Desk Technicians","DoIT Staff","DoIT Service Desk Administrators"
		    Win10OU = "OU=Secure Win10 Users,OU=Service Desk,OU=Dept of Information Technology,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DOIT - Service Desk Student Technician" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Information Technology\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DoIT\"
		    Groups = "DoIT Service Desk Technicians","DoIT Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Service Desk,OU=Dept of Information Technology,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DOIT - Systems Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Information Technology\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DoIT\"
		    Groups = "DoIT Systems"
		    Win10OU = "OU=Secure Win10 Users,OU=Systems Group,OU=Dept of Information Technology,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "Residence Life" = @{
        "DRL - Business Services Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Business Services Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Business Services,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Business Services Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Business Services Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Business Services,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Central Area Office Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Central Office Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Central Area Office,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Central Area Office Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Central Office Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Central Area Office,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Conference Services Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Conference Services Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Conference Services,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Conference Services Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Conference Services Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Conference Services,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Custodial North Area East Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = ""
		    Win10OU = "OU=North Area East,OU=Secure Win10 Users,OU=Custodial,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Custodial North Area West Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = ""
		    Win10OU = "OU=North Area West,OU=Secure Win10 Users,OU=Custodial,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Custodial South Area Commons Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = ""
		    Win10OU = "OU=South Area Commons,OU=Secure Win10 Users,OU=Custodial,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Custodial Sourth Area South Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = ""
		    Win10OU = "OU=South Area South,OU=Secure Win10 Users,OU=Custodial,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Custodial University Apartments Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = ""
		    Win10OU = "OU=University Apartments,OU=Secure Win10 Users,OU=Custodial,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Engagement Learning Support Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Engagement Learning Support Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Engagement Learning Support,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Engagement Learning Support Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Engagement Learning Support Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Engagement Learning Support,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Facilities & Operations Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Facilities & Operations Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Facilities & Operations,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Facilities & Operations Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Facilities & Operations Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Facilities & Operations,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Game Room and Events Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Facilities & Operations Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Game Room and Events,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Game Room and Events Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Facilities & Operations Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Game Room and Events,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Housing Assignments Office Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Housing Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Housing Assignments Office,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Housing Assignments Office Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Housing Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Housing Assignments Office,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Maintenance Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Maintenance"
		    Win10OU = "OU=Secure Win10 Users,OU=Maintenance,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - NoGroupUsers Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = ""
		    Win10OU = "OU=NoGroupUsers,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - North Area Office Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL North Area Office Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=North Area Office,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - North Area Office Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL North Area Office Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=North Area Office,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Residence Halls Apartment Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = ""
		    Win10OU = "OU=Secure Win10 Users,OU=Residence Halls,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Residence Halls Apartment Residence Advisor" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Resident Advisors"
		    Win10OU = "OU=Resident Advisors,OU=Secure Win10 Users,OU=Residence Halls,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Residence Halls Apartment Hall Director" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL Community Directors"
		    Win10OU = "OU=Hall Directors,OU=Secure Win10 Users,OU=Residence Halls,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Residence Halls Apartment Resident Advisor" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL University Apartments RAs"
		    Win10OU = "OU=Apartment Resident Advisor,OU=Secure Win10 Users,OU=Residence Halls,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - Shared Accounts Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DSA Shared Accounts"
		    Win10OU = "OU=Shared Accounts,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - South Area Office Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL South Area Office", "DRL South Area Office Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=South Area Office,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - South Area Office Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL South Area Office", "DRL South Area Office Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=South Area Office,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - University Apartments Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL University Apartments Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=University Apartments,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - University Apartments Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL University Apartments Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=University Apartments,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - White Creek Apartments Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL White Creek Apartments"
		    Win10OU = "OU=Secure Win10 Users,OU=University Apartments,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "DRL - White Creek Apartments Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Residence Life\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\DRL\"
		    Groups = "DRL White Creek Apartments"
		    Win10OU = "OU=Secure Win10 Users,OU=University Apartments,OU=Residence Life,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "Student Activities" = @{
        "SACT - Accounting and Payroll Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Accounting Staff","SA Accounting and Payroll"
		    Win10OU = "OU=Secure Win10 Users,OU=Accounting and Payroll,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Accounting and Payroll Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Accounting and Payroll"
		    Win10OU = "OU=Secure Win10 Users,OU=Accounting and Payroll,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Campus Programs for Minors Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Campus Programs for Minors Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Campus Programs for Minors,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Class Center Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Class Center","SA Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Class Center,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Class Center Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Class Center"
		    Win10OU = "OU=Secure Win10 Users,OU=Class Center,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Directors Office Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Directors Office"
		    Win10OU = "OU=Secure Win10 Users,OU=Directors Office,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Extended Orientation Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Extended Orientation Leadership and Administrative Services","SA Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Extended Orientation,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Extended Orientation Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Extended Orientation Leadership and Administrative Services"
		    Win10OU = "OU=Secure Win10 Users,OU=Extended Orientation,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Greek Councils Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA OFSL Councils"
		    Win10OU = "OU=Secure Win10 Users,OU=Greek Councils,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Leadership and Service Center Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Leadership Education and Student Involvement","SA Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Leadership and Service Center,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Leadership and Service Center Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Leadership Education and Student Involvement"
		    Win10OU = "OU=Secure Win10 Users,OU=Leadership and Service Center,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Marketing Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Marketing"
		    Win10OU = "OU=Secure Win10 Users,OU=Marketing,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - NoGroupUsers Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA NoGroup"
		    Win10OU = "OU=Secure Win10 Users,OU=NoGroupUsers,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Office of Fraternity and Sorority Life Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA OFSL","SA Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Office of Fraternity and Sorority Life,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Office of Fraternity and Sorority Life Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA OFSL"
		    Win10OU = "OU=Secure Win10 Users,OU=Office of Fraternity and Sorority Life,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Shared Accounts Default" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = ""
		    Win10OU = "OU=Secure Win10 Users,OU=Shared Accounts,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - SODA Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA SODA Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=SODA,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - SODA Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA SODA Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=SODA,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Student Government Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Student Government","SA Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Government,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Student Government Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Student Government"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Government,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Student Organization Finance Center Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Finance Center","SA Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Organization Finance Center,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "SACT - Student Organization Finance Center Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Student Activities\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\SACT\"
		    Groups = "SA Finance Center"
		    Win10OU = "OU=Secure Win10 Users,OU=Student Organization Finance Center,OU=Student Activities,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
    "Children's Center" = @{
        "BGCC - Staff" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Childrens Center\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\BGCC\"
		    Groups = "CC Staff"
		    Win10OU = "OU=Secure Win10 Users,OU=Childrens Center,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "BGCC - Student Worker" = @{
		    HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Childrens Center\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\BGCC\"
		    Groups = "CC Student Workers"
		    Win10OU = "OU=Secure Win10 Users,OU=Childrens Center,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
        "BGCC - Teacher" = @{
            HomeDriveText = "\\dsa.reldom.tamu.edu\Student Affairs\Departments\Childrens Center\Staff\"
		    ProfilePath = "\\dsa.reldom.tamu.edu\Users\Profiles\BGCC\"
		    Groups = "CC Teachers"
		    Win10OU = "OU=Secure Win10 Users,OU=Childrens Center,OU=Departments,OU=Student Affairs,DC=dsa,DC=reldom,DC=tamu,DC=edu"
        }
    }
}
