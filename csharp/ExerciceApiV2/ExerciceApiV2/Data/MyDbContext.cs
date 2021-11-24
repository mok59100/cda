using ExerciceApiV2.Data.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceApiV2.Data
{
    public class MyDbContext : DbContext
    {
        public DbSet<Abonne> Abonnes { get; set; }
        public MyDbContext(DbContextOptions<MyDbContext> options) : base(options)
        {

        }
    }
}
