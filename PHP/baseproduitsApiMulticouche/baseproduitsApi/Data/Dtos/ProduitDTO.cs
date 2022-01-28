using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace baseproduitsApi.Data.Dtos
{
    public class ProduitDTO
    {
        public int IdProduit { get; set; }
        public string LibelleProduit { get; set; }
        public int Prix { get; set; }
        public DateTime DateDePeremption { get; set; }
        public int IdCategorie { get; set; }

        //public virtual CategorieDTO Categorie { get; set; }
    }
}
