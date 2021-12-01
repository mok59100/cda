using LocationAuto.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace LocationAuto.Data.Services
{
    public class ClientsServices
    {

        private readonly locationautoContext _context;

        public ClientsServices(locationautoContext context)
        {
            _context = context;
        }

        public void AddClients(Clients obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Clients.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteClients(Clients obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Clients.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<Clients> GetAllClients()
        {
            return _context.Clients.ToList();
        }

        public Clients GetClientsById(int id)
        {
            return _context.Clients.FirstOrDefault(obj => obj.IdClient == id);
        }

        public void UpdateClients(Clients obj)
        {
            _context.SaveChanges();
        }


    }

}
