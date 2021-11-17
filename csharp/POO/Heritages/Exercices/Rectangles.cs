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

        public virtual double Perimetre()
        {

         return (this.Longueur + this.Largeur) * 2;

        }
      
      public double Aire()
        {

            return this.Longueur * this.Largeur;
        }

    public bool EstCarre()
        {
            if (this.Longueur == this.Largeur)
            {
                return (true);

            }return ( false) ; 
         }

     public virtual void  Afficher()
        {
            Console.WriteLine (" Longueur : " + this.Longueur + "  Largeur : " + this.Largeur + " Aire : " + this.Aire());

            if (this.EstCarre())
            {
                Console.WriteLine(" il s'agit d'un carré ");
            }   
            else
              Console.WriteLine(" il ne s'agit pas  d'un carré ");
        }
        
}


}
