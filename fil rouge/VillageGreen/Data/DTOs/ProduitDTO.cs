﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VillageGreen.Data.DTOs
{
    public class ProduitDTOIn
    {
        public string LibelleProduit { get; set; }
        public string Description { get; set; }
        public string RefProduit { get; set; }
        public decimal PrixHorsTaxe { get; set; }
        public string Photo { get; set; }
        public int Stock { get; set; }
        public int IdRubrique { get; set; }
    }

    public class ProduitDTOOut
    {
        public int IdProduit { get; set; }
        public string LibelleProduit { get; set; }
        public string Description { get; set; }
        public string RefProduit { get; set; }
        public decimal PrixHorsTaxe { get; set; }
        public string Photo { get; set; }
        public int Stock { get; set; }
        public int IdRubrique { get; set; }
        public string LibelleRubrique { get; set; }
    }
}