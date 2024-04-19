namespace project_demo
{
    partial class Hotel_form
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            user_name_txtbox = new TextBox();
            password_txtbox = new TextBox();
            login_btn = new Button();
            register_btn = new Button();
            username_label = new Label();
            password_label = new Label();
            SuspendLayout();
            // 
            // user_name_txtbox
            // 
            user_name_txtbox.Location = new Point(12, 60);
            user_name_txtbox.Name = "user_name_txtbox";
            user_name_txtbox.Size = new Size(442, 23);
            user_name_txtbox.TabIndex = 0;
            // 
            // password_txtbox
            // 
            password_txtbox.Location = new Point(12, 121);
            password_txtbox.Name = "password_txtbox";
            password_txtbox.Size = new Size(442, 23);
            password_txtbox.TabIndex = 1;
            // 
            // login_btn
            // 
            login_btn.Location = new Point(379, 298);
            login_btn.Name = "login_btn";
            login_btn.Size = new Size(75, 23);
            login_btn.TabIndex = 2;
            login_btn.Text = "login";
            login_btn.UseVisualStyleBackColor = true;
            login_btn.Click += login;
            // 
            // register_btn
            // 
            register_btn.Location = new Point(263, 298);
            register_btn.Name = "register_btn";
            register_btn.Size = new Size(75, 23);
            register_btn.TabIndex = 3;
            register_btn.Text = "register";
            register_btn.UseVisualStyleBackColor = true;
            register_btn.Click += register;
            // 
            // username_label
            // 
            username_label.AutoSize = true;
            username_label.Location = new Point(12, 42);
            username_label.Name = "username_label";
            username_label.Size = new Size(59, 15);
            username_label.TabIndex = 4;
            username_label.Text = "username";
            // 
            // password_label
            // 
            password_label.AutoSize = true;
            password_label.Location = new Point(12, 103);
            password_label.Name = "password_label";
            password_label.Size = new Size(57, 15);
            password_label.TabIndex = 5;
            password_label.Text = "Password";
            // 
            // Hotel_form
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(password_label);
            Controls.Add(username_label);
            Controls.Add(register_btn);
            Controls.Add(login_btn);
            Controls.Add(password_txtbox);
            Controls.Add(user_name_txtbox);
            ForeColor = Color.Black;
            Name = "Hotel_form";
            Text = "Hotel Form";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TextBox user_name_txtbox;
        private TextBox password_txtbox;
        private Button login_btn;
        private Button register_btn;
        private Label username_label;
        private Label password_label;
    }
}
