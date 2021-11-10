using System;
using System.Collections.Generic;

namespace Employes
{
    class Program
    {
        static void Main(string[] args)
        {
            Agences a1 = new Agences("AEMLille", "6 rue de lille ", 59000, "lille",true);
            Agences a2 = new Agences("AEMMetz", "359 boulevard de strasbourg ", 57900, "metz",false);
            Agences a3 = new Agences("AEMParis", "56 rue anatole France  ", 75000, "paris",true);
            Agences a4 = new Agences("AEMCaen", "65 boulevard d'alsace ", 59000, "caen",false);

            Employe d1 = new Employe("Durand", "michel",new DateTime (2008,11,30), "directeur",49000,"developpement",new List<Enfants>() { },a1);
            Employe d2 = new Employe("Dupond", "christophe", new DateTime(2007, 01, 01), "developpeur", 29200, "communication",new List<Enfants>() { },a1);
            Employe d3 = new Employe("Depaix", "pierre", new DateTime(2021, 02, 10), "commercial", 33900, "strategie", new List<Enfants>() { }, a2);
            Employe d4 = new Employe("Deval", "sebastien", new DateTime(2012, 12, 03), "technicien", 23500, "technique", new List<Enfants>() { }, a3);
            Employe d5 = new Employe("Verde", "marc", new DateTime(1990, 01, 30), "poseur", 18700, "technique", new List<Enfants>() { }, a4);

            Enfants e1 = new Enfants("mattieu", new DateTime(2017, 01, 03));
            Enfants e2 = new Enfants("noemie", new DateTime(2018, 12, 21));
            Enfants e3 = new Enfants("leo", new DateTime(2015, 07, 15));
            Enfants e4 = new Enfants("karim", new DateTime(2012, 11, 12));
            Enfants e5 = new Enfants("sophie", new DateTime(2019, 03, 04));

            Console.WriteLine(d1);

            double salaireAnnuel = d1.Prime();
            Console.WriteLine(salaireAnnuel);
            if (DateTime.Now.Month == 11 && DateTime.Now.Day == 30)
            {
                Console.WriteLine("la prime sera bien versé");

            }
            else
            {
                Console.WriteLine("la prime sera versé bientot ");
            }

            List<Employe> listeEmploye = new List<Employe>()

            {
                d1,
                d2 };
            listeEmploye.Add(d3);
            listeEmploye.Add(d4);
            listeEmploye.Add(d5);


            Console.WriteLine("Nombre d'employer dans la societe : " + listeEmploye.Count);

            Console.WriteLine("\n Avant TRI\n");
            foreach (var item in listeEmploye)
            {
                Console.WriteLine(item);
            }
            listeEmploye.Sort(Employe.ClassementService);

            Console.WriteLine("\n APRES TRI\n");
            foreach (var item in listeEmploye)
            {
                Console.WriteLine(item);
            }
            double masseSalarialeAnnuelle = 0;
            foreach (var item in listeEmploye)
            {
                masseSalarialeAnnuelle += item.MasseSalariale();
            }
            Console.WriteLine("La masse salariale annuelle est de " + masseSalarialeAnnuelle);

            List<Enfants> ListeEnfants = new List<Enfants>()
            {
                e1,
                e2
            };
            ListeEnfants.Add(e3);
            ListeEnfants.Add(e4);
            ListeEnfants.Add(e5);
            foreach (var item in ListeEnfants)
            {
                Console.WriteLine(item.Age());
            }


        }
        


    }



        }
        

    
