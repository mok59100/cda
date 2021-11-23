using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace ApiPersonnes.Data.Models
{
    public partial class Personne
    {
        [Key]
        public int IdPersonne { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string Adresse { get; set; }
        public int CodePostale { get; set; }
    }
}
