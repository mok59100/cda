using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceTableLiees.Data.Dtos
{

    public class AutomobilesDTO
    {

        public string Marque { get; set; }
        public string Modele { get; set; }

        public ProprietairesDTO Conducteur { get; set; }
    }
    public class AutomobilesDTOOut
    {

        public string Marque { get; set; }
        public string Modele { get; set; }

        }
    public partial class AutomobileDTOIn
    {
       
        
        public int IdProprio { get; set; }
        public string Marque { get; set; }
        public string Modele { get; set; }
        public DateTime AnneeConstruction { get; set; }
       
    }
}
