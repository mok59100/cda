using System;
using System.Collections.Generic;

#nullable disable

namespace LocationAuto.Data.Models
{
    public partial class AgenceLocations
    {
        public AgenceLocations()
        {
            Voitures = new HashSet<Voitures>();
        }

        public int IdAgence { get; set; }
        public string NomGerant { get; set; }
        public string Adresse { get; set; }
        public int NumeroTelephone { get; set; }

        public virtual ICollection<Voitures> Voitures { get; set; }
    }
}
