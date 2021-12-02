using System;
using System.Collections.Generic;
#nullable disable

namespace Projet_Gestion_Stocks.Data.Models
{
    public partial class Categories
    {
        public Categories()
        {
            Articles = new HashSet<Articles>();
        }

        public int IdCategorie { get; set; }
        public string LibelleCategorie { get; set; }
        public int IdTypeProduit { get; set; }

        public virtual TypesProduits IdTypeProduitNavigation { get; set; }
        public virtual ICollection<Articles> Articles { get; set; }
    }
}
