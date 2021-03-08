using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewDSAUser
{
    class CONSTANTS
    {
        public static string DEFAULT_DOMAIN = "dsa.tamu.edu";

        public static object[] EMAIL_DOMAINS = new object[] {
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
            "vpsa.tamu.edu" };

        public static object[] DEPARTMENTS = new object[] {
            "Disability Resources",
            "Counseling & Psychological Services",
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
            "Corps of Cadets",
            "Student Affairs IT",
            "Residence Life",
            "Student Activities",
            "Children's Center"};

        public static object[] GROUPS(string department)
        {
            object[] groups;

            switch (department)
            {
                case "Disability Resources":
                    groups = new object[] {
                        "DR - Staff",
                        "DR - Student Worker"
                    };
                    break;
                case "Counseling & Psychological Services":
                    groups = new object[] {
                        "CAPS - Staff",
                        "CAPS - Student Worker"
                    };
                    break;
                case "Office of the VP for Student Affairs":
                    groups = new object[] {
                        "MARCOMM - Staff",
                        "MARCOMM - Student Worker",
                        "VPSA - Staff",
                        "VPSA - Student Worker",
                        "VRSC - Staff",
                        "VRSC - Student Worker"
                    };
                    break;
                case "University Art Collections & Exhibitions":
                    groups = new object[] {
                        "UART - Staff",
                        "UART - Student Worker"
                    };
                    break;
                case "Student Life":
                    groups = new object[] {
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
                        "DSL - Womens Resource Center Student Worker"
                    };
                    break;
                case "University Center and Special Events":
                    groups = new object[] {
                        "UCSE - Administration Staff",
                        "UCSE - Administration Student Worker",
                        "UCSE - Event Services Staff",
                        "UCSE - Event Services Student Worker",
                        "UCSE - Presentation Operations Default",
                        "UCSE - RTC Special Events Staff",
                        "UCSE - RTC Special Events Student Worker",
                        "UCSE - Theater Operations Default"
                    };
                    break;
                case "Student Health Services":
                    groups = new object[] {
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
                        "SHS - Resouce Accounts"
                    };
                    break;
                case "Student Life Studies":
                    groups = new object[] {
                        "SLS - Staff",
                        "SLS - Student Worker"
                    };
                    break;
                case "Memorial Student Center":
                    groups = new object[] {
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
                        "MSC - Student Programs Office Student Worker"
                    };
                    break;
                case "Recreational Sports":
                    groups = new object[] {
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
                        "REC - Weight Room Student Worker"
                    };
                    break;
                case "Music Activities":
                    groups = new object[] {
                        "MUSA - Choral Activities Staff",
                        "MUSA - Choral Activities Student Worker",
                        "MUSA - University Bands Staff",
                        "MUSA - University Bands Student Worker"
                    };
                    break;
                case "Multicultural Services":
                    groups = new object[] {
                        "DMS - Staff",
                        "DMS - Student Worker"
                    };
                    break;
                case "Corps of Cadets":
                    groups = new object[] {
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
                        "NROTC - Default"
                    };
                    break;
                case "Student Affairs IT":
                    groups = new object[] {
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
                        "DOIT - Systems Default"
                    };
                    break;
                case "Residence Life":
                    groups = new object[] {
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
                        "DRL - Residence Halls Default",
                        "DRL - Residence Halls Apartment Resident Advisor",
                        "DRL - Residence Halls Hall Director",
                        "DRL - Residence Halls Resident Advisor",
                        "DRL - Shared Accounts Default",
                        "DRL - South Area Office Staff",
                        "DRL - South Area Office Student Worker",
                        "DRL - University Apartments Staff",
                        "DRL - University Apartments Student Worker",
                        "DRL - White Creek Apartments Staff",
                        "DRL - White Creek Apartments Student Worker"
                    };
                    break;
                case "Student Activities":
                    groups = new object[] {
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
                        "SACT - Student Organization Finance Center Student Worker"
                    };
                    break;
                case "Children's Center":
                    groups = new object[] {
                        "BGCC - Staff",
                        "BGCC - Student Worker",
                        "BGCC - Teacher"
                    };
                    break;
                default:
                    groups = new object[] {
                        "---ERROR---"
                    };
                    break;
            }
            return groups;
        }

        public static string DEPARTMENT_DOMAIN(string department)
        {
            string domain = "dsa.tamu.edu";
            switch (department)
            {
                case "Disability Resources":
                    domain = "disability.tamu.edu";
                    break;
                case "Counseling & Psychological Services":
                    domain = "caps.tamu.edu";
                    break;
                case "Office of the VP for Student Affairs":
                    domain = "vpsa.tamu.edu";
                    break;
                case "University Art Collections & Exhibitions":
                    domain = "uart.tamu.edu";
                    break;
                case "Student Life":
                    domain = "studentlife.tamu.edu";
                    break;
                case "University Center and Special Events":
                    domain = "dsa.tamu.edu";
                    break;
                case "Student Health Services":
                    domain = "shs.tamu.edu";
                    break;
                case "Student Life Studies":
                    domain = "sls.tamu.edu";
                    break;
                case "Memorial Student Center":
                    domain = "msc.tamu.edu";
                    break;
                case "Recreational Sports":
                    domain = "rec.tamu.edu";
                    break;
                case "Music Activities":
                    domain = "dsa.tamu.edu";
                    break;
                case "Multicultural Services":
                    domain = "dms.tamu.edu";
                    break;
                case "Corps of Cadets":
                    domain = "corps.tamu.edu";
                    break;
                case "Student Affairs IT":
                    domain = "doit.tamu.edu";
                    break;
                case "Residence Life":
                    domain = "reslife.tamu.edu";
                    break;
                case "Student Activities":
                    domain = "stuact.tamu.edu";
                    break;
                case "Children's Center":
                    domain = "bgcc.tamu.edu";
                    break;
            }
            return domain;
        }

        // CreateFLast()
        //  Creates a username with flast
        //  Example: John Doe => jdoe
        private static string CREATE_USERNAME_FLAST(string first, string last)
        {
            return first.ToLower()[0] + last.ToLower();
        }

        // CreateFirstL()
        //  Creates a username with firstl
        //  Example: John Doe => johnd
        private static string CREATE_USERNAME_FIRSTL(string first, string last)
        {
            return first.ToLower() + last.ToLower()[0];
        }

        // CreateFirst_Last
        //  Creates a username with first_last
        //  Example: John Doe => john_doe
        private static string CREATE_USERNAME_FIRST_LAST(string first, string last)
        {
            return first.ToLower() + "_" + last.ToLower();
        }

        // CreateF_Last
        //  Creates a username with f-last
        //  Example: John Doe => j-doe
        private static string CREATE_USERNAME_F_LAST(string first, string last)
        {
            return first.ToLower()[0] + "-" + last.ToLower();
        }

        public static string DEPARTMENT_USERNAME(string department, string firstname, string lastname)
        {
            string username = "";
            switch (department)
            {
                case "Disability Resources":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "Counseling & Psychological Services":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "Office of the VP for Student Affairs":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "University Art Collections & Exhibitions":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "Student Life":
                    username = CREATE_USERNAME_F_LAST(firstname, lastname);
                    break;
                case "University Center and Special Events":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "Student Health Services":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "Student Life Studies":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "Memorial Student Center":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "Recreational Sports":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "Music Activities":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "Multicultural Services":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "Corps of Cadets":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "Student Affairs IT":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "Residence Life":
                    username = CREATE_USERNAME_FIRST_LAST(firstname, lastname);
                    break;
                case "Student Activities":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
                case "Children's Center":
                    username = CREATE_USERNAME_FIRSTL(firstname, lastname);
                    break;
            }
            return username;
        }
    }
}
