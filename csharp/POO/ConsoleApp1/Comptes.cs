using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Comptes
    {
        private int Solde;
        private double Code ;
        private string Client ;
        private int NumCompte;
        public string Client
        {
            get { return Client; }
        }
        public double Solde
        {
            get { return Solde; }
        }

      
        //constructeur
        public Comptes()
        {

        }

        private Comptes(double solde, int code, string client, int numCompte)
        {
            this.Solde =solde;
            this.Code = code;
            this.Client = client;
            this.NumCompte = numCompte;

        }
       //ajout montant au compte
       public void Crediter(double Montant )
        {
            Solde = Solde + Montant;
        }
        public void Debiter(double Montant)
        {
            Solde = Solde - Montant;

            //ToString
       
        public string Resumer()
        {
         string Resumer = "Le solde du compte de " + this.Client + " est de " + this.Solde;
         return Resumer;
        }
        }
    }
}
