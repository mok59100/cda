using LocationAuto.Data.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace LocationAuto.Data.Services
{
    public class LocationServices
    {

        private readonly locationautoContext _context;

        public LocationServices(locationautoContext context)
        {
            _context = context;
        }

        public void AddLocation(Location obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Locations.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteLocation(Location obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Locations.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<Location> GetAllLocation()
        {
            return _context.Locations.Include("VoitureNavigation").Include("ClientNavigation").ToList();
        }

        public Location GetLocationById(int id)
        {
            return _context.Locations.Include("VoitureNavigation").Include("ClientNavigation").FirstOrDefault(obj => obj.IdLocation == id);
        }

        public void UpdateLocation(Location obj)
        {
            _context.SaveChanges();
        }


    }
}
