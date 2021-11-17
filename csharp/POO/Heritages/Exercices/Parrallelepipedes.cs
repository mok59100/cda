using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercices
{
    class Parrallelepipedes : Rectangles
    {
        public double Hauteur { get; set; }

        public Parrallelepipedes()
        {

        }

        public Parrallelepipedes(double hauteur, double longueur, double largeur) : base(longueur, largeur)
        {
            this.Hauteur = hauteur;
        }

        public override double Perimetre()
        {

            return 2 * base.Perimetre() + (4 * this.Hauteur);

        }
        public double Volume()
        {
            return (base.Aire() * this.Hauteur);
        }

        public override void Afficher()
        {
            Console.WriteLine (" Perimetre : " + this.Perimetre() + " volume : " + this.Volume());

        }
    }
}
