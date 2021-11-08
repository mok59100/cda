using System;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
       
        Clients c1 = new Clients("EE111222", "Salim", "Omar", "06111111");
        Clients c2 = new Clients("EE333444", "Karimi", "samir", "0622222");
        Comptes b1 = new Comptes(0, c1);
        Comptes b2 = new Comptes(0, c2);
            // j'ai lie un compte avec un clients
            Console.WriteLine(b1.Afficher());
            Console.WriteLine(b2.Afficher());


            b1.Crediter(5000);
            Console.WriteLine(b1.Afficher());
            b1.Debiter(1000);
            Console.WriteLine(b1.Afficher());

            b2.Crediter(3000, b1);
            Console.WriteLine(b2.Afficher());
            Console.WriteLine(b1.Afficher());
            b2.Debiter(1000, b1);
            Console.WriteLine(b2.Afficher());
            Console.WriteLine(b1.Afficher());
        }
    }
}
