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
            return _context.Clients.ToList();

        }
        public Clients GetClientsById(int id)
        {
            return _context.Clients.FirstOrDefault(p => p.IdClient == id);
        }

        public void UpdateClients(Clients p)
        {
            _context.SaveChanges();

            //nothing
            //on va mettre à jour le context dans le controller par mapping et passer 
            //les modifs à la base
        }
        public void DeleteClients(Clients p)
            {
                //si l'objet personne est null, on renvoi une exception
                if (p == null)
                {
                    throw new ArgumentNullException(nameof(p));
                }
                // on met à jour le context
                _context.Clients.Remove(p);
                _context.SaveChanges();
            }
        public void AddClients(Clients p)
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
