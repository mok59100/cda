using System;
using System.Collections.Generic;

#nullable disable

namespace ExerciceTableLiees.Data.Models
{
    public partial class Proprietaire
    {
        public int IdProprio { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Adresse { get; set; }
    }
}
