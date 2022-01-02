using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using ECF2.Data.Models;

#nullable disable

namespace ECF2.Data
{
    public partial class ecf2Context : DbContext
    {
        public ecf2Context()
        {
        }

        public ecf2Context(DbContextOptions<ecf2Context> options)
            : base(options)
        {
        }

        public virtual DbSet<Chambre> Chambres { get; set; }
        public virtual DbSet<Hotel> Hotels { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseMySQL("server=localhost;user=root;database=ecf2;port=3308;ssl mode=none");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Chambre>(entity =>
            {
                entity.HasKey(e => e.IdChambre)
                    .HasName("PRIMARY");

                entity.ToTable("chambres");

                entity.HasIndex(e => e.IdHotel, "FK_chambres_hotels");

                entity.Property(e => e.IdChambre)
                    .HasColumnType("int(11)")
                    .HasColumnName("idChambre");

                entity.Property(e => e.CapaciteChambre)
                    .HasColumnType("int(11)")
                    .HasColumnName("capaciteChambre");

                entity.Property(e => e.IdHotel)
                    .HasColumnType("int(11)")
                    .HasColumnName("idHotel");

                entity.Property(e => e.NumChambre)
                    .HasColumnType("int(11)")
                    .HasColumnName("numChambre");

                entity.Property(e => e.TypeChambre)
                    .HasColumnType("int(11)")
                    .HasColumnName("typeChambre");

                entity.HasOne(d => d.IdHotelNavigation)
                    .WithMany(p => p.Chambres)
                    .HasForeignKey(d => d.IdHotel)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_chambres_hotels");
            });

            modelBuilder.Entity<Hotel>(entity =>
            {
                entity.HasKey(e => e.IdHotel)
                    .HasName("PRIMARY");

                entity.ToTable("hotels");

                entity.Property(e => e.IdHotel)
                    .HasColumnType("int(11)")
                    .HasColumnName("idHotel");

                entity.Property(e => e.AdresseHotel)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("adresseHotel");

                entity.Property(e => e.CategorieHotel)
                    .HasColumnType("int(11)")
                    .HasColumnName("categorieHotel");

                entity.Property(e => e.NomHotel)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("nomHotel");

                entity.Property(e => e.VilleHotel)
                    .IsRequired()
                    .HasMaxLength(50)
                    .HasColumnName("villeHotel");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
