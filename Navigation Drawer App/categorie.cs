using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Navigation_Drawer_App
{
    class categorie
    {
        public String nomsouscat;
        public List<Categorie> fillCombCat { set; get; }
        public List<sous_categorie> fillCombSCat { set; get; }

        public static ObservableCollection<materiel> Materiel { get; set; }

        public categorie()
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            var x1 = (from s in dc.Categories select s);
            fillCombCat = x1.ToList<Categorie>();
            
            var x2 = (from s in dc.sous_categories select s);
            fillCombSCat = x2.ToList<sous_categorie>();
            
        }
         
    }
}
