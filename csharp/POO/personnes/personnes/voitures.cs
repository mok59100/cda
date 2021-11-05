using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace personnes
{
    class Voitures
    {
        // Attributs
        private string marque;
        private string modele;
        private int anneeconstruction;
        private string energie;



        //constructeurs 
        public Voitures()
        {

        }

        public Voitures(string nvMarque, string nvModele, int nvAnneeconstruction, string nvEnergie)
        {
            this.marque = nvMarque;
            this.modele = nvModele;
            this.anneeconstruction = nvAnneeconstruction;
            this.energie = nvEnergie;
        }

        public Voitures(string marque, string modele)
        {
            this.marque = marque;
            this.modele = modele;
        }

        //accesseurs

        public string GetMarque()
        {
            return this.marque;
        }

        public void SetMarque(string nvMarque)
        {
            this.marque = nvMarque;
        }
        public string GetModele()
        {
            return this.modele;
        }
        public void SetModele(string nvModele)
        {
            this.modele = nvModele;

        }
        //ToString
        public override string ToString()
        {
            return "marque : " + this.marque + " modele : " + this.modele + " anneeconstruction : " + this.anneeconstruction + " energie : " + this.energie;
        }
    }
}
