using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;

namespace LDMS.Core
{
    public static class ExtensionMethods
    {
        public static void Set(this HttpResponse Response, string key, string value, int? expireTime)
        {
            CookieOptions option = new CookieOptions();

            if (expireTime.HasValue)
                option.Expires = DateTime.Now.AddMinutes(expireTime.Value);
            else
                option.Expires = DateTime.Now.AddMilliseconds(10);
            Response.Cookies.Append(key, value, option);
        }
        public static void Remove(this HttpResponse Response,  string key)
        {
            Response.Cookies.Delete(key);
        }
        public static string Get(this HttpRequest Request,  string key)
        {
            return Request.Cookies[key];
        }
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
    }
}
