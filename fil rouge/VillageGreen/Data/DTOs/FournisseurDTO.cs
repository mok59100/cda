﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VillageGreen.Data.DTOs
{
    public class FournisseurDTOIn
    {
        public string NomFournisseur { get; set; }
    }
    public class FournisseurDTOOut
    {
        public int IdFournisseur { get; set; }
        public string NomFournisseur { get; set; }
    }
}
