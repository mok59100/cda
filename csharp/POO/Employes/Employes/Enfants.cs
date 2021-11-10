using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employes
{
    class Enfants
    {
        public Enfants()
        {
        }

        public string Prenom { get; set; }
        public DateTime DateNaissance { get; set; }

        public Enfants(string prenom, DateTime dateNaissance)
        {
            this.Prenom = prenom;
            this.DateNaissance = dateNaissance;
        }

        public int Age()
        {
            if (DateTime.Now.Month > this.DateNaissance.Month)// si le mois de la date actuelle est superieur au mois de naissance de l'enfants rajoute 1 annees
            {
                return (DateTime.Now.Year - this.DateNaissance.Year) + 1;
            }
            //sinon calcul d'age normale
            return (DateTime.Now.Year - this.DateNaissance.Year);

            
        }
    }

}