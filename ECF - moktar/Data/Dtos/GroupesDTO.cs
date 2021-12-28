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
        public GroupesDTOOutavecMusiciens()
        {
            ListeMusiciens = new HashSet<MusiciensDTOOut>();
        }
        public int IdGroupe { get; set; }
        public string Logo { get; set; }
        public int NombreDeFollowers { get; set; }
        public string NomDuGroupe { get; set; }

        public virtual ICollection<MusiciensDTOOut> ListeMusiciens { get; set; }

    }
    
     
 }


