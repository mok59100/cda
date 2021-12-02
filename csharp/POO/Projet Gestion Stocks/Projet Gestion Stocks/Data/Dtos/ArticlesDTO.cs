using Projet_Gestion_Stocks.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projet_Gestion_Stocks.Data.Dtos
{
    class ArticlesDTO
    {
        public string LibelleArticle { get; set; }
        public int? QuantiteStockee { get; set; }
        public int IdCategorie { get; set; }
    }
    class ArticlesDTOIn
    {
        public int IdArticle { get; set; }
        public string LibelleArticle { get; set; }
        public int? QuantiteStockee { get; set; }
        public int IdCategorie { get; set; }
    }
    class ArticlesDTOOut
    {
        public int IdArticle { get; set; }
        public string LibelleArticle { get; set; }
        public int? QuantiteStockee { get; set; }
        public int IdCategorie { get; set; }
        public virtual Categories IdCategorieNavigation { get; set; }
    }
}
