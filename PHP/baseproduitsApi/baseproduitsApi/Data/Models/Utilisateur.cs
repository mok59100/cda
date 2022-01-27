using System;
using System.Collections.Generic;

#nullable disable

namespace baseproduitsApi.Data.Models
{
    public partial class Utilisateur
    {
        public int IdUtilisateur { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public string MotDePasse { get; set; }
        public string AdresseMail { get; set; }
        public int Role { get; set; }
        public string Pseudo { get; set; }
    }
}
