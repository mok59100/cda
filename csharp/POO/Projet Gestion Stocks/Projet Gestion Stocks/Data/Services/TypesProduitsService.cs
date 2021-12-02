using Projet_Gestion_Stocks.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projet_Gestion_Stocks.Data.Services
{
    public class TypesProduitsService
    {

        private readonly MyDbContext _context;

        public TypesProduitsService(MyDbContext context)
        {
            _context = context;
        }
        
        public void AddTypesProduits(TypesProduits obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.TypesProduits.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteTypesProduits(TypesProduits obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.TypesProduits.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<TypesProduits> GetAllTypesProduits()
        {
            return _context.TypesProduits.ToList();
        }

        public TypesProduits GetTypesProduitsById(int id)
        {
            return _context.TypesProduits.FirstOrDefault(obj => obj.IdTypeProduit == id);
        }

        public void UpdateTypesProduits(TypesProduits obj)
        {
            _context.SaveChanges();
        }


    }
}
