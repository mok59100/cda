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

        public IEnumerable<Automobile> GetAllAutomobile()
        {
            var liste = (from c1 in _context.Proprietaires
                         join v1 in _context.Automobiles
                         on c1.IdProprio equals v1.IdProprio
                         select new Automobile    
                         {
                             IdProprio = v1.IdProprio,
                             Marque = v1.Marque,
                             Modele = v1.Modele,
                             AnneeConstruction = v1.AnneeConstruction,
                             Conducteur = c1

                         }).ToList();

            return liste;
        }

        public Automobile GetAutomobileById(int id)
        {
            var liste = (from c1 in _context.Proprietaires
                         join v1 in _context.Automobiles
                         on c1.IdProprio equals v1.IdProprio
                         select new Automobile
                         {
                             IdProprio = v1.IdProprio,
                             Marque = v1.Marque,
                             Modele = v1.Modele,
                             AnneeConstruction = v1.AnneeConstruction,
                             Conducteur = c1

                         
                         }).FirstOrDefault(p => p.IdProprio == id);

            return liste;
        }

    public void UpdateAutomobile(Automobile obj)
        {

            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            var entite = new Automobile()

            {
                IdProprio = obj.IdProprio,


                IdAuto = obj.IdAuto,
                Marque = obj.Marque,
                Modele = obj.Modele,
                AnneeConstruction = obj.AnneeConstruction,
                Conducteur = obj.Conducteur

            };

            _context.Update(obj);
            _context.SaveChanges();
        }


    }
}
