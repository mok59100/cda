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
        public Clients(string Cin, string Nom, int Prenom, int tel)
        {

        this.Cin = nvCin;
        this.Nom = nvNom;
        this.Prenom = nvPrenom;
        this.Tel = nvTel;

        }
        public Clients(string Cin, string Nom, int Prenom)
        {

        this.Cin = nvCin;
        this.Nom = nvNom;
        this.Prenom = nvPrenom;
       
        }
        public string afficher(Compte c1)
        {
            
            return "\n************************"+
                   "\n Cin : " + this.Cin +
                   "\n Nom : " + this.Nom +
                   "\n Prenom : " + this.Prenom +
                   "\n Tel : " + this.Tel;


        }
        public string afficher()
        {

            return "\n************************"+
                   "\n Cin : " + this.Cin +
                   "\n Nom : " + this.Nom +
                   "\n Prenom : " + this.Prenom +
                   "\n Tel : " + this.Tel;

         
        }
    }
}
