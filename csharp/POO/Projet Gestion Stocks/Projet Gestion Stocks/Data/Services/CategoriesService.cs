using Projet_Gestion_Stocks.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projet_Gestion_Stocks.Data.Services
{
    public class CategoriesService
    {

        private readonly MyDbContext _context;

        public CategoriesService(MyDbContext context)
        {
            _context = context;
        }

        public void AddCategories(Categories obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Categories.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteCategories(Categories obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Categories.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<Categories> GetAllCategories()
        {
            return _context.Categories.ToList();
        }

        public Categories GetCategoriesById(int id)
        {
            return _context.Categories.FirstOrDefault(obj => obj.IdCategorie == id);
        }

        public void UpdateCategories(Categories obj)
        {
            _context.SaveChanges();
        }


    }
}