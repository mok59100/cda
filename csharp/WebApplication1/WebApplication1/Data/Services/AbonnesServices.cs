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

         public IEnumerable<Abonnes> GetAllAbonnes()
        {
            
            return _context.Abonnes.ToList();
        }

        public Abonnes GetAbonneById(int id)
        {
            return _context.Abonnes.FirstOrDefault(p => p.IdAbonne == id);
        }
        public void UpdateAbonne(Abonnes p)
        {
            //nothing
            //on va mettre à jour le context dans le controller par mapping et passer 
            //les modifs à la base
        }
    }
}
