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

        public TriangleRectangle(double base , double hauteur)
        {
            this.Base = @base;
            this.Hauteur = hauteur;
        }
    }
}
