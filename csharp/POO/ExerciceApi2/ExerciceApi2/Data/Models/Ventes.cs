using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceApi2.Data.Models
{
    public class Ventes
    {

        [Key]
        public int IdVente { get; set; }
        public int IdClient{ get; set; }
        public int Quantite { get; set; }
        
    }
}
