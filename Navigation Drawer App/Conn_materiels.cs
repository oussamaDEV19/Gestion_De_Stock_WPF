using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Navigation_Drawer_App
{
    public class Conn_materiel
    {
        public static ObservableCollection<materiel> materiel { get; set; }
        public static ObservableCollection<sous_categorie> categorie { get; set; }
        public static ObservableCollection<commande> commande { get; set; }

        public static DataClasses1DataContext ds = new DataClasses1DataContext();

        static Conn_materiel()
        {
            materiel = new ObservableCollection<materiel>(ds.materiels.ToList());
            categorie = new ObservableCollection<sous_categorie>(ds.sous_categories.ToList());
            commande = new ObservableCollection<commande>(ds.commandes.ToList());
        }


    }
}
