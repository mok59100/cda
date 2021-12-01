using System;
using System.Collections.Generic;

#nullable disable

namespace LocationAuto.Data.Models
{
    public partial class Clients
    {
        public Clients()
        {
            Locations = new HashSet<Location>();
        }

        public int IdClient { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Adresse { get; set; }
        public int NumTelephone { get; set; }

        public virtual ICollection<Location> Locations { get; set; }
    }
}
