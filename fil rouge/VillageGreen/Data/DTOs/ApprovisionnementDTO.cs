﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VillageGreen.Data.DTOs
{
    public class ApprovisionnementDTOIn
    {
        public int? IdProduit { get; set; }
        public int? IdFournisseur { get; set; }
        public string RefFournisseur { get; set; }
    }

    public class ApprovisionnementDTOOut
    {
        public int IdLigneApprovisionnement { get; set; }
        public int? IdProduit { get; set; }
        public string LibelleProduit { get; set; }
        public string RefProduit { get; set; }
        public int? IdFournisseur { get; set; }
        public string NomFournisseur { get; set; }
        public string RefFournisseur { get; set; }
    }
}
