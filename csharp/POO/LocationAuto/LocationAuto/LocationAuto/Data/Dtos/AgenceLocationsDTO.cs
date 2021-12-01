using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LocationAuto.Data
{
    //public class AgenceLocationsDTO
    //{  // les colonnes de la table sans les id
    //    public int IdAgence { get; set; }
    //    public string NomGerant { get; set; }
    //    public string Adresse { get; set; }
    //    public int? NumeroTelephone { get; set; }
    //}
    public partial class AgenceLocationsDTOin()
    {
       
        // les données de la table sans les id et sans les clés etrangères
        public string NomGerant { get; set; }
        public string Adresse { get; set; }
        public int? NumeroTelephone { get; set; }
    }

    public partial class AgenceLocationsDTOOut
    {

        // les données de la table sans les id et sans les clés etrangères
        public int IdAgence { get; set; }
        public string NomGerant { get; set; }
        public string Adresse { get; set; }
        public int? NumeroTelephone { get; set; }
    }

}
