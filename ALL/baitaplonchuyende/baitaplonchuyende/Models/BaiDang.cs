namespace baitaplonchuyende.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BaiDang")]
    public partial class BaiDang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BaiDang()
        {
            CMT = new HashSet<CMT>();
        }

        [Key]
        public int Mabai { get; set; }

        public int? Matg { get; set; }

        public int? Macd { get; set; }

        public string Tieude { get; set; }

        public string Mota { get; set; }

        [StringLength(50)]
        public string Ngaycapnhat { get; set; }

        public int? Mand { get; set; }

        public string Anh { get; set; }

        public virtual chudeviet chudeviet { get; set; }

        public virtual ND ND { get; set; }

        public virtual Tacgia Tacgia { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CMT> CMT { get; set; }
    }
}
