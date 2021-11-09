using System;
using System.Collections.Generic;

namespace Employes
{
    class Program
    {
        static void Main(string[] args)
        {
            Employe d1 = new Employe("Durand", "michel",new DateTime (2008,11,30), "directeur",49000,"developpement");
            Employe d2 = new Employe("Dupond", "christophe", new DateTime(2007, 01, 01), "developpeur", 29200, "communication");
            Employe d3 = new Employe("Depaix", "pierre", new DateTime(2018, 02, 10), "commercial", 33900, "strategie");
            Employe d4 = new Employe("Deval", "sebastien", new DateTime(2012, 12, 03), "technicien", 23500, "technique");
            Employe d5 = new Employe("Verde", "marc", new DateTime(1990, 01, 30), "poseur", 18700, "technique");
            Console.WriteLine(d1);

            double salaireAnnuel = d1.Prime();
             Console.WriteLine(salaireAnnuel);
            if (DateTime.Now.Month == 11 && DateTime.Now.Day ==30) 
            {
                Console.WriteLine("la prime sera bien versé");

            }
            else
            {
                Console.WriteLine("la prime sera versé bientot ");
            }

            List<Employe> ListeEmploye = new List<Employe>()

            {
                d1,
                d2,
                d3,
                d4,
                d5,

            };
            ListeEmploye.Sort();
            Console.WriteLine();
            foreach (Employe ListeE in ListeEmploye)
                Console.WriteLine(ListeE);
        }


    }



        }
        

    
