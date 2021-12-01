using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LocationAuto.Data
{
    public class LocationDTO
    {
        public int IdLocation { get; set; }
        public int IdClient { get; set; }
        public int IdVoiture { get; set; }
        public DateTime DateDeLocation { get; set; }
        public int KilometrageSorti { get; set; }
    }
    public class LocationDTOIn
    {
      
    public DateTime DateDeLocation { get; set; }
    public int KilometrageSorti { get; set; }
}
}
