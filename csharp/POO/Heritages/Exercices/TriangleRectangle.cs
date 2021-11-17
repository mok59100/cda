using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercices
{
    class TriangleRectangle
    {

        public double Base { get; set; }
        public double Hauteur { get; set; }

        public TriangleRectangle()
        {
        }

        public TriangleRectangle(double @base, double hauteur)
        {
            this.Base = @base;
            this.Hauteur = hauteur;
        }

        public virtual double Perimetre()
        {

            return this.Hauteur + this.Base + Math.Sqrt(this.Hauteur * this.Hauteur + this.Base * this.Base);

        }
        public double Aire()
        {

            return (this.Hauteur * this.Base) / 2;
        }

        public void AfficherTriangle()
        {
            Console.WriteLine(" base : " + this.Base + "  Hauteur : " + this.Hauteur + " Aire : " + this.Aire() + " Perimetre : " + this.Perimetre());


        }
    }

}