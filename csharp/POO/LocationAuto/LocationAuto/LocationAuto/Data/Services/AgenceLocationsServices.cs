using LocationAuto.Data.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace LocationAuto.Data.Services
{
    public class AgenceLocationsServices
    {

       private readonly locationautoContext _context;

       public AgenceLocationsServices(locationautoContext context)
        {
            _context = context;
        }

        public void AddAgenceLocations(AgenceLocations obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.AgenceLocations.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteAgenceLocations(AgenceLocations obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.AgenceLocations.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<AgenceLocations> GetAllAgenceLocations()
        {
            return _context.AgenceLocations.ToList();
        }

        public AgenceLocations GetAgenceLocationsById(int id)
        {
            return _context.AgenceLocations.FirstOrDefault(obj => obj.IdAgence == id);
        }

        public void UpdateAgenceLocations(AgenceLocations obj)
        {
            _context.SaveChanges();
        }


    }
}
