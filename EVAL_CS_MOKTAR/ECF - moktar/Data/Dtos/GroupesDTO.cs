using ECF.Data.Models;
using System;
using System.Collections.Generic;

namespace ECF.Data.Dtos
{


     public partial class GroupesDTOIn
    {
        public string Logo { get; set; }
        public int NombreDeFollowers { get; set; }
        public string NomDuGroupe { get; set; }
        
        
    }
    public partial class GroupesDTOOut
    {
        public int IdGroupe { get; set; }
        public string Logo { get; set; }
        public int NombreDeFollowers { get; set; }
        public string NomDuGroupe { get; set; }


    }
    public partial class GroupesDTOOutavecMusiciens
    {
        public int IdGroupe { get; set; }
        public List <Musicien> musiciens { get; set; }
        public string Logo { get; set; }
        public int NombreDeFollowers { get; set; }
        public string NomDuGroupe { get; set; }


    }
}

