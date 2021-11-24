using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceApi2.Data.Models
{
    public class Clients
    {
        [Key]
        public int IdClient { get; set; }
        public string NomClient { get; set; }
        public string VilleClient { get; set; }
       
    }
}
