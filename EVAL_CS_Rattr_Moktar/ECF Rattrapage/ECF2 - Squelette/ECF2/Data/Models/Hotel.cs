using System;
using System.Collections.Generic;

#nullable disable

namespace ECF2.Data.Models
{
    public partial class Hotel
    {
        public Hotel()
        {
            Chambres = new HashSet<Chambre>();
        }

        public int IdHotel { get; set; }
        public string NomHotel { get; set; }
        public int CategorieHotel { get; set; }
        public string AdresseHotel { get; set; }
        public string VilleHotel { get; set; }

        public virtual ICollection<Chambre> Chambres { get; set; }
    }
}
