using ECF2.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECF2.Data.Services
{
    class HotelsServices
    {
        private readonly ecf2Context _context;

        public HotelsServices(ecf2Context context)
        {
            _context = context;
        }

        public void AddHotel(Hotel obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Hotels.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteHotel(Hotel obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Hotels.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<Hotel> GetAllHotels()
        {
            return _context.Hotels.ToList();
        }

        public Hotel GetHotelById(int id)
        {
            return _context.Hotels.FirstOrDefault(obj => obj.IdHotel == id);
        }

        public void UpdateHotel(Hotel obj)
        {
            _context.SaveChanges();
        }


    }
}
