using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employes
{
    class Agences
    {
        public string Nom { get; set; }
        public string Adresse { get; set; }
        public int CodePostale { get; set; }
        public string Ville { get; set; }

        public bool Restaurant { get; set; }


        public Agences(string nom, string adresse, int codePostale, string ville)
        {
            this.Nom = nom;
            this.Adresse = adresse;
            this.CodePostale = codePostale;
            this.Ville = ville;


        }

        public string ModeRestauration()
        {
            if (Restaurant)
            {
                return "L'agence a un restaurant";
            }
            else
            {
                return "Le salarié bénéficie de Tickets Resto";
            }

        }


    }
}