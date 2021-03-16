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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Navigation_Drawer_App.Views
{
    
    /// <summary>
    /// Logique d'interaction pour liste_materiel.xaml
    /// </summary>
    public partial class liste_materiel : UserControl
    {
        List<materiel> list;
        private List<materiel> list1;

        public liste_materiel(List<materiel> l)
        {
            this.list = l;
            InitializeComponent();
            grid_view.ItemsSource = list;
            Commande com = new Commande();
            DataContext = com;

        }
        /*
        public liste_materiel(List<materiel> list1)
        {
            this.list1 = list1;
        }
        */
        private void commanderMat(object sender, RoutedEventArgs e)
        {
            Commande com = this.DataContext as Commande;
            if (com.selectMateriel != null)
            {
                Commander FenetreEntrer = new Commander();
                FenetreEntrer.DataContext = com.selectMateriel;

                FenetreEntrer.ShowDialog();
                

            }
            else
            {
                MessageBox.Show("selectionner une commande svp");
            }
        }

        private void Grid_view_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
