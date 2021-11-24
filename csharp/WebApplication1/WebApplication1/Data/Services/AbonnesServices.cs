using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Data.Models;

namespace WebApplication1.Data.Services
{
    public class AbonnesServices
    {
        private readonly MyDbContext _context;
        public AbonnesServices(MyDbContext context)
        {
            _context = context;
        }

        //public IEnumerable<Abonnes> GetAllAbonne()
        public IEnumerable<Abonnes> GetAllAbonne()
        {
            
            return _context.Abonnes.ToList();
        }
    }
}
