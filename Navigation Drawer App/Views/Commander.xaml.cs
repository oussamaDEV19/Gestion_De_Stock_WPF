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

namespace Navigation_Drawer_App.Views
{
    /// <summary>
    /// Logique d'interaction pour Commander.xaml
    /// </summary>
    public partial class Commander : Window
    {
        public Commander()
        {
            InitializeComponent();

            Commande com = new Commande();
            DataContext = com;
            comboPer.ItemsSource = com.fillCombPer;
            comboboxSer.ItemsSource = com.fillCombSer;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            DataClasses1DataContext ds = new DataClasses1DataContext();
            commande c = new commande();
            materiel mat = (from p in ds.materiels
                            where p.id_materiel == Convert.ToInt32(idMat.Text)
                            select p).Single();
            c.quantite = Convert.ToInt32(quantite.Text);
            c.IdMat= Convert.ToInt32(idMat.Text);
            var item = comboPer.SelectedItem as personnel;  
            c.IdPer = item.idP;
            var item2 = comboboxSer.SelectedItem as Service;
            c.IDSer = item2.idS;
            c.Date = DateTime.Now.ToString();

            //teste de stock
            var st = (from m in ds.materiels where m.id_materiel == c.IdMat select m.stock).SingleOrDefault();
            if(c.quantite< Convert.ToInt32(st))
            {
                mat.quantite -= Convert.ToInt32(quantite.Text);
                ds.SubmitChanges();


                ds.commandes.InsertOnSubmit(c);
                ds.SubmitChanges();
                MessageBox.Show("operation effectué");
            }
            else{
                MessageBox.Show("operation echoue");
            }
            
            
        }
    }
}
