using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VillageGreen.Data.DTOs
{
    public class EtatCommandeDTOIn
    {
        public string LibelleEtatCommande { get; set; }
    }

    public class EtatCommandeDTOOut
    {
        public int IdEtatCommande { get; set; }
        public string LibelleEtatCommande { get; set; }
    }
}
