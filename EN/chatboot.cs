//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EN
{
    using System;
    using System.Collections.Generic;
    
    public partial class chatboot
    {
        public int id { get; set; }
        public string message { get; set; }
        public string teacher_id { get; set; }
        public string student_id { get; set; }
        public Nullable<int> from_teacher { get; set; }
        public Nullable<int> from_student { get; set; }
        public Nullable<System.DateTime> added_date { get; set; }
    }
}
