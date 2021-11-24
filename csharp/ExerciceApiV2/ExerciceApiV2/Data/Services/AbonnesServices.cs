using ExerciceApiV2.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceApiV2.Data.Services
{
    public class AbonnesServices
    {
        private readonly MyDbContext _context;
        public AbonnesServices(MyDbContext context)
        {
            _context = context;
        }
        public void Addabonnes(Abonne p)
        {
            if (p == null)
            {
                throw new ArgumentNullException(nameof(p));
            }
            _context.Abonnes.Add(p);
            _context.SaveChanges();
        }
        public void Deleteabonne(Abonne p)
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
        public IEnumerable<Abonne> GetAllAbonne()
        {
            return _context.Abonnes.ToList();
        }
        public Abonne GetAbonneById(int id)
        {
            return _context.Abonnes.FirstOrDefault(p => p.IdAbonne == id);
        }
        public void UpdateAbonne(Abonne p)
        {
            //nothing
            //on va mettre à jour le context dans le controller par mapping et passer 
            //les modifs à la base
        }
    }
}
