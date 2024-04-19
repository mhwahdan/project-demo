using project_demo.Models;

namespace project_demo
{
    public partial class Hotel_form : Form
    {
        public static HotelDB_Context HotelDBContext = new HotelDB_Context();
        public Hotel_form()
        {
            InitializeComponent();
        }


        private void register(object sender, EventArgs e)
        {
            string userName = user_name_txtbox.Text;
            string password = password_txtbox.Text;

            User newUser = new User
            {
                Username = userName,
                Password = password
            };

            HotelDBContext.Users.Add(newUser);

            HotelDBContext.SaveChanges();

            MessageBox.Show($"User {userName} has been registered", "registeration successfull");
            user_name_txtbox.Text = "";
            password_txtbox.Text = "";

        }

        private void login(object sender, EventArgs e)
        {
            string userName = user_name_txtbox.Text;
            string password = password_txtbox.Text;

            User? foundUser = (from user in HotelDBContext.Users
                              where user.Username == userName
                              && user.Password == password
                              select user).FirstOrDefault();

            if (foundUser != null)
            {
                MessageBox.Show($"welcome {userName}", "login successfull");
            }
            else
            {
                MessageBox.Show("User name or password is incorrect", "login failed");
            }
        }
    }
}
