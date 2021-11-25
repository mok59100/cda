using ExerciceApi2.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceApi2.Data.Services
{
    public class VentesService
    {

        private readonly MyDbContext _context;
        public VentesService(MyDbContext context)
        {
            _context = context;
        }

        public IEnumerable<Ventes> GetAllVentes()
        {

            var liste = (from c1 in _context.Clients
                         join v1 in _context.Ventes
                         on c1.IdClient equals v1.IdClient
                         select new Ventes
                         {
                             IdVente = v1.IdVente,
                             Quantite = v1.Quantite,
                             IdClient = v1.IdClient,
                             
                             Consumer=c1

                         }).ToList();

            return liste;
        }
        public Ventes GetVentesById(int id)
        {
            var liste = (from c1 in _context.Clients
                         join v1 in _context.Ventes
                         on c1.IdClient equals v1.IdClient
                         select new Ventes
                         {
                             IdVente = v1.IdVente,
                             Quantite = v1.Quantite,
                             IdClient = v1.IdClient,
                             Consumer = c1

                         }).FirstOrDefault(p => p.IdVente == id);

            return liste;
        }

        public void UpdateVentes(Ventes p)
        {
           var liste = uptade Ventes   _context.SaveChanges();

            //nothing
            //on va mettre à jour le context dans le controller par mapping et passer 
            //les modifs à la base
        }
        public void DeleteVentes(Ventes p)
        {
            //si l'objet ventes est null, on renvoi une exception
            if (p == null)
            {
                throw new ArgumentNullException(nameof(p));
            }
            // on met à jour le context
            _context.Ventes.Remove(p);
            _context.SaveChanges();
        }
        public void AddVentes(Ventes p)
        {
            if (p == null)
            {
                throw new ArgumentNullException(nameof(p));
            }
            _context.Ventes.Add(p);
            _context.SaveChanges();
        }


    }
}
