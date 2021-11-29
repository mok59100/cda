using ExerciceTableLiees.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceTableLiees.Data.Services
{
    public class AutomobilesServices
    {

        private readonly garagesContext _context;

        public AutomobilesServices(garagesContext context)
        {
            _context = context;
        }

        public void AddAutomobile(Automobile obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Automobiles.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteAutomobile(Automobile obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Automobiles.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<Automobile> GetAllAutomobiles()
        {
            return _context.Automobiles.ToList();
        }

        public Automobile GetAutomobileById(int id)
        {
            return _context.Automobiles.FirstOrDefault(obj => obj.IdAuto == id);
        }

        public void UpdateAutomobile(Automobile obj)
        {
            _context.SaveChanges();
        }


    }
}
