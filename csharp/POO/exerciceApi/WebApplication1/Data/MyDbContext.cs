using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ExerciceAPI.Data.Models;

namespace ExerciceAPI.Data

{
    public class MyDbContext:DbContext
    {
        public DbSet<Abonnes> Abonnes { get; set; }
        public MyDbContext(DbContextOptions<MyDbContext> options) : base (options)
        {

        }
    }
}
