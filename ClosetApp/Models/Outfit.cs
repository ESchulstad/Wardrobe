//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ClosetApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Outfit
    {
        public int OutfitID { get; set; }
        public string Name { get; set; }
        public int TopID { get; set; }
        public int BottomID { get; set; }
        public Nullable<int> ShoeID { get; set; }
        public Nullable<int> AccessoryID { get; set; }
    
        public virtual Accessory Accessory { get; set; }
        public virtual Bottom Bottom { get; set; }
        public virtual Sho Sho { get; set; }
        public virtual Top Top { get; set; }
    }
}
