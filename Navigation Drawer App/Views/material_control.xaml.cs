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
using Telerik.Windows.Controls;
using Excel = Microsoft.Office.Interop.Excel;

namespace Navigation_Drawer_App.Views
{
    /// <summary>
    /// Interaction logic for material_control.xaml
    /// </summary>
    public partial class material_control : UserControl
    {

        public material_control()
        {
            InitializeComponent();
        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            materiel m = new materiel();
            m.nom_materiel = nom_mat.Text;
            m.date_entree = DateTime.Now;
            m.num_inventaire = Convert.ToInt32(num_inv.Text);
            m.fornisseur = forni.Text;
            m.quantite = Convert.ToInt32(quant.Text);
            m.stock = Convert.ToInt32(quant.Text);
            m.bon_commande = bon_com.Text;
            m.bon_iveraison = bon_liv.Text;

            m.id_sous_cat = Convert.ToInt32(cat.SelectedValue);
            Conn_materiel.ds.materiels.InsertOnSubmit(m);
            Conn_materiel.ds.SubmitChanges();
            Conn_materiel.materiel.Add(m);

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            materiel m = (materiel)grid_view.SelectedItem;
            var x = (from mat in Conn_materiel.ds.materiels
                     where mat.id_materiel == m.id_materiel
                     select mat).SingleOrDefault();
            Conn_materiel.ds.materiels.DeleteOnSubmit((materiel)x);
            Conn_materiel.ds.SubmitChanges();
            Conn_materiel.materiel.Remove((materiel)x);
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            materiel m = (materiel)grid_view.SelectedItem;
            var x = (from mat in Conn_materiel.ds.materiels
                     where mat.id_materiel == m.id_materiel
                     select mat).SingleOrDefault();
            x.num_inventaire = Convert.ToInt32(num_inv.Text);
            x.fornisseur = forni.Text;
            x.nom_materiel = nom_mat.Text;
            x.quantite = Convert.ToInt32(quant.Text);
            x.stock = Convert.ToInt32(quant.Text);
            x.bon_commande = bon_com.Text;
            x.bon_iveraison = bon_liv.Text;

            x.id_sous_cat = Convert.ToInt32(cat.SelectedValue);
            Conn_materiel.ds.SubmitChanges();



        }



        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            RadOpenFileDialog openFileDialog = new RadOpenFileDialog();
            openFileDialog.ShowDialog();
            if (openFileDialog.DialogResult == true)
            {
                string fileName = openFileDialog.FileName;
                Excel.Application app = new Excel.Application();
                Excel.Workbook wb;
                Excel.Worksheet ws;
                wb = app.Workbooks.Open(fileName);
                ws = wb.Worksheets[1];



                for (int i = 1; i <= ws.UsedRange.Rows.Count; i++)
                {


                    materiel m = new materiel();
                    m.nom_materiel = ws.Cells[i, 1].Value;
                    m.date_entree = (DateTime)ws.Cells[i, 2].Value;
                    
                    m.num_inventaire = Convert.ToInt32(ws.Cells[i, 3].Value);
                    m.fornisseur = ws.Cells[i, 4].Value;
                    m.quantite = Convert.ToInt32(ws.Cells[i, 5].Value);
                    m.bon_commande = ws.Cells[i, 6].Value;
                    m.bon_iveraison = ws.Cells[i, 7].Value;
                    m.stock = Convert.ToInt32(ws.Cells[i, 8].Value);
                    for (int k = 0; k < Conn_materiel.categorie.Count; k++)
                    {
                        MessageBox.Show(Conn_materiel.categorie.ElementAt(k).IdSC.ToString());
                        if (Conn_materiel.categorie.ElementAt(k).NomSousCategorie.Trim().Equals(ws.Cells[i, 9].Value))
                        {
                            m.id_sous_cat = Conn_materiel.categorie.ElementAt(k).IdSC;
                            MessageBox.Show(Conn_materiel.categorie.ElementAt(k).IdSC.ToString());
                        }
                    }

                    Conn_materiel.ds.materiels.InsertOnSubmit(m);
                    Conn_materiel.ds.SubmitChanges();
                    Conn_materiel.materiel.Add(m);
                }
            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {

            Excel.Application appEXpor = new Excel.Application();
            appEXpor.Application.Workbooks.Add(Type.Missing);

            appEXpor.Cells[1, 1] = "matriel";
            appEXpor.Cells[1, 2] = "fornisseur";
            appEXpor.Cells[1, 3] = "quantite";
            appEXpor.Cells[1, 4] = "sou_categorie";
            appEXpor.Cells[1, 5] = "service";
            appEXpor.Cells[1, 6] = "personne";

            for (int i = 0; i < Conn_materiel.commande.Count; i++)
            {
                appEXpor.Cells[i + 2, 1] = Conn_materiel.commande[i].materiel.nom_materiel;
                appEXpor.Cells[i + 2, 2] = Conn_materiel.commande[i].materiel.fornisseur;
                appEXpor.Cells[i + 2, 3] = Conn_materiel.commande[i].materiel.stock;
                appEXpor.Cells[i + 2, 4] = Conn_materiel.commande[i].materiel.sous_categorie.NomSousCategorie;
                appEXpor.Cells[i + 2, 5] = Conn_materiel.commande[i].Service.nomS;
                appEXpor.Cells[i + 2, 6] = Conn_materiel.commande[i].personnel.nom;

            }
            appEXpor.Columns.AutoFit();
            appEXpor.Visible = true;


        }
    }

}
