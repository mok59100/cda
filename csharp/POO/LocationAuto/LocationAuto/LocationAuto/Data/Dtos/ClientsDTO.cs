using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LocationAuto.Data
{
    public class ClientsDTO
    {
        public ClientsDTO()
            {
            }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Adresse { get; set; }
        public int NumTelephone { get; set; }
    }
    public class ClientsDTOIn
    {
        public ClientsDTOIn()
        {
        }

        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Adresse { get; set; }
        public int NumTelephone { get; set; }
    }
    public class ClientsDTOOut
    {
        public ClientsDTOOut() 
        {
            Locations = new HashSet<LocationDTOOut>();
        }
        public int IdClient { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Adresse { get; set; }
        public int NumTelephone { get; set; }
        public virtual ICollection<LocationDTOOut> Locations { get; set; }
    }
}
