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
    /// Interaction logic for statistique_control.xaml
    /// </summary>
    public partial class statistique_control : UserControl
    {
        public statistique_control()
        {
            InitializeComponent();
            load_data();
        }

        public void load_data()
        {


            nb_materials.Text = (from m in Conn_materiel.ds.materiels select m).Count().ToString();
            nb_orders.Text = (from o in Conn_materiel.ds.commandes select o).Count().ToString();
            nb_personals.Text = (from p in Persons.dt.personnels select p).Count().ToString();

        }
    }
}
