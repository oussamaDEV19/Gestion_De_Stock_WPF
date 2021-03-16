using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;


namespace Navigation_Drawer_App
{
    public class Persons
    {
        public static ObservableCollection<personnel> personnel { get; set; }
        public static DataClasses1DataContext dt = new DataClasses1DataContext();

        static Persons()
        {
            personnel = new ObservableCollection<personnel>(dt.personnels.ToList());
        }
    }
}
