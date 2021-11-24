using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceAPI.Data.Models
{
    public class Abonnes
    {
        [Key]
        public int IdAbonne { get; set; }
        public string numero_matricule { get; set; }
        public string nom { get; set; }
        public string adresse { get; set; }
        public int telephone { get; set; }
        public DateTime date_d_adhesion { get; set; }
        public DateTime date_naissance { get; set; }
        public string categ_professionnel { get; set; }
    }
}
