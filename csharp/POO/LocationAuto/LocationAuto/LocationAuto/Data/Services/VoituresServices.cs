using LocationAuto.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace LocationAuto.Data.Service
{
    public class VoituresServices
    {

        private readonly locationautoContext _context;

        public VoituresServices(locationautoContext context)
        {
           _context = context;
        }

        public void AddVoitures(Voitures obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Voitures.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteVoitures(Voitures obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Voitures.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<Voitures> GetAllVoitures()
        {
            return _context.Voitures.ToList();
        }

        public Voitures GetVoituresById(int id)
        {
            return _context.Voitures.FirstOrDefault(obj => obj.IdVoiture == id);
        }

        public void UpdateVoitures(Voitures obj)
        {
            _context.SaveChanges();
        }


    }
}
