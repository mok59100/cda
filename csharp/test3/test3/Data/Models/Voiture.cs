using System;
using System.Collections.Generic;

#nullable disable

namespace test3.Data.Models
{
    public partial class Voiture
    {
        public Voiture()
        {
            Locations = new HashSet<Location>();
        }

        public int IdVoiture { get; set; }
        public string Marque { get; set; }
        public string Modele { get; set; }
        public int IdAgence { get; set; }

        public virtual Agencelocation IdAgenceNavigation { get; set; }
        public virtual ICollection<Location> Locations { get; set; }
    }
}
