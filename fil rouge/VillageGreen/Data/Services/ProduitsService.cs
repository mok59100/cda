using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VillageGreen.Data.Models;

namespace VillageGreen.Data.Services
{
    class ProduitsService
    {

        private readonly VGContext _context;

        public ProduitsService(VGContext context)
        {
            _context = context;
        }

        public void Produit(Produit obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Produits.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteProduit(Produit obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Produits.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<Produit> GetAllProduitsService()
        {
            return _context.Produits.ToList();
        }

        public Produit GetProduitById(int id)
        {
            return _context.Produits.FirstOrDefault(obj => obj.IdProduit == id);
        }

        public void UpdateProduit(Produit obj)
        {
            _context.SaveChanges();
        }


    }
}
