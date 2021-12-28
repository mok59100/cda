using System;

namespace ECF.Data.Dtos
{


	public partial class MusiciensDTOIn
    {  
        public int IdGroupe { get; set; }
        public int IdMusicien { get; set; }
        public string Instrument { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        
        
    }
    public partial class MusiciensDTOOut
    {
       
        public int IdMusicien { get; set; }
        public string Instrument { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }


    }
    public partial class MusiciensDTOOutAvecGroupe
    {
        public int IdGroupe { get; set; }
        public int IdMusicien { get; set; }
        public string Instrument { get; set; }
        public string Nom { get; set; }
        public string NomDuGroupe { get; set; }
        public string Prenom { get; set; }


    }



}