using ExerciceTableLiees.Data.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceTableLiees.Data.Services
{
    public class ProprietairesServices
    {

        private readonly garagesContext _context;

        public ProprietairesServices(garagesContext context)
        {
            _context = context;
        }

        public void AddProprietaire(Proprietaire obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Proprietaires.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteProprietaire(Proprietaire obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.Proprietaires.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<Proprietaire> GetAllProprietaire()
        {
            //var liste = (from v1 in _context.Automobiles
            //             join c1 in _context.Proprietaires
            //             on v1.IdProprio equals c1.IdProprio
            //             select new Proprietaire
            //             {
            //                 IdProprio = c1.IdProprio,
            //                 Nom = c1.Nom,
            //                 Prenom = c1.Prenom,
            //                 Adresse = c1.Adresse,
            //                 Auto = c1.Auto,

            //             }).ToList();
            var liste = _context.Proprietaires.Include("Auto").ToList();

            return liste;
        }
        public Proprietaire GetProprietaireById(int id)

        {
                var liste = (from c1 in _context.Proprietaires
                             join v1 in _context.Automobiles
                             on c1.IdProprio equals v1.IdProprio
                             select new Proprietaire
                             {
                                 IdProprio = c1.IdProprio,
                                 Nom = c1.Nom,
                                 Prenom = c1.Prenom,
                                 Adresse = c1.Adresse,
                                 Auto = c1.Auto


                             }).FirstOrDefault(p => p.IdProprio == id);

            return liste;
        }

        public void UpdateProprietaire(Proprietaire obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            var entite = new Proprietaire()

            {
                IdProprio = obj.IdProprio,

                
                Nom = obj.Nom,
                Prenom = obj.Prenom,
                Adresse = obj.Adresse


            };

            _context.Update(obj);
            _context.SaveChanges();

        }
          }
}
