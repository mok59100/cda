using ExerciceApi2.Data.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceApi2.Data
{
    public class MyDbContext:DbContext
    {
        public DbSet<Clients> Clients { get; set; }
        public DbSet<Ventes> Ventes { get; set; }
        public MyDbContext(DbContextOptions<MyDbContext> options) : base(options)
        {

        }
    }
}
