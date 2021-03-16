using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Linq;

namespace Navigation_Drawer_App
{
    /// <summary>
    /// Interaction logic for login.xaml
    /// </summary>
    public partial class login : Window
    {
        public login()
        {
            InitializeComponent();
        }

        private void ButtonLogin_Click(object sender, RoutedEventArgs e)
        {
            personnel m = new personnel();
            string login = login_field.Text;
            string password = password_field.Text;

            var user = Persons.dt.personnels.FirstOrDefault(u => u.login == login && u.password == password);


            if (user == null)
            {
                MessageBox.Show("Login Or Password Not Exist !!!");
                
            }
            else
            {
                MainWindow main = new MainWindow();
                main.Show();
                Close();
            }
            
            
        }

        private void ButtonClose_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
