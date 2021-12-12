using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VillageGreen.Data.Models;

namespace VillageGreen.Data.Services
{
    class TVAService
    {
        private readonly VGContext _context;

        public TVAService(VGContext context)
        {
            _context = context;
        }

        public void AddTVA(TVA obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.TVA.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteTVA(TVA obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.TVA.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<TVA> GetAllTVAs()
        {
            return _context.TVA.ToList();
        }

        public TVA GetTVAById(int id)
        {
            return _context.TVA.FirstOrDefault(obj => obj.IdTva == id);
        }

        public void UpdateTVA(TVA obj)
        {
            _context.SaveChanges();
        }


    }
}
