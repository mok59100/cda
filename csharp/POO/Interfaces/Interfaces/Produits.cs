

namespace Interfaces
{
    public class Produits
    {
        public int IdProduit { get; set; }
        public string LibelleProduit { get; set; }
        public string Categories { get; set; }
        public string Rayons { get; set; }

        public Produits(int idProduit, string libelleProduit, string categories, string rayons)
        {
            IdProduit = idProduit;
            LibelleProduit = libelleProduit;
            Categories = categories;
            Rayons = rayons;
        }
    }
}
