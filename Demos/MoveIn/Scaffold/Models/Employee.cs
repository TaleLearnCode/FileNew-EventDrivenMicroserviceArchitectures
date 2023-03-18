﻿using System;
using System.Collections.Generic;

namespace Scaffold.Models
{
    public partial class Employee
    {
        public int EmployeeId { get; set; }
        public int EmployeeRoleId { get; set; }
        public string FirstName { get; set; } = null!;
        public string LastName { get; set; } = null!;
        public int RowStatusId { get; set; }
    }
}
