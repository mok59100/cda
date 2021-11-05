using System;

namespace personnes
{
    class Program
    {
        static void Main(string[] args)
        {
            Personnes p = new Personnes();
            Personnes toto = new Personnes("DUPOND", "Toto", 20, "Ici");
            // p.nom="TRUC" si attribut public
            p.SetNom("TRUC"); // si attribut privé

            /* si public */
            //Console.WriteLine("nom de p : " + p.nom);
            //Console.WriteLine("info de toto : " + toto.nom + " " + toto.prenom +" " + toto);

            /* si privé */
            Console.WriteLine("nom de p : " + p.GetNom());
            Console.WriteLine(p.ToString());

            Console.WriteLine("info de toto : " + toto.GetNom() + " " + toto.GetPrenom() + " " + toto.ToString());


            Personnes p1 = new Personnes("MACHIN", "Bidule");
            Console.WriteLine("p1 " + p1.ToString());





            Voitures v = new Voitures();
            Voitures car = new Voitures("RENAULT", "laguna", 2005, "Diesel");
            // p.nom="TRUC" si attribut public
            v.SetMarque(""); // si attribut privé

            /* si public */
            //Console.WriteLine("nom de p : " + p.nom);
            //Console.WriteLine("info de toto : " + toto.nom + " " + toto.prenom +" " + toto);

            /* si privé */
            Console.WriteLine("nom de v : " + v.GetMarque());
            Console.WriteLine(v.ToString());

            Console.WriteLine("info devoiture : " + car.GetMarque() + " " + car.GetModele() + " " + car.ToString());


            Voitures car2 = new Voitures("ferrari", "monza");
            Console.WriteLine("p1 " + car2.ToString());
        }
    }
}
