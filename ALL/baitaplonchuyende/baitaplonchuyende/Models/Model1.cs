using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace baitaplonchuyende.Models
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<AccUser> AccUser { get; set; }
        public virtual DbSet<BaiDang> BaiDang { get; set; }
        public virtual DbSet<CMT> CMT { get; set; }
        public virtual DbSet<CV> CV { get; set; }
        public virtual DbSet<chudeviet> chudeviet { get; set; }
        public virtual DbSet<ND> ND { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Tacgia> Tacgia { get; set; }
        public virtual DbSet<TAG> TAG { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AccUser>()
                .Property(e => e.SDT)
                .IsFixedLength();

            modelBuilder.Entity<AccUser>()
                .Property(e => e.Pass)
                .IsFixedLength();

            modelBuilder.Entity<CMT>()
                .Property(e => e.CMT1)
                .IsUnicode(false);
        }
    }
}
