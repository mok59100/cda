using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace voitures
{
    class Voitures
    {
        //attribut 
        public string Couleur { get; set; }
        public string Marque { get; set; }
        public string Modele { get; set; }
        public int Nbdekilometres { get; set; }

        public string Motorisation { get; set; }

        public Voitures(string couleur, string marque, string modele, int nbdekilometres, string motorisation)
        {
            Couleur = couleur;
            Marque = marque;
            Modele = modele;
            Nbdekilometres = nbdekilometres;
            Motorisation = motorisation;
        }

        public Voitures(string marque, string modele, int nbdekilometres)
        {
            Marque = marque;
            Modele = modele;
            Nbdekilometres = nbdekilometres;
        }

        public Voitures(string couleur, string marque, string modele)
        {
            Couleur = couleur;
            Marque = marque;
            Modele = modele;
        }

        public override string ToString()
        {
            return "couleur : " + Couleur + " marque : " + Marque + " modele : " + Modele + " nbdekilometres : " +Nbdekilometres + " motorisation : " + Motorisation;
        }
        public void Rouler(int nbdekilometres)
        {
            if (nbdekilometres > 0) 
            {
                Nbdekilometres += nbdekilometres;
            }
        }
    }
}
