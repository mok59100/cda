using System;
using System.Collections.Generic;

#nullable disable

namespace baseproduitsApi.Data.Models
{
    public partial class Produit
    {
        public int IdProduit { get; set; }
        public string LibelleProduit { get; set; }
        public int Prix { get; set; }
        public DateTime DateDePeremption { get; set; }
        public int IdCategorie { get; set; }

        public virtual Categorie Categorie { get; set; }
    }
}
