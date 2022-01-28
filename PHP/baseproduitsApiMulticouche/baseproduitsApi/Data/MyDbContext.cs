using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using baseproduitsApi.Data.Models;

#nullable disable

namespace baseproduitsApi.Data
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

        public virtual DbSet<Categorie> Categories { get; set; }
        public virtual DbSet<Produit> Produits { get; set; }
        public virtual DbSet<Utilisateur> Utilisateurs { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseMySQL("server=localhost;user=root;database=baseproduits;port=3308;ssl mode=none");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Categorie>(entity =>
            {
                entity.HasKey(e => e.IdCategorie)
                    .HasName("PRIMARY");

                entity.ToTable("categories");

                entity.Property(e => e.IdCategorie)
                    .HasColumnType("int(11)")
                    .HasColumnName("idCategorie");

                entity.Property(e => e.LibelleCategorie)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<Produit>(entity =>
            {
                entity.HasKey(e => e.IdProduit)
                    .HasName("PRIMARY");

                entity.ToTable("produits");

                entity.HasIndex(e => e.IdCategorie, "FK_Produit_Categorie");

                entity.Property(e => e.IdProduit)
                    .HasColumnType("int(11)")
                    .HasColumnName("idProduit");

                entity.Property(e => e.DateDePeremption)
                    .HasColumnType("date")
                    .HasColumnName("dateDePeremption");

                entity.Property(e => e.IdCategorie)
                    .HasColumnType("int(11)")
                    .HasColumnName("idCategorie");

                entity.Property(e => e.LibelleProduit)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("libelleProduit");

                entity.Property(e => e.Prix)
                    .HasColumnType("int(11)")
                    .HasColumnName("prix");

                entity.HasOne(d =>d.Categorie)
                    .WithMany(p => p.Produits)
                    .HasForeignKey(d => d.IdCategorie)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Produit_Categorie");
            });

            modelBuilder.Entity<Utilisateur>(entity =>
            {
                entity.HasKey(e => e.IdUtilisateur)
                    .HasName("PRIMARY");

                entity.ToTable("utilisateurs");

                entity.Property(e => e.IdUtilisateur)
                    .HasColumnType("int(11)")
                    .HasColumnName("idUtilisateur");

                entity.Property(e => e.AdresseMail)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("adresseMail");

                entity.Property(e => e.MotDePasse)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("motDePasse");

                entity.Property(e => e.Nom)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("nom");

                entity.Property(e => e.Prenom)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("prenom");

                entity.Property(e => e.Pseudo)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("pseudo");

                entity.Property(e => e.Role)
                    .HasColumnType("int(11)")
                    .HasColumnName("role")
                    .HasComment("2 Admin 1 User");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
