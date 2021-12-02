using System;
using System.Collections.Generic;

#nullable disable

namespace Projet_Gestion_Stocks.Data.Models
{
    public partial class TypesProduits
    {
        public TypesProduits()
        {
            Categories = new HashSet<Categories>();
        }

        public int IdTypeProduit { get; set; }
        public string LibelleTypeProduit { get; set; }

        public virtual ICollection<Categories> Categories { get; set; }
    }
}
