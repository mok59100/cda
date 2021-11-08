using System;

namespace Comptes
{
    class Program
    {
        static void Main(string[] args)
        {
       
        Comptes c1 = new Clients("EE111222", "Salim", "Omar", 06111111);
        Comptes c2 = new Clients("EE333444", "Karimi", "samir", 0622222);

            Console.WriteLine(Comptes c1.ToString());
            Console.WriteLine(Comptes c2.ToString());
            Comptes c1 = new clients(+5000);
            
            //Car.Rouler(15000);
            //Console.WriteLine(Car.ToString());
        }
    }
}
