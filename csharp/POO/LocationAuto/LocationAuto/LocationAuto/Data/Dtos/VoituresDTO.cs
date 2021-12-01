using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LocationAuto.Data
{
    public class VoituresDTO
    {
        public int IdVoiture { get; set; }
        public string Marque { get; set; }
        public string Modele { get; set; }
        public int IdAgence { get; set; }
    }
    public class VoituresDTOIn
    {
   
        public string Marque { get; set; }
        public string Modele { get; set; }
      
    }
}
