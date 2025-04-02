namespace baitaplonchuyende.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CMT")]
    public partial class CMT
    {
        [Key]
        public int Macmt { get; set; }

        [Column("CMT")]
        [Required]
        public string CMT1 { get; set; }

        public int? ID { get; set; }

        public int? Mabai { get; set; }

        [StringLength(50)]
        public string Ngaycmt { get; set; }

        public virtual AccUser AccUser { get; set; }

        public virtual BaiDang BaiDang { get; set; }
    }
}
