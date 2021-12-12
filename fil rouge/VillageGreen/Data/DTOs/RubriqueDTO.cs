using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VillageGreen.Data.DTOs
{
    public class RubriqueDTOIn
    {
        public string LibelleRubrique { get; set; }
        public int IdRubriqueMere { get; set; }
    }


    public class RubriqueDTOOut
    {
        public int IdRubrique { get; set; }
        public string LibelleRubrique { get; set; }
        
    }



    class RubriqueMereDTOOut
    {
        public int IdRubrique { get; set; }
        public string LibelleRubrique { get; set; }
        public string LibelleRubriqueMere { get; set; }
    }
}
