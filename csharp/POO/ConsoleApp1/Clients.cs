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
        public string Tel { get; set; }



        public Clients()
        {
           

        }
        public Clients(string cin, string nom, string prenom, string tel)
        {

        this.Cin = cin;
        this.Nom = nom;
        this.Prenom = prenom;
        this.Tel = tel;

        }
        public Clients(string cin, string nom, string prenom)
        {

        this.Cin = cin;
        this.Nom = nom;
        this.Prenom = prenom;
       
        }
        public string Afficher()
        {
            
            return 
                   "\n Cin : " + this.Cin +
                   "\n Nom : " + this.Nom +
                   "\n Prenom : " + this.Prenom +
                   "\n Tel : " + this.Tel;


        }
       
    }
}
