using ExerciceApi2.Data.Dtos;
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
            return _context.Ventes.ToList();
        }



        




    }
    }  

