
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace LibraryManagementSystem.EntityFramework
{

using System;
    using System.Collections.Generic;
    
public partial class UserPrivileges
{

    public int UserPrivilege { get; set; }

    public int StaffID { get; set; }

    public int Configuration { get; set; }

    public int Staff { get; set; }

    public int Student { get; set; }

    public int Book { get; set; }

    public int IssueBook { get; set; }

    public int ReturnBook { get; set; }

    public int Report { get; set; }

    public int Gsm { get; set; }

    public int Email { get; set; }



    public virtual Staffs Staffs { get; set; }

}

}
