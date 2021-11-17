using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercices
{
    class Spheres:Cercles

    {
        public Spheres(double diametre): base(diametre)
        {
        }

        public double Volume()
        {

            return 4 / 3 *(base.Aire()) ;

        }

        public void AfficherSpheres()
        {
            Console.WriteLine(" volume :" + this.Volume());

        }



    }
}
