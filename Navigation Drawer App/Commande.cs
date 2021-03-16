using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Navigation_Drawer_App
{
    class Commande
    {
        public materiel selectMateriel { get; set; }


        public List<Service> fillCombSer { set; get; }
        public List<personnel> fillCombPer { set; get; }

        public Commande()
        {
            DataClasses1DataContext dc = new DataClasses1DataContext();
            var x1 = (from s in dc.personnels select s);
            fillCombPer = x1.ToList<personnel>();


            var x = (from s in dc.Services select s);
            fillCombSer = x.ToList<Service>();
        }
    }
}
