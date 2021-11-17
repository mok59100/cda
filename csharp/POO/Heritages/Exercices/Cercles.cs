using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercices
{
    class Cercles
    {
        public double Diametre { get; set; }

        public Cercles()
        {
        }

        public Cercles(double diametre)
        {
            this.Diametre = diametre;

        }


        public double Perimetre()
            {

                return Math.PI * this.Diametre;

            }


        public double Aire()
        {

            return  Math.PI * (this.Diametre * this.Diametre) ;
        }


        public void AfficherCercles()
        {
            Console.WriteLine(" Diametre : " + this.Diametre + " Aire : " + this.Aire() + "Perimetre :" + this.Perimetre());


        }









    }
}
