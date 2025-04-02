namespace baitaplonchuyende.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("chudeviet")]
    public partial class chudeviet
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public chudeviet()
        {
            BaiDang = new HashSet<BaiDang>();
        }

        [Key]
        public int Macd { get; set; }

        [StringLength(50)]
        public string Tencd { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaiDang> BaiDang { get; set; }
    }
}
