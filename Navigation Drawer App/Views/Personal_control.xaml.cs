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
    /// Interaction logic for Personal_control.xaml
    /// </summary>
    public partial class Personal_control : UserControl
    {
        public Personal_control()
        {
            InitializeComponent();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            personnel m = new personnel();
            m.login = txtlogin.Text;
            m.email = txtemail.Text;
            m.password = txtpass.Text;
            m.nom = txtNom.Text;
            m.prenom = txtPrenom.Text;
            Persons.dt.personnels.InsertOnSubmit(m);
            Persons.dt.SubmitChanges();
            Persons.personnel.Add(m);

            MessageBox.Show("Addition Affected !!");
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            personnel m = (personnel)grid_view.SelectedItem;
            var x = (from mat in Persons.dt.personnels
                     where mat.idP == m.idP
                     select mat).SingleOrDefault();

            x.login = txtlogin.Text;
            x.email = txtemail.Text;
            x.password = txtpass.Text;
            x.nom = txtNom.Text;
            x.prenom = txtPrenom.Text;

            Persons.dt.SubmitChanges();

            MessageBox.Show("Update Affected !!");
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

            personnel m = (personnel)grid_view.SelectedItem;
            var x = (from mat in Persons.dt.personnels
                     where mat.idP == m.idP
                     select mat).SingleOrDefault();
            Persons.dt.personnels.DeleteOnSubmit((personnel)x);
            Persons.dt.SubmitChanges();
            Persons.personnel.Remove((personnel)x);

            MessageBox.Show("Delete Affected !!");
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


                    personnel m = new personnel();

                    m.idP = Convert.ToInt32(ws.Cells[i, 1].Value);

                    m.login = ws.Cells[i, 2].Value;

                    m.email = ws.Cells[i, 3].Value;

                    m.password = ws.Cells[i, 4].Value;

                    m.nom = ws.Cells[i, 5].Value;

                    m.prenom = ws.Cells[i, 6].Value;

                    for (int k = 0; k < Persons.personnel.Count; k++)
                    {

                        MessageBox.Show(Persons.personnel.ElementAt(k).idP.ToString());

                        if (Persons.personnel.ElementAt(k).idP.Equals(ws.Cells[i, 1].Value))
                        {
                            m.idP = Persons.personnel.ElementAt(k).idP;
                            MessageBox.Show(Persons.personnel.ElementAt(k).idP.ToString());
                        }

                    }

                    Persons.dt.personnels.InsertOnSubmit(m);
                    Persons.dt.SubmitChanges();
                    Persons.personnel.Add(m);
                }

            }

        }


        private void txtlogin_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void txtpass_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void txtemail_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}