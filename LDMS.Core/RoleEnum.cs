using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.Core
{
    public enum UserRole : int
    {        
        All = 1000,
        User = 1,
        UserAdmin = 2,
        GeneralManger = 3,
        TeamManager = 4,
        AdminDepartment = 5,
        AdminHR = 6,
        SuperAdmin = 7
    }
}
