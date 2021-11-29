using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace ExerciceTableLiees.Data.Models
{
    public partial class garagesContext : DbContext
    {
        public garagesContext()
        {
        }

        public garagesContext(DbContextOptions<garagesContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Automobile> Automobiles { get; set; }
        public virtual DbSet<Proprietaire> Proprietaires { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseMySQL("Name=def");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Automobile>(entity =>
            {
                entity.HasKey(e => e.IdAuto)
                    .HasName("PRIMARY");

                entity.ToTable("automobiles");

                entity.HasIndex(e => e.IdProprio, "IdProprio");

                entity.Property(e => e.IdAuto).HasColumnType("int(11)");

                entity.Property(e => e.AnneeConstruction).HasColumnType("date");

                entity.Property(e => e.IdProprio).HasColumnType("int(11)");

                entity.Property(e => e.Marque)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Modele)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<Proprietaire>(entity =>
            {
                entity.HasKey(e => e.IdProprio)
                    .HasName("PRIMARY");

                entity.ToTable("proprietaires");

                entity.Property(e => e.IdProprio).HasColumnType("int(11)");

                entity.Property(e => e.Adresse)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("adresse");

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
