using System;
using System.Collections.Generic;

#nullable disable

namespace test3.Data.Models
{
    public partial class Location
    {
        public int IdClient { get; set; }
        public int IdVoiture { get; set; }
        public DateTime? DateDeLocation { get; set; }
        public int? KilometrageSorti { get; set; }

        public virtual Client IdClientNavigation { get; set; }
        public virtual Voiture IdVoitureNavigation { get; set; }
    }
}
