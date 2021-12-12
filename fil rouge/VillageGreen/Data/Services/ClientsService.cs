using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VillageGreen.Data.Models;

namespace VillageGreen.Data.Services
{
    class ClientsService
    {
        private readonly VGContext _context;

        public ClientsService(VGContext context)
        {
            _context = context;
        }

        public void AddClient(Client obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Clients.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteClient(Client obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Clients.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<Client> GetAllClients()
        {
            return _context.Clients.ToList();
        }

        public Client GetClientById(int id)
        {
            return _context.Clients.FirstOrDefault(obj => obj.IdUser == id);
        }

        public void UpdateClient(Client obj)
        {
            _context.SaveChanges();
        }


    }
}
