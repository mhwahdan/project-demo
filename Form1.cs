using project_demo.Models;

namespace project_demo
{
    public partial class Form1 : Form
    {
        public static HotelDB_Context HotelDBContext = new HotelDB_Context();
        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            string userName = textBox1.Text;
            string password = textBox2.Text;

            User newUser = new User
            {
                Username = userName,
                Password = password
            };

            HotelDBContext.Users.Add(newUser);

            HotelDBContext.SaveChanges();

            textBox1.Text = "";
            textBox2.Text = "";

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string userName = textBox1.Text;
            string password = textBox2.Text;

            User? foundUser = (from user in HotelDBContext.Users
                              where user.Username == userName
                              && user.Password == password
                              select user).FirstOrDefault();

            if (foundUser != null)
            {
                label3.Text = "login sucess";
            }
            else
            {
                label3.Text = "failed to login";
            }
            label3.Visible = true;
        }
    }
}
