using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace ExerciceTableLiees.Data.Models
{
    public partial class Proprietaire
    {
        [Key]
        public int IdProprio { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Adresse { get; set; }

        public ICollection<Automobile> Auto { get; set; }
}

}
