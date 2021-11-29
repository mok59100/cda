using System;
using System.Collections.Generic;

#nullable disable

namespace ExerciceTableLiees.Data.Models
{
    public partial class Automobile
    {
        public int IdAuto { get; set; }
        public int IdProprio { get; set; }
        public string Marque { get; set; }
        public string Modele { get; set; }
        public DateTime AnneeConstruction { get; set; }
    }
}
