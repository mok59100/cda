using LocationAuto.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LocationAuto.Data
{
    public partial class LocationDTO
    {
      
   
        public DateTime DateDeLocation { get; set; }
        public int KilometrageSorti { get; set; }
    }
    public partial class LocationDTOOut
    {
       
    
        public int IdClient { get; set; }
        public int IdVoiture { get; set; }
        public DateTime DateDeLocation { get; set; }
       public int KilometrageSorti { get; set; }
     }
    public partial class LocationDTOOutVoiture
    {
         public int IdVoiture { get; set; }
        public DateTime DateDeLocation { get; set; }
        public int KilometrageSorti { get; set; }

        public virtual VoituresDTOIn VoitureNavigation { get; set; }
    }
    public partial class LocationDTOOutClient
    {
       

        public int IdClient { get; set; }
        public DateTime DateDeLocation { get; set; }
        public int KilometrageSorti { get; set; }
        public virtual ClientsDTOIn ClientNavigation { get; set; }
    }
    public partial class LocationDTOOutVoitureClient
    {
        public int IdVoiture { get; set; }
        public int IdClient { get; set; }
        public DateTime DateDeLocation { get; set; }
        public int KilometrageSorti { get; set; }
        public virtual ClientsDTOIn ClientNavigation { get; set; }
        public virtual VoituresDTOIn VoitureNavigation { get; set; }
    }
}
