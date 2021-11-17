using System;

namespace Exercices
{
    class Program
    {
        static void Main(string[] args)
        {
            Rectangles r = new Rectangles(2, 8);
            r.Afficher();
            Parrallelepipedes p = new Parrallelepipedes(3, 5, 3);
            p.Afficher();
            Cercles c = new Cercles(12);
            c.AfficherCercles();
            Spheres s = new Spheres(12);
            s.AfficherSpheres();
            Pyramides py = new Pyramides(12, 5, 8);
            py.AfficherPyramides();
            TriangleRectangle t = new TriangleRectangle(2, 6);
            t.AfficherTriangle();
        }
    }
}
