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
        public DateTime DateEmbauche { get; set; }
        public string Fonction { get; set; }
        public double Salaire { get; set; }
       public string Service { get; set; }


        public Employe(string nom, string prenom, DateTime dateEmbauche, string fonction, double salaire, string service )
        {
            this.Nom = nom;
            this.Prenom = prenom;
            this.DateEmbauche = dateEmbauche;
            this.Fonction = fonction;
            this.Salaire = salaire;
            this.Service = service;
        }
        public int Anciennete()
        {
            //DateTime dateJour = DateTime.Today;
            //DateTime dateEmb = this.DateEmbauche;
            //TimeSpan nbJour=dateJour-dateEmb;
            //return (int) nbJour.TotalDays/365;
            return (int) (DateTime.Today - this.DateEmbauche).TotalDays / 365;
        }

        public double PrimeSalaireAnnuel()
        {
            return (this.Salaire * 5) / 100;
        }

        public double PrimeAnciennete()
        {
            return this.Salaire * (this.Anciennete() * 2) / 100;
        }

        public double Prime()
        {
            return this.PrimeSalaireAnnuel() + this.PrimeAnciennete()
;        }
        public override string ToString()
        {
            return " nom : " + this.Nom + " prenom : " + this.Prenom + " date embauche : "+ this.DateEmbauche + " fonction : "+ this.Fonction + " salaire: "+ this.Salaire + " service : "+ this.Service;
        }
        //public override int CompareTo (Employe e1, Employe e2)
        //{ if (e1.Nom  e2.Nom)

        //}
        public override int CompareTo(Employe e2, Employe e1)
        {
            return e1.CompareTo((e2 as Employe).Nom);
        }

        private int CompareTo(string nom)
        {
            throw new NotImplementedException();
        }
    }
 
}
