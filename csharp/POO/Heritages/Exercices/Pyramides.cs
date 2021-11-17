using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercices
{
    class Pyramides:TriangleRectangle
    {
        public double Profondeur { get; set; }

        public Pyramides()
        {
        }

        public Pyramides(double profondeur, double @base, double hauteur) : base (@base, hauteur)
        {
            this.Profondeur = profondeur;
        }

        public override double Perimetre()
        {

            return 2 * base.Perimetre() + (3 * this.Profondeur);

        }

        public double Volume()
        {
            return (base.Aire() * this.Profondeur);
        }

        public void AfficherPyramides()
        {
            Console.WriteLine(" Perimetre : " + this.Perimetre() + " volume : " + this.Volume());

        }



    }
}
