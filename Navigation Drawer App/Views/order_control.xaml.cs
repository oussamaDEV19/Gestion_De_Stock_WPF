using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
    /// Interaction logic for order_control.xaml
    /// </summary>
    public partial class order_control : UserControl
    {
        public order_control()
        {
            InitializeComponent();
            categorie cat = new categorie();
            DataContext = cat;
        }
        private void changerCat(object sender, RoutedEventArgs e)
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            var listSousCat = (from s in dc.sous_categories where s.IdCat == Convert.ToInt32(comboboxCat.SelectedValue) select s);


            comboboxSCat.ItemsSource =listSousCat;
            

        }

        private void afficher(object sender, RoutedEventArgs e)
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            var listeM = (from m in dc.materiels where m.id_sous_cat == Convert.ToInt32(comboboxSCat.SelectedValue) select m);
         List<materiel> list = listeM.ToList();
            liste_materiel user = new liste_materiel(list);
            
            grcontent.Children.Clear();
            grcontent.Children.Add(user);

        }
    }
}
