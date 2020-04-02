using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;

namespace LDMS.Core
{
   public static  class ExtensionMethods
    {
        public static void AddRange<T>(this ICollection<T> destination, IEnumerable<T> source)
        {
            if (destination is List<T> list)
            {
                list.AddRange(source);
            }
            else
            {
                foreach (T item in source)
                {
                    destination.Add(item);
                }
            }
        }
        public static Collection<T> ToCollection<T>(this List<T> items)
        {
            Collection<T> collection = new Collection<T>();

            for (int i = 0; i < items.Count; i++)
            {
                collection.Add(items[i]);
            }

            return collection;
        }
        public static Collection<T> ToCollection<T>(this IEnumerable<T> items)
        {
            Collection<T> collection = new Collection<T>();

            for (int i = 0; i < items.Count(); i++)
            {
                collection.Add(items.ElementAt(i));
            }

            return collection;
        }
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
