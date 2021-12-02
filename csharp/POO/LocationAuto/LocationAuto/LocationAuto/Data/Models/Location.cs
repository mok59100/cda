using System;
using System.Collections.Generic;

#nullable disable

namespace LocationAuto.Data.Models
{
    public partial class Location
    {
        public int IdLocation { get; set; }
        public int IdClient { get; set; }
        public int IdVoiture { get; set; }
        public DateTime? DateDeLocation { get; set; }
        public int KilometrageSorti { get; set; }

        public virtual Clients IdClientNavigation { get; set; }
        public virtual Voitures IdVoitureNavigation { get; set; }
        public int Id { get; internal set; }
    }
}
