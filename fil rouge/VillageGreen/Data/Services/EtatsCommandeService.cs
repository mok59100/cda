﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VillageGreen.Data.Models;

namespace VillageGreen.Data.Services
{
    class EtatsCommandeService
    {
        private readonly VGContext _context;

        public EtatsCommandeService(VGContext context)
        {
            _context = context;
        }

        public void AddEtatCommande(EtatCommande obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.EtatsCommande.Add(obj);
            _context.SaveChanges();
        }

        public void DeleteEtatCommande(EtatCommande obj)
        {
            if (obj == null)
            {
                throw new ArgumentNullException(nameof(obj));
            }
            _context.EtatsCommande.Remove(obj);
            _context.SaveChanges();
        }

        public IEnumerable<EtatCommande> GetAllEtatsCommande()
        {
            return _context.EtatsCommande.ToList();
        }

        public EtatCommande GetEtatCommandeById(int id)
        {
            return _context.EtatsCommande.FirstOrDefault(obj => obj.IdEtatCommande == id);
        }

        public void UpdateEtatCommande(EtatCommande obj)
        {
            _context.SaveChanges();
        }


    }
}
