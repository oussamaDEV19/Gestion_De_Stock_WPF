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
    /// Interaction logic for category_control.xaml
    /// </summary>
    public partial class category_control : UserControl
    {
        //List<Categorie> fillCombCat;
        //List<sous_categorie> fillCombSCat;
        public category_control()
        {
            InitializeComponent();
           

            categorie cat = new categorie();
            DataContext = cat;

        }
        bool checkAjoute = false;

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                DataClasses1DataContext dc = new DataClasses1DataContext();
                sous_categorie sc = new sous_categorie();

                sc.NomSousCategorie = ids.Text;
                sc.IdCat = combocat.SelectedIndex + 1;
                dc.sous_categories.InsertOnSubmit(sc);
                dc.SubmitChanges();
                checkAjoute = true;
            }
            catch (Exception ex) { }

            if (checkAjoute == true)
            {

                MessageBox.Show("bien enregistrer");
            }
            else
            {
                MessageBox.Show("erreur");
            }

        }

        /* public void fillCombobox1()
         {
             DataClasses1DataContext dc = new DataClasses1DataContext();
             var x = (from s in dc.Categorie select s);
             fillCombCat = x.ToList<Categorie>();
             DataContext = fillCombCat;
         }
         public void fillCombobox2()
         {
             DataClasses1DataContext dc = new DataClasses1DataContext();
             var x = (from s in dc.sous_categorie select s);
             fillCombSCat = x.ToList<sous_categorie>();
             DataContext = fillCombSCat;
         }*/

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            bool check = false;
            try
            {
                DataClasses1DataContext dc = new DataClasses1DataContext();
                int idcom = Convert.ToInt32(combSC.SelectedValue);
                sous_categorie x = (from s in dc.sous_categories where s.IdSC == idcom select s).Single();
                dc.sous_categories.DeleteOnSubmit(x);
                dc.SubmitChanges();
                check = true;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            if (check == true)
            {
                MessageBox.Show("supprimer");
            }
            else
            {

            }


        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            //comboboxCat
            //comboboxSCat

            try
            {
                DataClasses1DataContext dc = new DataClasses1DataContext();
                int idcom = Convert.ToInt32(comboboxSCat.SelectedValue);
                sous_categorie x = (from s in dc.sous_categories where s.IdSC == idcom select s).Single();
                x.IdCat = Convert.ToInt32(comboboxCat.SelectedValue);
               
                dc.SubmitChanges();

                MessageBox.Show("bien modifier");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
        private void changerSousCat(object sender, RoutedEventArgs e)
        {
            var item = comboboxSCat.SelectedItem as sous_categorie;

            comboboxCat.SelectedValue = item.IdCat;
        }

        private void combocat_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}