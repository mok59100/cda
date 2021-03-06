using ExerciceApi2.Data.Dtos;
using ExerciceApi2.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceApi2.Data.Profiles
{
    public class ClientsService
    {
        private readonly MyDbContext _context;
        public ClientsService(MyDbContext context)
        {
            _context = context;
        }

        public IEnumerable<Clients> GetAllClients()
        {

            var liste = (from c1 in _context.Clients
                         join v1 in _context.Ventes
                         on c1.IdClient equals v1.IdClient
                         select new Clients
                         {
                             IdClient = c1.IdClient,
                             NomClient =c1.NomClient,
                             VilleClient=c1.VilleClient,





                         }).ToList();

            return liste;
        }
        public Clients GetClientsById(int id)
        {
            var ent = (from c1 in _context.Clients
                       join v1 in _context.Ventes
                       on c1.IdClient equals v1.IdClient
                       select new Clients
                       {
                           IdVente = c1.IdVente,
                           NomClient = c1.NomClient,
                           VilleClient = c1.VilleClient,
                           ent2=c1


                       }).FirstOrDefault(p => p.IdVente == id);

            return ent;
        }


        public void UpdateClients(Clients p)
         
        {
            if (p == null)
            {
                throw new ArgumentNullException(nameof(p));
            }
            var entite = new Clients()

            {
                IdVente = p.IdVente,

                IdClient = p.IdClient,
                 NomClient = p.NomClient,
              VilleClient= p.VilleClient,




    };
            _context.Update(p);
            _context.SaveChanges();
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
        public void AddClients(Ventes p)
        {
            if (p == null)
            {
                throw new ArgumentNullException(nameof(p));
            }
            
            _context.Clients.Add(p);
            _context.SaveChanges();
        }














    }
    }
