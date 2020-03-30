using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LDMS.Core
{
   public static  class ExtensionMethods
    {
        public static T ToEnum<T>(this string value, T defaultValue = default(T)) where T : struct
        {
            if (string.IsNullOrEmpty(value))
            {
                return defaultValue;
            }

            return Enum.TryParse<T>(value, true, out T result) ? result : defaultValue;
        }
        public static IEnumerable<UserApplicationUser> WithoutPasswords(this IEnumerable<UserApplicationUser> users)
        {
            return users.Select(x => x.WithoutPassword());
        }

        public static UserApplicationUser WithoutPassword(this UserApplicationUser user)
        {
            user.Password = null;
            return user;
        }
    }
}
