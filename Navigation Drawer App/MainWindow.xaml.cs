
using System.Windows;

using System.Windows.Input;
using System.Media;


namespace Navigation_Drawer_App
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private SoundPlayer _soundPlayer;
        private SoundPlayer _soundPlayer2;
        public MainWindow()
        {
            InitializeComponent();
            _soundPlayer = new SoundPlayer("click.wav");
            _soundPlayer2 = new SoundPlayer("ome.wav");
            _soundPlayer2.Play();
        }

        private void ListViewItem_MouseEnter(object sender, MouseEventArgs e)
        {
           // Set tooltip visibility

            if(Tg_Btn.IsChecked == true)
            {
                tt_home.Visibility = Visibility.Collapsed;
                tt_contacts.Visibility = Visibility.Collapsed;
                tt_material.Visibility = Visibility.Collapsed;
                tt_messages.Visibility = Visibility.Collapsed;
                tt_maps.Visibility = Visibility.Collapsed;
                tt_settings.Visibility = Visibility.Collapsed;
                tt_signout.Visibility = Visibility.Collapsed;
            }
            else
            {
                tt_home.Visibility = Visibility.Visible;
                tt_contacts.Visibility = Visibility.Visible;
                tt_material.Visibility = Visibility.Visible;
                tt_messages.Visibility = Visibility.Visible;
                tt_maps.Visibility = Visibility.Visible;
                tt_settings.Visibility = Visibility.Visible;
                tt_signout.Visibility = Visibility.Visible;
            }
        }

        private void Tg_Btn_Unchecked(object sender, RoutedEventArgs e)
        {
            home_cntrl.Opacity = 1;
            material_cntrl.Opacity = 1;
            personal_cntrl.Opacity = 1;
            statistics_cntrl.Opacity = 1;
            order_cntrl.Opacity = 1;
            category_cntrl.Opacity = 1;
            background.Opacity = 1;
        }

        private void Tg_Btn_Checked(object sender, RoutedEventArgs e)
        {
            home_cntrl.Opacity = 0.3;
            material_cntrl.Opacity = 0.3;
            personal_cntrl.Opacity = 0.3;
            statistics_cntrl.Opacity = 0.3;
            order_cntrl.Opacity = 0.3;
            category_cntrl.Opacity = 0.3;
            background.Opacity = 0.3;
        }

        private void BG_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Tg_Btn.IsChecked = false;
        }

        private void CloseBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void CloseBtn2_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Category_Click(object sender, RoutedEventArgs e)
        {
            _soundPlayer.Play();
            //Margin = "-6,x,0,0" x = 98  160  225 290 350 420
            arrow.Margin = new Thickness(-6, 420, 0, 0);
            home_cntrl.Visibility = Visibility.Hidden;
            material_cntrl.Visibility = Visibility.Hidden;
            personal_cntrl.Visibility = Visibility.Hidden;
            statistics_cntrl.Visibility = Visibility.Hidden;
            order_cntrl.Visibility = Visibility.Hidden;
            category_cntrl.Visibility = Visibility.Visible;
            background.Visibility = Visibility.Hidden;
        }

        private void Order_Click(object sender, RoutedEventArgs e)
        {
            _soundPlayer.Play();
            //Margin = "-6,x,0,0" x = 98  160  225 290 350 420
            arrow.Margin = new Thickness(-6, 350, 0, 0);
            home_cntrl.Visibility = Visibility.Hidden;
            material_cntrl.Visibility = Visibility.Hidden;
            personal_cntrl.Visibility = Visibility.Hidden;
            statistics_cntrl.Visibility = Visibility.Hidden;
            order_cntrl.Visibility = Visibility.Visible;
            category_cntrl.Visibility = Visibility.Hidden;
            background.Visibility = Visibility.Hidden;
        }

        private void Statistics_Click(object sender, RoutedEventArgs e)
        {
            _soundPlayer.Play();
            //Margin = "-6,x,0,0" x = 98  160  225 290 350 420
            arrow.Margin = new Thickness(-6, 290, 0, 0);
            home_cntrl.Visibility = Visibility.Hidden;
            material_cntrl.Visibility = Visibility.Hidden;
            personal_cntrl.Visibility = Visibility.Hidden;
            statistics_cntrl.Visibility = Visibility.Visible;
            statistics_cntrl.load_data();
            order_cntrl.Visibility = Visibility.Hidden;
            category_cntrl.Visibility = Visibility.Hidden;
            background.Visibility = Visibility.Hidden;
        }

        private void Img_contact_Click(object sender, RoutedEventArgs e)
        {
            _soundPlayer.Play();
            //Margin = "-6,x,0,0" x = 98  160  225 290 350 420
            arrow.Margin = new Thickness(-6, 225, 0, 0);
            home_cntrl.Visibility = Visibility.Hidden;
            material_cntrl.Visibility = Visibility.Hidden;
            personal_cntrl.Visibility = Visibility.Visible;
            statistics_cntrl.Visibility = Visibility.Hidden;
            order_cntrl.Visibility = Visibility.Hidden;
            category_cntrl.Visibility = Visibility.Hidden;
            background.Visibility = Visibility.Hidden;
        }

        private void Home_Click(object sender, RoutedEventArgs e)
        {
            _soundPlayer.Play();
            //Margin = "-6,x,0,0" x = 98  160  225 290 350 420
            arrow.Margin = new Thickness(-6, 98, 0, 0);
            home_cntrl.Visibility = Visibility.Visible;
            material_cntrl.Visibility = Visibility.Hidden;
            personal_cntrl.Visibility = Visibility.Hidden;
            statistics_cntrl.Visibility = Visibility.Hidden;
            order_cntrl.Visibility = Visibility.Hidden;
            category_cntrl.Visibility = Visibility.Hidden;
            background.Visibility = Visibility.Hidden;
        }

        private void Stock_Click(object sender, RoutedEventArgs e)
        {
            _soundPlayer.Play();
            //Margin = "-6,x,0,0" x = 98  160  225 290 350 420
            arrow.Margin = new Thickness(-6, 160, 0, 0);
            home_cntrl.Visibility = Visibility.Hidden;
            material_cntrl.Visibility = Visibility.Visible;
            personal_cntrl.Visibility = Visibility.Hidden;
            statistics_cntrl.Visibility = Visibility.Hidden;
            order_cntrl.Visibility = Visibility.Hidden;
            category_cntrl.Visibility = Visibility.Hidden;
            background.Visibility = Visibility.Hidden;
        }
    }
}
