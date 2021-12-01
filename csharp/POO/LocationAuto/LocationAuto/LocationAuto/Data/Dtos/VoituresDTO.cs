using LocationAuto.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LocationAuto.Data
{
    public partial class VoituresDTO
    {
        public  VoituresDTO()
            {
            
            }
        public int IdVoiture { get; set; }
        public string Marque { get; set; }
        public string Modele { get; set; }
        
      }
    

       public partial class VoituresDTOIn
       {
       
        public string Marque { get; set; }
        public string Modele { get; set; }
        public int IdAgence { get; set; }
      

       }
    public partial class VoituresDTOOut
    {
        public VoituresDTOOut()
        {
            Locations = new HashSet<LocationDTOOut>();
        }
        public string Marque { get; set; }
        public string Modele { get; set; }
        public int IdAgence { get; set; }

        public virtual AgenceLocations Agence { get; set; }
        public virtual ICollection<LocationDTOOut> Locations { get; set; }


    }
    public partial class VoituresDTOOutAgence
    {
       
        public string Marque { get; set; }
        public string Modele { get; set; }
        public int IdAgence { get; set; }
        public virtual AgenceLocations IdAgenceNavigation { get; set; }

    }
    public partial class VoituresDTOOutLocation
    {

        public string Marque { get; set; }
        public string Modele { get; set; }
        public int IdAgence { get; set; }
       
      
      public virtual ICollection<Location> Locations { get; set; }
    }
}
