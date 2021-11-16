using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Calculatrices
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        char[] op = new char[4] { '/', '+', '-', '*' };
        double valeur1, valeur2;
        char operateur;
        public MainWindow()
        {
            InitializeComponent();
        }




        private void BtnNumerique_Click(object sender, RoutedEventArgs e)
        {
            Affichage.Text += ((Button)sender).Content;
            AffichagePartiel.Text += ((Button)sender).Content;
        }

        //private void Affichage_TextChanged(object sender, TextChangedEventArgs e)
        //{

        //}

        public void BtnOperateur_Click(object sender, RoutedEventArgs e)
        {
            bool autorisation = true;
            // on recherche s'il y a deja un operateur
            foreach (char unchar in Affichage.Text)
            {
                if (Array.Exists(op, x => x == unchar))
                {
                    autorisation = false;
                }
            }

            if (Affichage.Text != "" && autorisation)
            {
                // pas d'operateur
                // on prepare le calcul
                valeur1 = double.Parse(AffichagePartiel.Text);
                //on met à jour l'afficheur
                operateur = ((string)((Button)sender).Content)[0];  // on recupere l'element declencheur, on le cast en bouton pour recuperer le content.
                //on le cast en string pour recupere le 1er caratere
                Affichage.Text += operateur;
                // on vide l'afficheur partiel
                AffichagePartiel.Text = "";
            }




        }

        public double calculSimple(double valeur1, char oper, double valeur2)
        {
            double resultat = 0;
            switch (oper)

            {
                case '+':
                    resultat = valeur1 + valeur2;
                    break;
                case '-':
                    resultat = valeur1 - valeur2;
                    break;
                case '*':
                    resultat = valeur1 * valeur2;
                    break;
                case '/':
                    resultat = valeur1 / valeur2;
                    break;
                default:
                    break;
            }
            return resultat;
        }

        private void btnCE_Click(object sender, RoutedEventArgs e)
        {//on efface le resultat de la calculatrice pour proceder à un nouveau calcul
            Affichage.Text = "";
          AffichagePartiel.Text = "";
        }

        private void BtnEgal_Click(object sender, RoutedEventArgs e)
        {
            double resultat;
            // recuperer valeur 2
            valeur2 = double.Parse(AffichagePartiel.Text);
            // on lance le calcul
            resultat = calculSimple(valeur1, operateur, valeur2);
            // on gere les afficheurs
            Affichage.Text += "=" + resultat;
            AffichagePartiel.Text = resultat+"";
           

        }









        //private void BtnNumerique_Click(object sender, RoutedEventArgs e)
        //{
        //    BtnNumerique_Click.text += ((Button)sender).text;
        //}

    }
}
