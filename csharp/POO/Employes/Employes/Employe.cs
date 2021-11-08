using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employes
{
    class Employe
    {
        // Attributs
        public string Nom { get; set; } 
        public string Prenom { get; set; }
        public int DateEmbauche { get; set; }
        public string Fonction { get; set; }
        public string Salaire { get; set; }
       public string Service { get; set; }


        public Personnes(string nvNom, string nvPrenom, int nvAge, string nvAdresse)
        {
            this.nom = nvNom;
            this.prenom = nvPrenom;
            this.age = nvAge;
            this.adresse = nvAdresse;
        }
    }
}
