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
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Ventes>(v1 =>
            {
                v1.ToTable("Ventes");
                v1.Property(e => e.IdVente).HasColumnName("IdVente");
            });
            modelBuilder.Entity<Clients>(c1 =>
            {
                c1.ToTable("Clients");
                c1.Property(e => e.IdVente).HasColumnName("IdVente");
                c1.HasOne(e => e.Consumer).WithOne().HasForeignKey<Ventes>(e => e.IdVente);
            });
        }   }
}
