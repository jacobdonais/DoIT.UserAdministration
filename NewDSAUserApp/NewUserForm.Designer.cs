namespace DSANewUser
{
    partial class NewUserForm
    {
        // Required designer variable.
        private System.ComponentModel.IContainer components = null;

        // Clean up any resources being used.
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        private void InitializeComponent()
        {
            this.label_first_name = new System.Windows.Forms.Label();
            this.label_last_name = new System.Windows.Forms.Label();
            this.label_UIN = new System.Windows.Forms.Label();
            this.label_netid = new System.Windows.Forms.Label();
            this.label_phone = new System.Windows.Forms.Label();
            this.label_department = new System.Windows.Forms.Label();
            this.label_group = new System.Windows.Forms.Label();
            this.label_title = new System.Windows.Forms.Label();
            this.label_location = new System.Windows.Forms.Label();
            this.label_end_date = new System.Windows.Forms.Label();
            this.label_email_domain = new System.Windows.Forms.Label();
            this.checkBox_claim_mailbox = new System.Windows.Forms.CheckBox();
            this.comboBox_email_domains = new System.Windows.Forms.ComboBox();
            this.textBox_location = new System.Windows.Forms.TextBox();
            this.textBox_title = new System.Windows.Forms.TextBox();
            this.comboBox_group = new System.Windows.Forms.ComboBox();
            this.comboBox_department = new System.Windows.Forms.ComboBox();
            this.textBox_phone = new System.Windows.Forms.TextBox();
            this.textBox_netid = new System.Windows.Forms.TextBox();
            this.textBox_UIN = new System.Windows.Forms.TextBox();
            this.textBox_last_name = new System.Windows.Forms.TextBox();
            this.textBox_first_name = new System.Windows.Forms.TextBox();
            this.button_submit = new System.Windows.Forms.Button();
            this.button_get_user_info = new System.Windows.Forms.Button();
            this.textBox_username = new System.Windows.Forms.TextBox();
            this.label_username = new System.Windows.Forms.Label();
            this.checkBox_end_date = new System.Windows.Forms.CheckBox();
            this.dateTimePicker_end_date = new System.Windows.Forms.DateTimePicker();
            this.label_username_taken = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label_first_name
            // 
            this.label_first_name.AutoSize = true;
            this.label_first_name.Location = new System.Drawing.Point(170, 161);
            this.label_first_name.Name = "label_first_name";
            this.label_first_name.Size = new System.Drawing.Size(122, 25);
            this.label_first_name.TabIndex = 6;
            this.label_first_name.Text = "First Name:";
            // 
            // label_last_name
            // 
            this.label_last_name.AutoSize = true;
            this.label_last_name.Location = new System.Drawing.Point(171, 220);
            this.label_last_name.Name = "label_last_name";
            this.label_last_name.Size = new System.Drawing.Size(121, 25);
            this.label_last_name.TabIndex = 8;
            this.label_last_name.Text = "Last Name:";
            // 
            // label_UIN
            // 
            this.label_UIN.AutoSize = true;
            this.label_UIN.Location = new System.Drawing.Point(154, 43);
            this.label_UIN.Name = "label_UIN";
            this.label_UIN.Size = new System.Drawing.Size(138, 25);
            this.label_UIN.TabIndex = 1;
            this.label_UIN.Text = "UIN if known:";
            // 
            // label_netid
            // 
            this.label_netid.AutoSize = true;
            this.label_netid.Location = new System.Drawing.Point(142, 102);
            this.label_netid.Name = "label_netid";
            this.label_netid.Size = new System.Drawing.Size(150, 25);
            this.label_netid.TabIndex = 4;
            this.label_netid.Text = "NetID if known";
            // 
            // label_phone
            // 
            this.label_phone.AutoSize = true;
            this.label_phone.Location = new System.Drawing.Point(69, 574);
            this.label_phone.Name = "label_phone";
            this.label_phone.Size = new System.Drawing.Size(223, 25);
            this.label_phone.TabIndex = 20;
            this.label_phone.Text = "Office Phone Number:";
            // 
            // label_department
            // 
            this.label_department.AutoSize = true;
            this.label_department.Location = new System.Drawing.Point(163, 277);
            this.label_department.Name = "label_department";
            this.label_department.Size = new System.Drawing.Size(129, 25);
            this.label_department.TabIndex = 10;
            this.label_department.Text = "Department:";
            // 
            // label_group
            // 
            this.label_group.AutoSize = true;
            this.label_group.Location = new System.Drawing.Point(109, 336);
            this.label_group.Name = "label_group";
            this.label_group.Size = new System.Drawing.Size(183, 25);
            this.label_group.TabIndex = 12;
            this.label_group.Text = "Functional Group:";
            // 
            // label_title
            // 
            this.label_title.AutoSize = true;
            this.label_title.Location = new System.Drawing.Point(192, 456);
            this.label_title.Name = "label_title";
            this.label_title.Size = new System.Drawing.Size(100, 25);
            this.label_title.TabIndex = 16;
            this.label_title.Text = "Job Title:";
            // 
            // label_location
            // 
            this.label_location.AutoSize = true;
            this.label_location.Location = new System.Drawing.Point(26, 515);
            this.label_location.Name = "label_location";
            this.label_location.Size = new System.Drawing.Size(266, 25);
            this.label_location.TabIndex = 18;
            this.label_location.Text = "Office Bldg/Room Number:";
            // 
            // label_end_date
            // 
            this.label_end_date.AutoSize = true;
            this.label_end_date.Location = new System.Drawing.Point(58, 699);
            this.label_end_date.Name = "label_end_date";
            this.label_end_date.Size = new System.Drawing.Size(234, 25);
            this.label_end_date.TabIndex = 25;
            this.label_end_date.Text = "End Date, if applicable:";
            // 
            // label_email_domain
            // 
            this.label_email_domain.AutoSize = true;
            this.label_email_domain.Location = new System.Drawing.Point(142, 633);
            this.label_email_domain.Name = "label_email_domain";
            this.label_email_domain.Size = new System.Drawing.Size(150, 25);
            this.label_email_domain.TabIndex = 22;
            this.label_email_domain.Text = "Email Domain:";
            // 
            // checkBox_claim_mailbox
            // 
            this.checkBox_claim_mailbox.AutoSize = true;
            this.checkBox_claim_mailbox.Location = new System.Drawing.Point(718, 633);
            this.checkBox_claim_mailbox.Name = "checkBox_claim_mailbox";
            this.checkBox_claim_mailbox.Size = new System.Drawing.Size(191, 29);
            this.checkBox_claim_mailbox.TabIndex = 23;
            this.checkBox_claim_mailbox.Text = "Claim Mailbox?";
            this.checkBox_claim_mailbox.UseVisualStyleBackColor = true;
            this.checkBox_claim_mailbox.CheckedChanged += new System.EventHandler(this.CheckBox_claim_mailbox_CheckedChanged);
            // 
            // comboBox_email_domains
            // 
            this.comboBox_email_domains.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.comboBox_email_domains.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.comboBox_email_domains.FormattingEnabled = true;
            this.comboBox_email_domains.Location = new System.Drawing.Point(298, 631);
            this.comboBox_email_domains.Name = "comboBox_email_domains";
            this.comboBox_email_domains.Size = new System.Drawing.Size(402, 33);
            this.comboBox_email_domains.TabIndex = 24;
            this.comboBox_email_domains.SelectedIndexChanged += new System.EventHandler(this.ComboBox_email_domains_SelectedIndexChanged);
            // 
            // textBox_location
            // 
            this.textBox_location.Location = new System.Drawing.Point(298, 513);
            this.textBox_location.Name = "textBox_location";
            this.textBox_location.Size = new System.Drawing.Size(402, 31);
            this.textBox_location.TabIndex = 19;
            this.textBox_location.TextChanged += new System.EventHandler(this.TextBox_location_TextChanged);
            // 
            // textBox_title
            // 
            this.textBox_title.Location = new System.Drawing.Point(298, 453);
            this.textBox_title.Name = "textBox_title";
            this.textBox_title.Size = new System.Drawing.Size(402, 31);
            this.textBox_title.TabIndex = 17;
            this.textBox_title.TextChanged += new System.EventHandler(this.TextBox_title_TextChanged);
            // 
            // comboBox_group
            // 
            this.comboBox_group.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.comboBox_group.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.comboBox_group.FormattingEnabled = true;
            this.comboBox_group.Location = new System.Drawing.Point(298, 330);
            this.comboBox_group.Name = "comboBox_group";
            this.comboBox_group.Size = new System.Drawing.Size(402, 33);
            this.comboBox_group.TabIndex = 13;
            this.comboBox_group.SelectedIndexChanged += new System.EventHandler(this.ComboBox_group_SelectedIndexChanged);
            // 
            // comboBox_department
            // 
            this.comboBox_department.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.comboBox_department.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.comboBox_department.FormattingEnabled = true;
            this.comboBox_department.Location = new System.Drawing.Point(298, 270);
            this.comboBox_department.Name = "comboBox_department";
            this.comboBox_department.Size = new System.Drawing.Size(402, 33);
            this.comboBox_department.TabIndex = 11;
            this.comboBox_department.SelectedIndexChanged += new System.EventHandler(this.ComboBox_department_SelectedIndexChanged);
            // 
            // textBox_phone
            // 
            this.textBox_phone.Location = new System.Drawing.Point(298, 573);
            this.textBox_phone.Name = "textBox_phone";
            this.textBox_phone.Size = new System.Drawing.Size(402, 31);
            this.textBox_phone.TabIndex = 21;
            this.textBox_phone.TextChanged += new System.EventHandler(this.TextBox_phone_TextChanged);
            // 
            // textBox_netid
            // 
            this.textBox_netid.Location = new System.Drawing.Point(298, 97);
            this.textBox_netid.Name = "textBox_netid";
            this.textBox_netid.Size = new System.Drawing.Size(402, 31);
            this.textBox_netid.TabIndex = 5;
            this.textBox_netid.TextChanged += new System.EventHandler(this.TextBox_netid_TextChanged);
            // 
            // textBox_UIN
            // 
            this.textBox_UIN.Location = new System.Drawing.Point(298, 43);
            this.textBox_UIN.Name = "textBox_UIN";
            this.textBox_UIN.Size = new System.Drawing.Size(402, 31);
            this.textBox_UIN.TabIndex = 2;
            this.textBox_UIN.TextChanged += new System.EventHandler(this.TextBox_UIN_TextChanged);
            // 
            // textBox_last_name
            // 
            this.textBox_last_name.Location = new System.Drawing.Point(298, 217);
            this.textBox_last_name.Name = "textBox_last_name";
            this.textBox_last_name.Size = new System.Drawing.Size(402, 31);
            this.textBox_last_name.TabIndex = 9;
            this.textBox_last_name.TextChanged += new System.EventHandler(this.TextBox_last_name_TextChanged);
            // 
            // textBox_first_name
            // 
            this.textBox_first_name.Location = new System.Drawing.Point(298, 157);
            this.textBox_first_name.Name = "textBox_first_name";
            this.textBox_first_name.Size = new System.Drawing.Size(402, 31);
            this.textBox_first_name.TabIndex = 7;
            this.textBox_first_name.TextChanged += new System.EventHandler(this.TextBox_first_name_TextChanged);
            // 
            // button_submit
            // 
            this.button_submit.Location = new System.Drawing.Point(339, 780);
            this.button_submit.Name = "button_submit";
            this.button_submit.Size = new System.Drawing.Size(310, 71);
            this.button_submit.TabIndex = 28;
            this.button_submit.TabStop = false;
            this.button_submit.Text = "Submit";
            this.button_submit.UseVisualStyleBackColor = true;
            this.button_submit.Click += new System.EventHandler(this.Button_submit_Click);
            // 
            // button_get_user_info
            // 
            this.button_get_user_info.Location = new System.Drawing.Point(718, 32);
            this.button_get_user_info.Name = "button_get_user_info";
            this.button_get_user_info.Size = new System.Drawing.Size(191, 52);
            this.button_get_user_info.TabIndex = 3;
            this.button_get_user_info.Text = "Get User Info";
            this.button_get_user_info.UseVisualStyleBackColor = true;
            this.button_get_user_info.Click += new System.EventHandler(this.Button_get_user_info_Click);
            // 
            // textBox_username
            // 
            this.textBox_username.Location = new System.Drawing.Point(297, 388);
            this.textBox_username.Name = "textBox_username";
            this.textBox_username.Size = new System.Drawing.Size(402, 31);
            this.textBox_username.TabIndex = 15;
            this.textBox_username.TextChanged += new System.EventHandler(this.TextBox_username_TextChanged);
            // 
            // label_username
            // 
            this.label_username.AutoSize = true;
            this.label_username.Location = new System.Drawing.Point(170, 395);
            this.label_username.Name = "label_username";
            this.label_username.Size = new System.Drawing.Size(116, 25);
            this.label_username.TabIndex = 14;
            this.label_username.Text = "Username:";
            // 
            // checkBox_end_date
            // 
            this.checkBox_end_date.AutoSize = true;
            this.checkBox_end_date.Location = new System.Drawing.Point(718, 699);
            this.checkBox_end_date.Name = "checkBox_end_date";
            this.checkBox_end_date.Size = new System.Drawing.Size(145, 29);
            this.checkBox_end_date.TabIndex = 26;
            this.checkBox_end_date.Text = "End Date?";
            this.checkBox_end_date.UseVisualStyleBackColor = true;
            this.checkBox_end_date.CheckedChanged += new System.EventHandler(this.CheckBox_end_date_CheckedChanged);
            // 
            // dateTimePicker_end_date
            // 
            this.dateTimePicker_end_date.Location = new System.Drawing.Point(298, 699);
            this.dateTimePicker_end_date.Name = "dateTimePicker_end_date";
            this.dateTimePicker_end_date.Size = new System.Drawing.Size(402, 31);
            this.dateTimePicker_end_date.TabIndex = 27;
            this.dateTimePicker_end_date.ValueChanged += new System.EventHandler(this.DateTimePicker_end_date_ValueChanged);
            // 
            // label_username_taken
            // 
            this.label_username_taken.AutoSize = true;
            this.label_username_taken.ForeColor = System.Drawing.Color.Red;
            this.label_username_taken.Location = new System.Drawing.Point(717, 393);
            this.label_username_taken.Name = "label_username_taken";
            this.label_username_taken.Size = new System.Drawing.Size(191, 25);
            this.label_username_taken.TabIndex = 29;
            this.label_username_taken.Text = "Username is taken";
            this.label_username_taken.Visible = false;
            // 
            // NewUserForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSize = true;
            this.ClientSize = new System.Drawing.Size(1032, 903);
            this.Controls.Add(this.label_username_taken);
            this.Controls.Add(this.dateTimePicker_end_date);
            this.Controls.Add(this.checkBox_end_date);
            this.Controls.Add(this.textBox_username);
            this.Controls.Add(this.label_username);
            this.Controls.Add(this.button_get_user_info);
            this.Controls.Add(this.button_submit);
            this.Controls.Add(this.textBox_first_name);
            this.Controls.Add(this.textBox_last_name);
            this.Controls.Add(this.textBox_UIN);
            this.Controls.Add(this.textBox_netid);
            this.Controls.Add(this.textBox_phone);
            this.Controls.Add(this.comboBox_department);
            this.Controls.Add(this.comboBox_group);
            this.Controls.Add(this.textBox_title);
            this.Controls.Add(this.textBox_location);
            this.Controls.Add(this.comboBox_email_domains);
            this.Controls.Add(this.checkBox_claim_mailbox);
            this.Controls.Add(this.label_email_domain);
            this.Controls.Add(this.label_end_date);
            this.Controls.Add(this.label_location);
            this.Controls.Add(this.label_title);
            this.Controls.Add(this.label_group);
            this.Controls.Add(this.label_department);
            this.Controls.Add(this.label_phone);
            this.Controls.Add(this.label_netid);
            this.Controls.Add(this.label_UIN);
            this.Controls.Add(this.label_last_name);
            this.Controls.Add(this.label_first_name);
            this.Name = "NewUserForm";
            this.Text = "New User";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label_first_name;
        private System.Windows.Forms.Label label_last_name;
        private System.Windows.Forms.Label label_UIN;
        private System.Windows.Forms.Label label_netid;
        private System.Windows.Forms.Label label_phone;
        private System.Windows.Forms.Label label_department;
        private System.Windows.Forms.Label label_group;
        private System.Windows.Forms.Label label_title;
        private System.Windows.Forms.Label label_location;
        private System.Windows.Forms.Label label_end_date;
        private System.Windows.Forms.Label label_email_domain;
        private System.Windows.Forms.CheckBox checkBox_claim_mailbox;
        private System.Windows.Forms.ComboBox comboBox_email_domains;
        private System.Windows.Forms.TextBox textBox_location;
        private System.Windows.Forms.TextBox textBox_title;
        private System.Windows.Forms.ComboBox comboBox_group;
        private System.Windows.Forms.ComboBox comboBox_department;
        private System.Windows.Forms.TextBox textBox_phone;
        private System.Windows.Forms.TextBox textBox_netid;
        private System.Windows.Forms.TextBox textBox_last_name;
        private System.Windows.Forms.TextBox textBox_first_name;
        private System.Windows.Forms.Button button_submit;
        private System.Windows.Forms.Button button_get_user_info;
        private System.Windows.Forms.TextBox textBox_username;
        private System.Windows.Forms.Label label_username;
        private System.Windows.Forms.TextBox textBox_UIN;
        private System.Windows.Forms.CheckBox checkBox_end_date;
        private System.Windows.Forms.DateTimePicker dateTimePicker_end_date;
        private System.Windows.Forms.Label label_username_taken;
    }
}

