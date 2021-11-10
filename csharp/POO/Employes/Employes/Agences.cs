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


        public Agences(string nom, string adresse, int codePostale, string ville, bool restaurant)
        {
            this.Nom = nom;
            this.Adresse = adresse;
            this.CodePostale = codePostale;
            this.Ville = ville;
            this.Restaurant = restaurant;

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

        public override string ToString()
        {
            string reponse =

                        "****_INFORMATION_SUR_L'AGENCE_****" +
                       "\n|Nom                : " + this.Nom +
                       "\n|Adresse       : " + this.Adresse +
                       "\n|Date CodePostale    : " + this.CodePostale +
                       "\n|Ville         : " + this.Ville +
                       "\n|Restauration          : " + this.ModeRestauration();

           
            return reponse;
        }


    }
}