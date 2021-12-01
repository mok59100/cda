using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace LocationAuto.Data.Models
{
    public partial class locationautoContext : DbContext
    {
        public locationautoContext()
        {
        }

        public locationautoContext(DbContextOptions<locationautoContext> options)
            : base(options)
        {
        }

        public virtual DbSet<AgenceLocations> AgenceLocations { get; set; }
        public virtual DbSet<Clients> Clients { get; set; }
        public virtual DbSet<Location> Locations { get; set; }
        public virtual DbSet<Voitures> Voitures { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseMySQL("Name=MaConnection");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AgenceLocations>(entity =>
            {
                entity.HasKey(e => e.IdAgence)
                    .HasName("PRIMARY");

                entity.ToTable("agencelocations");

                entity.Property(e => e.IdAgence).HasColumnType("int(11)");

                entity.Property(e => e.Adresse).HasMaxLength(50);

                entity.Property(e => e.NomGerant).HasMaxLength(50);

                entity.Property(e => e.NumeroTelephone).HasColumnType("int(11)");
            });

            modelBuilder.Entity<Clients>(entity =>
            {
                entity.HasKey(e => e.IdClient)
                    .HasName("PRIMARY");

                entity.ToTable("clients");

                entity.Property(e => e.IdClient).HasColumnType("int(11)");

                entity.Property(e => e.Adresse).HasMaxLength(50);

                entity.Property(e => e.Nom).HasMaxLength(50);

                entity.Property(e => e.NumTelephone).HasColumnType("int(11)");

                entity.Property(e => e.Prenom).HasMaxLength(50);
            });

            modelBuilder.Entity<Location>(entity =>
            {
                entity.HasKey(e => new { e.IdClient, e.IdVoiture })
                    .HasName("PRIMARY");

                entity.ToTable("location");

                entity.HasIndex(e => e.IdVoiture, "IdVoiture");

                entity.Property(e => e.IdClient).HasColumnType("int(11)");

                entity.Property(e => e.IdVoiture).HasColumnType("int(11)");

                entity.Property(e => e.DateDeLocation).HasColumnType("date");

                entity.Property(e => e.KilometrageSorti).HasColumnType("int(11)");

                entity.HasOne(d => d.IdClientNavigation)
                    .WithMany(p => p.Locations)
                    .HasForeignKey(d => d.IdClient)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("location_ibfk_1");

                entity.HasOne(d => d.IdVoitureNavigation)
                    .WithMany(p => p.Locations)
                    .HasForeignKey(d => d.IdVoiture)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("location_ibfk_2");
            });

            modelBuilder.Entity<Voitures>(entity =>
            {
                entity.HasKey(e => e.IdVoiture)
                    .HasName("PRIMARY");

                entity.ToTable("voitures");

                entity.HasIndex(e => e.IdAgence, "IdAgence");

                entity.Property(e => e.IdVoiture).HasColumnType("int(11)");

                entity.Property(e => e.IdAgence).HasColumnType("int(11)");

                entity.Property(e => e.Marque).HasMaxLength(50);

                entity.Property(e => e.Modele).HasMaxLength(50);

                entity.HasOne(d => d.IdAgenceNavigation)
                    .WithMany(p => p.Voitures)
                    .HasForeignKey(d => d.IdAgence)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("voitures_ibfk_1");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
