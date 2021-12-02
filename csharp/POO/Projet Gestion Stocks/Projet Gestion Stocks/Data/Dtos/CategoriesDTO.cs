using Projet_Gestion_Stocks.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projet_Gestion_Stocks.Data.Dtos
{
    class CategoriesDTO
    {
        public string LibelleCategorie { get; set; }
        public int IdTypeProduit { get; set; }

    }
    public partial class CategoriesDTOIn
    {
        public CategoriesDTOIn()
        {
            Articles = new HashSet<Articles>();
        }

        public int IdCategorie { get; set; }
        public string LibelleCategorie { get; set; }
        public int IdTypeProduit { get; set; }

       
        public virtual ICollection<Articles> Articles { get; set; }
    }
    public partial class CategoriesDTOOut
    {
       
        public int IdCategorie { get; set; }
        public string LibelleCategorie { get; set; }
        public int IdTypeProduit { get; set; }

        public virtual TypesProduits IdTypeProduitNavigation { get; set; }
       
    }
    public partial class CategoriesDTOOutPoduitsArticles
    {
        public CategoriesDTOOutPoduitsArticles()
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
