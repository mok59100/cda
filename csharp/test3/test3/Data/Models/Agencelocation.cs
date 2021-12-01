using System;
using System.Collections.Generic;

#nullable disable

namespace test3.Data.Models
{
    public partial class Agencelocation
    {
        public Agencelocation()
        {
            Voitures = new HashSet<Voiture>();
        }

        public int IdAgence { get; set; }
        public string NomGerant { get; set; }
        public string Adresse { get; set; }
        public int? NumeroTelephone { get; set; }

        public virtual ICollection<Voiture> Voitures { get; set; }
    }
}
