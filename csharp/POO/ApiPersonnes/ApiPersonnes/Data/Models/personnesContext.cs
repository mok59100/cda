using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace ApiPersonnes.Data.Models
{
    public partial class personnesContext : DbContext
    {
        public personnesContext()
        {
        }

        public personnesContext(DbContextOptions<personnesContext> options)
            : base(options)
        {
        }

        public  DbSet<Personne> Personnes { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseMySQL("Name=Default");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Personne>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("personne");

                entity.Property(e => e.Adresse)
                    .IsRequired()
                    .HasMaxLength(100)
                    .HasColumnName("adresse");

                entity.Property(e => e.CodePostale)
                    .HasColumnType("int(11)")
                    .HasColumnName("code postale");

                entity.Property(e => e.Nom)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("nom");

                entity.Property(e => e.Prenom)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("prenom");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
