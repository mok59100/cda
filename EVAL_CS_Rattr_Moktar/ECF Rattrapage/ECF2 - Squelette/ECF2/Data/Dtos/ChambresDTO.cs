using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECF2.Data.Dtos
{
    public partial class ChambresDTOIn
    {
         public int CapaciteChambre { get; set; }
        public int IdChambre { get; set; }
        public int IdHotel { get; set; }
         public int NumChambre { get; set; }
        public int TypeChambre { get; set; }
    }

    public partial class ChambresDTOOut
  
    {
        public int CapaciteChambre { get; set; }
        public int IdChambre { get; set; }
        public int NumChambre { get; set; }
        public int TypeChambre { get; set; }



    }

    public partial class ChambresDTOOutAvecHotel
    {
        public int CapaciteChambre { get; set; }
        public int IdChambre { get; set; }
        public int IdHotel { get; set; }
          
        public int NumChambre { get; set; }
        public int TypeChambre { get; set; }
        public string VilleHotel { get; set; }
        public string NomHotel { get; set; }



}
}
