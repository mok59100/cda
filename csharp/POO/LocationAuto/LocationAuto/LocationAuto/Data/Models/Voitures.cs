using System;
using System.Collections.Generic;

#nullable disable

namespace LocationAuto.Data.Models
{
    public partial class Voitures
    {
        public Voitures()
        {
            Locations = new HashSet<Location>();
        }

        public int IdVoiture { get; set; }
        public string Marque { get; set; }
        public string Modele { get; set; }
        public int IdAgence { get; set; }

        public virtual AgenceLocations IdAgenceNavigation { get; set; }
        public virtual ICollection<Location> Locations { get; set; }
    }
}
