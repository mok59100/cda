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
using System.Windows.Shapes;

namespace Interfaces
{
    /// <summary>
    /// Logique d'interaction pour Fenetre1.xaml
    /// </summary>
    public partial class Fenetre1 : Window
    {
        public Fenetre1(string mode)
        {
            InitializeComponent();
            this.BtnAction.Content = mode;
        }

        private void dgProduits_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        

        private void btnAction_Click(object sender, RoutedEventArgs e)
        {
            /* Enregistrer un produit avec les données dans le formulaire*/
            int idProduit = int.Parse(tbxIdProduit.Text);
            string libelleProduit = tbxLibelleProduit.Text;
            //2 libbele a terminer
            /* Créer un produit */

            /* Appeler la methode d'ajout de produit dans la liste */

        }
    }
}
