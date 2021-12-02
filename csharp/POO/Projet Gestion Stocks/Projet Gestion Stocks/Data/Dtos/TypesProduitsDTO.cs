using Projet_Gestion_Stocks.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projet_Gestion_Stocks.Data.Dtos
{
    class TypesProduitsDTO
    {

        public string LibelleTypeProduit { get; set; }
    }


    class TypesProduitsDTOIn
    {
        public int IdTypeProduit { get; set; }
        public string LibelleTypeProduit { get; set; }
    }



    public partial class TypesProduitsDTOOut
    {
        public TypesProduitsDTOOut()
        {
            Categories = new HashSet<Categories>();
        }

        public int IdTypeProduit { get; set; }
        public string LibelleTypeProduit { get; set; }

        public virtual ICollection<Categories> Categories { get; set; }
    }
}