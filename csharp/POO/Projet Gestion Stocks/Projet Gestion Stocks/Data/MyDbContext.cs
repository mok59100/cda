using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Projet_Gestion_Stocks.Data.Models;

#nullable disable

namespace Projet_Gestion_Stocks.Data
{
    public partial class MyDbContext : DbContext
    {
        public MyDbContext()
        {
        }

        public MyDbContext(DbContextOptions<MyDbContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Articles> Articles { get; set; }
        public virtual DbSet<Categories> Categories { get; set; }
        public virtual DbSet<TypesProduits> TypesProduits { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {

                optionsBuilder.UseMySQL("server=localhost;user=root;database=gestionstocks;ssl mode=none");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Articles>(entity =>
            {
                entity.HasKey(e => e.IdArticle)
                    .HasName("PRIMARY");

                entity.ToTable("articles");

                entity.HasIndex(e => e.IdCategorie, "FK_Articles_Categories");

                entity.Property(e => e.IdArticle).HasColumnType("int(11)");

                entity.Property(e => e.IdCategorie).HasColumnType("int(11)");

                entity.Property(e => e.LibelleArticle).HasMaxLength(100);

                entity.Property(e => e.QuantiteStockee).HasColumnType("int(11)");

                entity.HasOne(d => d.IdCategorieNavigation)
                    .WithMany(p => p.Articles)
                    .HasForeignKey(d => d.IdCategorie)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Articles_Categories");
            });

            modelBuilder.Entity<Categories>(entity =>
            {
                entity.HasKey(e => e.IdCategorie)
                    .HasName("PRIMARY");

                entity.ToTable("categories");

                entity.HasIndex(e => e.IdTypeProduit, "FK_Categories_TypesProduits");

                entity.Property(e => e.IdCategorie).HasColumnType("int(11)");

                entity.Property(e => e.IdTypeProduit).HasColumnType("int(11)");

                entity.Property(e => e.LibelleCategorie).HasMaxLength(100);

                entity.HasOne(d => d.IdTypeProduitNavigation)
                    .WithMany(p => p.Categories)
                    .HasForeignKey(d => d.IdTypeProduit)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Categories_TypesProduits");
            });

            modelBuilder.Entity<TypesProduits>(entity =>
            {
                entity.HasKey(e => e.IdTypeProduit)
                    .HasName("PRIMARY");

                entity.ToTable("TypesProduits");

                entity.Property(e => e.IdTypeProduit).HasColumnType("int(11)");

                entity.Property(e => e.LibelleTypeProduit).HasMaxLength(100);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
