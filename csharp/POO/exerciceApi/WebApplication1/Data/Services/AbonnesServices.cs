using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ExerciceAPI.Data.Models;

namespace ExerciceAPI.Data.Services
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
            _context.SaveChanges();

            //nothing
            //on va mettre à jour le context dans le controller par mapping et passer 
            //les modifs à la base
        }
        public void DeleteAbonne(Abonnes p)
        {
            //si l'objet personne est null, on renvoi une exception
            if (p == null)
            {
                throw new ArgumentNullException(nameof(p));
            }
            // on met à jour le context
            _context.Abonnes.Remove(p);
            _context.SaveChanges();
        }

        public void AddAbonnes(Abonnes p)
        {
            if (p == null)
            {
                throw new ArgumentNullException(nameof(p));
            }
            _context.Abonnes.Add(p);
            _context.SaveChanges();
        }

    }
}
