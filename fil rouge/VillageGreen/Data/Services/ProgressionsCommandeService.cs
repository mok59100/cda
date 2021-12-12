using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VillageGreen.Data.Models;

namespace VillageGreen.Data.Services
{
    class ProgressionsCommandeService
    {
        private readonly VGContext _context;

        public ProgressionsCommandeService(VGContext context)
        {
            _context = context;
        }

        public void AddProgressionCommande(ProgressionCommande obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.ProgressionsCommande.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteProgressionCommande(ProgressionCommande obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.ProgressionsCommande.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<ProgressionCommande> GetAllProgressionsCommande()
        {
            return _context.ProgressionsCommande.ToList();
        }

        public ProgressionCommande GetProgressionCommandeById(int id)
        {
            return _context.ProgressionsCommande.FirstOrDefault(obj => obj.IdProgressionCommande == id);
        }

        public void UpdateProgressionCommande(ProgressionCommande obj)
        {
            _context.SaveChanges();
        }


    }
}
