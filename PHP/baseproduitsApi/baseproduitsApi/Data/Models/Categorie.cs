using System;
using System.Collections.Generic;

#nullable disable

namespace baseproduitsApi.Data.Models
{
    public partial class Categorie
    {
        public Categorie()
        {
            Produits = new HashSet<Produit>();
        }

        public int IdCategorie { get; set; }
        public string LibelleCategorie { get; set; }

        public virtual ICollection<Produit> Produits { get; set; }
    }
}
