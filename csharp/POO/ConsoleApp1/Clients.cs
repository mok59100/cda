using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Clients
    {

        //attribut
        public string Cin { get; set; }
        public string Nom { get; set; }
        public string Prenom { get; set; }
        public int Tel { get; set; }



        public Clients()
        {
           

        }
        public Clients(string cin, string nom, int prenom, int tel)
        {

        this.Cin = cin;
        this.Nom = nom;
        this.Prenom = prenom;
        this.Tel = tel;

        }
        public Clients(string cin, string nom, int prenom)
        {

        this.Cin = cin;
        this.Nom = nom;
        this.Prenom = prenom;
       
        }
        public string afficher(Comptes c1)
        {
            
            return "\n************************"+
                   "\n Cin : " + this.Cin +
                   "\n Nom : " + this.Nom +
                   "\n Prenom : " + this.Prenom +
                   "\n Tel : " + this.Tel;


        }
        public string afficher(Comptes c2)
        {

            return "\n************************"+
                   "\n Cin : " + this.Cin +
                   "\n Nom : " + this.Nom +
                   "\n Prenom : " + this.Prenom +
                   "\n Tel : " + this.Tel;

         
        }
    }
}
