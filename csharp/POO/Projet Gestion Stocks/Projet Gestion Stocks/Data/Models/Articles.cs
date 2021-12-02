using System;
using System.Collections.Generic;

#nullable disable

namespace Projet_Gestion_Stocks.Data.Models
{
    public partial class Articles
    {
        public int IdArticle { get; set; }
        public string LibelleArticle { get; set; }
        public int? QuantiteStockee { get; set; }
        public int IdCategorie { get; set; }

        public virtual Categories IdCategorieNavigation { get; set; }
    }
}
