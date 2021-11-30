using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace ExerciceTableLiees.Data.Models
{
    public partial class Automobile
    {
        [Key]
        public int IdAuto { get; set; }
        public int IdProprio { get; set; }
        public string Marque { get; set; }
        public string Modele { get; set; }
        public DateTime AnneeConstruction { get; set; }
        public Proprietaire Conducteur { get; set; }
    }
}
