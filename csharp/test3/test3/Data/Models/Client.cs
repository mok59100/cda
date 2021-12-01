using System;
using System.Collections.Generic;

#nullable disable

namespace test3.Data.Models
{
    public partial class Client
    {
        public Client()
        {
            Locations = new HashSet<Location>();
        }

        public int IdClient { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Adresse { get; set; }
        public int? NumTelephone { get; set; }

        public virtual ICollection<Location> Locations { get; set; }
    }
}
