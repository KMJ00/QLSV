namespace baitaplonchuyende.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AccUser")]
    public partial class AccUser
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AccUser()
        {
            CMT = new HashSet<CMT>();
        }

        public int ID { get; set; }

        public int? Macv { get; set; }

        public int? MaTag { get; set; }

        [StringLength(10)]
        public string GT { get; set; }

        [StringLength(10)]
        public string SDT { get; set; }

        [StringLength(20)]
        public string Name { get; set; }

        [StringLength(20)]
        public string Pass { get; set; }

        public virtual CV CV { get; set; }

        public virtual TAG TAG { get; set; }
        public string Anh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CMT> CMT { get; set; }
    }
}
