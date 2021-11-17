using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercices
{
    class Rectangles
    {

   
      
       
        

        public double Longueur { get; set; }
        public double Largeur { get; set; }

        public Rectangles()
        {

        }

        public Rectangles(double longueur, double largeur)
        {
            this.Longueur = longueur;
            this.Largeur = largeur;
        }

        public double Perimetre()
        {

         return ( Longueur + Largeur) * 2;

        }
      
      public double Aire()
        {

            return (Longueur * Largeur);
        }

    public bool EstCarre()
        {
            if (Longueur == Largeur)
            {
                return (true);

            }return ( false) ; 
         }

     public void AfficherRectangle()
        {
            Console.WriteLine (" Longueur : " + this.Longueur + "  Largeur : " + this.Largeur + "Aire : " + this.Aire());
            Console.WriteLine( " il s'agit d'un carré " );
            Console.WriteLine(" il ne s'agit pas  d'un carré ");
        }
        
}


}
