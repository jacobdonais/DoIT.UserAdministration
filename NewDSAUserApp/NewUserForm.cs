using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Text.RegularExpressions;
using NewDSAUser;

namespace DSANewUser
{
    public partial class NewUserForm : Form
    {
        public NewUserForm()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            AddEmailDomains();
            AddDepartments();
            comboBox_email_domains.Enabled = false;
            button_submit.Enabled = false;
            comboBox_group.Enabled = false;
            dateTimePicker_end_date.Enabled = false;
            button_get_user_info.Enabled = false;
        }

        // AddEmailDomains()
        //  Adds all email domains to combo box
        private void AddEmailDomains() {
            comboBox_email_domains.Items.Clear();
            comboBox_email_domains.Text = "";
            comboBox_email_domains.Items.AddRange(CONSTANTS.EMAIL_DOMAINS);
        }

        // AddDepartments()
        //  Adds all departments to combo box
        private void AddDepartments()
        {
            comboBox_department.Items.Clear();
            comboBox_department.Text = "";
            comboBox_department.Items.AddRange(CONSTANTS.DEPARTMENTS);
        }

        // AddGroups()
        //  Adds all groups to combo box based on department
        private void AddGroups()
        {
            string department = comboBox_department.Text;
            comboBox_group.Items.Clear();
            comboBox_group.Text = "";
            comboBox_group.Items.AddRange(CONSTANTS.GROUPS(department));
            CreateUsername();
        }

        // IsValidUIN()
        //  returns true if UIN is valid and not null/empty
        private bool IsValidUIN()
        {
            string textBox = textBox_UIN.Text;
            Regex pattern = new Regex(@"^[0-9]{3}00[0-9]{4}$");
            return (pattern.IsMatch(textBox)) && textBox != "";
        }

        // IsValidNetID()
        //  returns true if NetID is valid and not null/empty
        private bool IsValidNetID()
        {
            string textBox = textBox_netid.Text;
            return textBox != "";
        }

        // IsValidUsername()
        //  returns true if Username is valid and not null/empty
        private bool IsValidUsername()
        {
            bool retVal = true;
            string textBox = textBox_username.Text;
            Regex pattern = new Regex(@"[\/\\\[\]\:\;\|\=\,\+\\\*\?\<\>]");
            retVal &= !(pattern.IsMatch(textBox));
            retVal &= textBox != "";


            // check if username is taken
            string username = textBox_username.Text;
            // Check for AD on match
            if (username == "jacobd")
            {
                textBox_username.BackColor = Color.Red;
                textBox_username.ForeColor = Color.White;
                label_username_taken.Visible = true;
                retVal &= false;
            }
            else
            {
                textBox_username.BackColor = Color.White;
                textBox_username.ForeColor = Color.Black;
                label_username_taken.Visible = false;
                retVal &= true;
            }

            return retVal;
        }

        // IsValidFirstName()
        //  returns true if First Name is valid and not null/empty
        private bool IsValidFirstName()
        {
            string textBox = textBox_first_name.Text;
            Regex pattern = new Regex(@"[\/\\\[\]\:\;\|\=\,\+\\\*\?\<\>]");
            return !(pattern.IsMatch(textBox)) && textBox != "";
        }

        // IsValidTitle()
        //  returns true is Title is valid and not null/empty
        private bool IsValidTitle()
        {
            string textBox = textBox_title.Text;
            Regex pattern = new Regex(@"^[A-Za-z0-9\- ]{2,}$");
            return (pattern.IsMatch(textBox)) && textBox != "";
        }

        // IsValidLastName()
        //  returns true if Last Name is valid and not null/empty
        private bool IsValidLastName()
        {
            string textBox = textBox_last_name.Text;
            Regex pattern = new Regex(@"[\/\\\[\]\:\;\|\=\,\+\\\*\?\<\>]");
            return !(pattern.IsMatch(textBox)) && textBox != "";
        }

        // IsValidPhone()
        //  returns true if Phone is valid and not null/empty
        private bool IsValidPhone()
        {
            string textBox = textBox_phone.Text;
            Regex pattern = new Regex(@"^[0-9]{3}-[0-9]{3}-[0-9]{4}$");
            return (pattern.IsMatch(textBox)) && textBox != "";
        }

        // IsValidRequest()
        //  Checks if there is enough information for a new user request
        private void IsValidRequest()
        {
            bool isValid = true;
            if (textBox_UIN.Text != "")
            {
                isValid &= IsValidUIN();
            }
            if (textBox_netid.Text != "")
            {
                isValid &= IsValidNetID();
            }
            isValid &= IsValidFirstName();
            isValid &= IsValidLastName();
            isValid &= IsValidUsername();
            isValid &= comboBox_department.Text != "";
            isValid &= comboBox_group.Text != "";
            isValid &= comboBox_group.Text != "---ERROR---";
            isValid &= IsValidTitle();
            if (textBox_location.Text != "")
            {
                isValid &= IsValidTitle();
            }
            if (textBox_phone.Text != "")
            {
                isValid &= IsValidPhone();
            }
            if (checkBox_claim_mailbox.Checked)
            {
                isValid &= comboBox_email_domains.Text != "";
            }
            if (checkBox_end_date.Checked)
            {
                isValid &= dateTimePicker_end_date.Text != "";
            }
            button_submit.Enabled = isValid;
        }

