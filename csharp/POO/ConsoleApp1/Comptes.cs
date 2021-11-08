using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Comptes
    {
        public double Solde { get; private set; }
        public int Code { get; set; }
        public Clients Client { get; set; }

        private static int numCompte= 1;
       

      
        //constructeur
        public Comptes()
        {

        }

       
        public Comptes(double solde, Clients client)
        {
            this.Solde =solde;
            this.Code = numCompte ++;
            this.Client = client;
       

        }
       //ajout montant au compte
       public void Crediter(double montant )
        {
            Solde = Solde + montant;
        }
        public void Crediter(double montant, Comptes c)
        {
            this.Crediter(montant);
            c.Debiter(montant);

        }
        public void Debiter(double montant)
        {
            Solde = Solde - montant;
        }
        public void Debiter(double montant, Comptes c)
        {
            this.Debiter(montant);
            c.Crediter(montant);

        }
        //ToString

        public string Afficher()
            {
                return "\n************************" +
                    "\n Numéro de Compte : " + this.Code +
                    "\n Solde de compte : " + this.Solde +
                    "\n Propriétaire du compte : \n" + this.Client.Afficher();
                              
                   
            }
        
    }
}
