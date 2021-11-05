﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace personnes
{
    class Personnes
    {  
        // Attributs
        private string nom;
        private string prenom;
        private int age;
        private string adresse;


        //constructeurs 
        public Personnes()
        {

        }

        public Personnes (string nvNom, string nvPrenom, int nvAge, string nvAdresse)
        {
            this.nom = nvNom;
            this.prenom = nvPrenom;
            this.age = nvAge;
            this.adresse = nvAdresse;
        }
        
        public Personnes(string nom, string prenom)
        {
            this.nom = nom;
            this.prenom = prenom;
        }


        //accesseurs

        public string GetNom()
        {
            return this.nom;
        }

        public void SetNom( string nvNom)
        {
            this.nom = nvNom;
        }
        public string GetPrenom()
        {
            return this.prenom;
        }
        public void SetPrenom(string nvPrenom)
        {
            this.prenom = nvPrenom;

        }
        //ToString
        public override string ToString()
        {
            return "nom : " + this.nom + " prenom : " + this.prenom + " age : " + this.age + " adresse : " + this.adresse;
        }
    
    }
}
