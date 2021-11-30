using ExerciceTableLiees.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceTableLiees.Data.Dtos
{
    public class ProprietairesDTO
    {
      
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Adresse { get; set; }
        public ICollection<AutomobilesDTOOut> Auto { get; set; }
    }
    
    
    public partial class ProprietairesDTOIn
    {


        
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Adresse { get; set; }

        

    }

}
