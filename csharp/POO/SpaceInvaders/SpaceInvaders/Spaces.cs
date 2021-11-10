using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SpaceInvaders
{
    class Spaces
    {
        public int NbLignes { get; set; }
        public int NbColonnes { get; set; }
        public char[,] Grille { get; set; }


        public Spaces(int nbLignes, int nbColonnes)
        {
            this.NbLignes = nbLignes;
            this.NbColonnes = nbColonnes;
            this.creerGrille();


        }
        private void creerGrille()
        {
            Grille = new char[NbLignes, NbColonnes];
            Grille[0, 0] = ' ';

            for (int i = 0; i < 4; i++)
            {
                for (int j = 0; j < 10; j++)
                {
                    Console.WriteLine(' ' + NbLignes + ' ' + NbColonnes);
                }
            }
        }
    }
}
        