        // Enables email domain box if checkbox is enabled
        private void CheckBox_claim_mailbox_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox_claim_mailbox.Checked) {
                if (comboBox_department.Text == "")
                {
                    comboBox_email_domains.Text = CONSTANTS.DEFAULT_DOMAIN;
                }
                else
                {
                    comboBox_email_domains.Text = CONSTANTS.DEPARTMENT_DOMAIN(comboBox_department.Text);
                }
            }
            else
            {
                comboBox_email_domains.Text = "";
            }
            
            IsValidRequest();
            comboBox_email_domains.Enabled = checkBox_claim_mailbox.Checked;
        }

        // Submit button should call the new dsauer function
        private void Button_submit_Click(object sender, EventArgs e)
        {
            // get all the values
            string uin = GetUIN();
            string netid = GetNetID();
            string firstName = GetFirstName();
            string lastName = GetLastName();
            string username = GetUsername();
            string department = GetDepartment();
            string group = GetGroup();
            string title = GetTitle();
            string location = GetLocation();
            string phone = GetPhone();
            string emailDomain = GetEmailDomain();
            string endDate = GetEndDate();

            Console.WriteLine(uin);
            Console.WriteLine(netid);
            Console.WriteLine(firstName);
            Console.WriteLine(lastName);
            Console.WriteLine(username);
            Console.WriteLine(department);
            Console.WriteLine(group);
            Console.WriteLine(title);
            Console.WriteLine(location);
            Console.WriteLine(phone);
            Console.WriteLine(emailDomain);
            Console.WriteLine(endDate);

            // Make system call

            // Get output

            // Display Output
        }

             

        // CreateUsername()
        //  Creates a username based on department if username is empty
        private void CreateUsername()
        {
            if ((GetFirstName() != "") && (GetLastName() != "") && (GetUsername() == ""))
            {
                string department = GetDepartment();
                textBox_username.Text = CONSTANTS.DEPARTMENT_USERNAME(department, GetFirstName(), GetLastName());
            }
        }

        private void TextBox_first_name_TextChanged(object sender, EventArgs e)
        {
            IsValidRequest();
        }

        private void TextBox_last_name_TextChanged(object sender, EventArgs e)
        {
            IsValidRequest();
        }

        private void TextBox_username_TextChanged(object sender, EventArgs e)
        {
            IsValidRequest();
        }

        private void ComboBox_department_SelectedIndexChanged(object sender, EventArgs e)
        {
            AddGroups();
            comboBox_group.Enabled = comboBox_department.Text != "";
            IsValidRequest();
        }

        private void ComboBox_group_SelectedIndexChanged(object sender, EventArgs e)
        {
            IsValidRequest();
        }

        private void TextBox_title_TextChanged(object sender, EventArgs e)
        {
            IsValidRequest();
        }

        private void TextBox_UIN_TextChanged(object sender, EventArgs e)
        {
            button_get_user_info.Enabled = IsValidUIN();
            IsValidRequest();
        }

        private void ComboBox_email_domains_SelectedIndexChanged(object sender, EventArgs e)
        {
            IsValidRequest();
        }

        private void CheckBox_end_date_CheckedChanged(object sender, EventArgs e)
        {
            dateTimePicker_end_date.Enabled = checkBox_end_date.Checked;
        }

        private void TextBox_phone_TextChanged(object sender, EventArgs e)
        {
            IsValidRequest();
        }

        private void TextBox_netid_TextChanged(object sender, EventArgs e)
        {
            IsValidRequest();
        }

        private void TextBox_location_TextChanged(object sender, EventArgs e)
        {
            IsValidRequest();
        }

        private void DateTimePicker_end_date_ValueChanged(object sender, EventArgs e)
        {
            IsValidRequest();
        }

        private string GetUIN()
        {
            if (IsValidUIN())
            {
                return textBox_UIN.Text.Trim();
            }
            return "";
        }

        private string GetNetID()
        {
            if (IsValidNetID())
            {
                return textBox_netid.Text.Trim();
            }
            return "";
        }

        private string GetFirstName()
        {
            if (IsValidFirstName())
            {
                return textBox_first_name.Text.Trim();
            }
            return "";
        }

        private string GetLastName()
        {
            if (IsValidLastName())
            {
                return textBox_last_name.Text.Trim();
            }
            return "";
        }

        private string GetUsername()
        {
            if (IsValidUsername())
            {
                return textBox_username.Text.Trim();
            }
            return "";
        }

        private string GetDepartment()
        {
            return comboBox_department.Text.Trim();
        }

        private string GetGroup()
        {
            return comboBox_group.Text.Trim();
        }

        private string GetTitle()
        {
            if (IsValidTitle())
            {
                return textBox_title.Text.Trim();
            }
            return "";
        }

        private string GetLocation()
        {
            return textBox_location.Text.Trim();
        }

        private string GetPhone()
        {
            if (IsValidPhone())
            {
                return textBox_phone.Text.Trim();
            }
            return "";
        }

        private string GetEmailDomain()
        {
            if (checkBox_claim_mailbox.Checked)
            {
                return comboBox_email_domains.Text.Trim();
            }
            return "";
        }

        private string GetEndDate()
        {
            if (checkBox_end_date.Checked)
            {
                return dateTimePicker_end_date.Text.Trim();
            }
            return "";
        }

        private void Button_get_user_info_Click(object sender, EventArgs e)
        {
            // Call Get-TAMUUserDetail
            if (GetFirstName() == "")
            {
                textBox_first_name.Text = "Jacob";
            }
            if (GetLastName() == "")
            {
                textBox_last_name.Text = "Donais";
            }
            if (GetNetID() == "")
            {
                textBox_netid.Text = "donais1";
            }
            if (GetTitle() == "")
            {
                textBox_title.Text = "Student Worker";

            }
            if (GetDepartment() == "")
            {
                comboBox_department.Text = "Student Affairs IT";
                AddGroups();
            }
        }
    }
}
