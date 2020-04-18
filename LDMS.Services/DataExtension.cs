using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LDMS.Services
{
    public static class DataExtension
    {
        public static Task LoopAsync<T>(this IEnumerable<T> list, Func<T, Task> function)
        {
            return Task.WhenAll(list.Select(function));
        }
        public static async Task ForEachAsync<T>(this IEnumerable<T> enumerable, Action<T> action)
        {
            foreach (var item in enumerable)
                await Task.Run(() => { action(item); }).ConfigureAwait(false);
        }
        public static async Task ForEachAsync<T>(this IEnumerable<T> list, Func<T, Task> function)
        {
            foreach (var value in list)
            {
                await function(value);
            }
        }
        public static string SetTextLimit(this string text, int numberChar)
        {
            return SetTextLimit(text, numberChar, true);
        }

        public static string SetTextLimit(this string text, int numberChar, bool IncludeDot)
        {
            string m_Return = string.Empty;
            if (text.Length < numberChar)
            {
                m_Return = text;
            }
            else
            {
                if (IncludeDot)
                {
                    m_Return = string.Format("{0}...", text.Substring(0, numberChar));
                }
                else
                {
                    m_Return = string.Format("{0}", text.Substring(0, numberChar));
                }
            }
            return m_Return;
        }

        public static DateTime ConvertStringToDateTime(this string txt, string strFormat, char SeparateVal)
        {
            DateTime mReturn = DateTime.MinValue;

            int mm = 0;
            int dd = 0;
            int yyyy = 0;

            string[] arrFormat = strFormat.Split(SeparateVal);
            string[] arrValue = txt.Split(SeparateVal);
            for (int i = 0; i < arrFormat.Length; i++)
            {
                string format = arrFormat[i];
                string value = arrValue[i];

                switch (format)
                {
                    case "d":
                    case "dd": dd = INZ(value); break;
                    case "M":
                    case "MM": mm = INZ(value); break;
                    case "y":
                    case "yy":
                    case "yyyy": yyyy = INZ(value); break;
                }
            }

            if (mm != 0 & dd != 0 & yyyy != 0)
            {
                mReturn = new DateTime(yyyy, mm, dd);
            }

            return mReturn;
        }
        public static int SafeInt(string text, int defaultValue)
        {
            if (!IsNullorEmpty(text))
            {
                try
                {
                    return Int32.Parse(text);
                }
                catch (Exception) { }

            }

            return defaultValue;
        }

        public static int SafeInt(object obj, int defaultValue)
        {
            if (obj == null)
            {
                return defaultValue;
            }
            if (obj is int)
            {
                return (int)obj;
            }
            return SafeInt(obj.ToString(), defaultValue);
        }

        public static bool SafeBool(this string text, bool defaultValue)
        {
            if (!IsNullorEmpty(text))
            {
                try
                {
                    return bool.Parse(text);
                }
                catch (Exception) { }

            }

            return defaultValue;
        }

        public static bool? SafeBoolN(this string text, bool? defaultValue)
        {
            if (!IsNullorEmpty(text))
            {
                try
                {
                    return bool.Parse(text);
                }
                catch (Exception) { }

            }

            return defaultValue;
        }

        public static long SafeLong(this string text, long defaultValue)
        {
            if (!IsNullorEmpty(text))
            {
                try
                {
                    return long.Parse(text);
                }
                catch (Exception) { }

            }

            return defaultValue;
        }

        public static decimal SafeDecimal(this string text, decimal defaultValue)
        {
            if (!IsNullorEmpty(text))
            {
                try
                {
                    return decimal.Parse(text);
                }
                catch (Exception) { }

            }

            return defaultValue;
        }

        public static double SafeDouble(this string text, double defaultValue)
        {
            if (!IsNullorEmpty(text))
            {
                try
                {
                    return double.Parse(text);
                }
                catch (Exception) { }

            }

            return defaultValue;
        }

        public static int INZ(this object obj, int defaultValue)
        {
            if (obj == null)
            {
                return defaultValue;
            }
            if (obj is DBNull)
            {
                return defaultValue;
            }
            if (obj is int)
            {
                return (int)obj;
            }
            return SafeInt(obj, defaultValue);
        }

        public static int INZ(this object obj)
        {
            return INZ(obj, int.MinValue);
        }

        public static decimal DNZ(this object obj)
        {
            return DNZ(obj, decimal.MinValue);
        }

        public static decimal DNZ(this object obj, decimal defaultValue)
        {
            if (obj == null)
            {
                return defaultValue;
            }
            if (obj is DBNull)
            {
                return defaultValue;
            }
            if (obj is decimal)
            {
                return (decimal)obj;
            }
            return SafeDecimal(obj.ToString(), defaultValue);
        }

        public static double DoubleNZ(this object obj, double defaultValue)
        {
            if (obj == null)
            {
                return defaultValue;
            }
            if (obj is DBNull)
            {
                return defaultValue;
            }
            if (obj is double)
            {
                return (double)obj;
            }
            return SafeDouble(obj.ToString(), defaultValue);
        }

        public static Guid GNZ(this object obj)
        {
            if (obj == null)
            {
                return Guid.Empty;
            }
            if (obj is DBNull)
            {
                return Guid.Empty;
            }
            if (obj is Guid)
            {
                return (Guid)obj;
            }
            return obj.ToString().ToGuid();
        }

        public static bool BNZ(this object obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (obj is DBNull)
            {
                return false;
            }
            if (obj is bool)
            {
                return (bool)obj;
            }
            return SafeBool(obj.ToString(), false);
        }

        public static bool? BNNZ(this object obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (obj is DBNull)
            {
                return null;
            }
            if (obj is bool)
            {
                return (bool)obj;
            }
            return SafeBoolN(obj.ToString(), null);
        }

        public static DateTime DTNZ(this object obj)
        {
            if (obj == null)
            {
                return DateTime.MinValue;
            }
            if (obj is DBNull)
            {
                return DateTime.MinValue;
            }
            if (obj is DateTime)
            {
                return (DateTime)obj;
            }
            return obj.ToString().StringToDateTime();
        }

        public static string SNZ(this object obj)
        {
            if (obj == null)
            {
                return string.Empty;
            }
            if (obj is DBNull)
            {
                return string.Empty;
            }
            if (obj is string)
            {
                return (string)obj;
            }
            return obj.ToString();
        }

        public static object DBNullable(this int i)
        {
            return DBNullable(i, int.MinValue);
        }

        public static object DBNullable(this int i, int nullvalue)
        {
            if (i == nullvalue)
            {
                return DBNull.Value;
            }
            return i;
        }

        public static object DBNullable(this Guid id)
        {
            if (id == Guid.Empty)
            {
                return DBNull.Value;
            }
            return id;
        }

        public static object DBNullable(this decimal m)
        {
            if (m == decimal.MinValue)
            {
                return DBNull.Value;
            }
            return m;
        }

        public static object DBNullable(this DateTime dt)
        {
            if (dt == DateTime.MinValue)
            {
                return DBNull.Value;
            }
            return dt;
        }

        public static object DBNullable(this object o)
        {
            if (o == null)
            {
                return DBNull.Value;
            }
            return o;
        }

        public static object DBNullable(this bool? b)
        {
            if (b == null)
            {
                return DBNull.Value;
            }
            return b.Value;
        }

        public static object DBNullable(this double d)
        {
            if (d == double.MinValue)
            {
                return DBNull.Value;
            }
            return d;
        }

        public static object DBNullable(this string s)
        {
            if (string.IsNullOrEmpty(s))
            {
                return DBNull.Value;
            }
            return s;
        }

        public static bool IsNullorEmpty(this string text)
        {
            return text == null || text.Trim() == string.Empty;
        }

        public static bool IsDate(this string text)
        {
            if (IsNullorEmpty(text))
                return false;

            try
            {
                DateTime dt = DateTime.Parse(text);
                return true;
            }
            catch (Exception) { }

            return false;
        }


        public static bool IsTime(this string time)
        {
            DateTime newTime;
            return DateTime.TryParse(time, out newTime);
        }

        public static bool IsNumber(this string value)
        {
            int number;
            return int.TryParse(value, out number);
        }
        public static string TimeAgo(this DateTime dateTime)
        {
            var timeSpan = DateTime.Now - dateTime;

            if (timeSpan <= TimeSpan.FromSeconds(60))
                return string.Format("{0} seconds ago", timeSpan.Seconds);

            if (timeSpan <= TimeSpan.FromMinutes(60))
                return timeSpan.Minutes > 1 ? String.Format("about {0} minutes ago", timeSpan.Minutes) : "about a minute ago";

            if (timeSpan <= TimeSpan.FromHours(24))
                return timeSpan.Hours > 1 ? String.Format("about {0} hours ago", timeSpan.Hours) : "about an hour ago";

            if (timeSpan <= TimeSpan.FromDays(30))
                return timeSpan.Days > 1 ? String.Format("about {0} days ago", timeSpan.Days) : "yesterday";

            if (timeSpan <= TimeSpan.FromDays(365))
                return timeSpan.Days > 30 ? String.Format("about {0} months ago", timeSpan.Days / 30) : "about a month ago";

            return timeSpan.Days > 365 ? String.Format("about {0} years ago", timeSpan.Days / 365) : "about a year ago";
        }

        public static DateTime StringToDateTime(this string text, string cultureName)
        {
            try
            {
                CultureInfo culture = new CultureInfo(cultureName);
                return DateTime.Parse(text, culture.DateTimeFormat);
            }
            catch (Exception)
            {
                return DateTime.MinValue;
            }
        }
        public static DateTime StringToDateTime(this string text)
        {
            return text.StringToDateTime("en-US");
        }

        public static bool IsEmptyOrNull<T>(this T _pObj)
        {
            return (_pObj == null) || (_pObj.ToString().Equals(string.Empty));
        }
        public static string ToCamelCase(this string self)
        {
            if (self.Length > 1)
            {
                return char.ToLowerInvariant(self[0]) + self.Substring(1);
            }
            else
            {
                return self.ToLower();
            }
        }
        public static string NullableTrim(this string self)
        {
            if (self == null)
            {
                return string.Empty;
            }
            else
            {
                return self.Trim();
            }
        }
        public static string AppendDelete(this string self)
        {
            return string.Format("{0}_DEL{1}", self, DateTime.Now.ToString("yyyyMMdd-HH:mm:ss"));
        }
        public static string EncodeBase64(this string self)
        {
            byte[] bytes = UTF8Encoding.UTF8.GetBytes(self);
            return System.Convert.ToBase64String(bytes);
        }
        public static string DecodeBase64(this string s)
        {
            byte[] bytes = System.Convert.FromBase64String(s);
            return UTF8Encoding.UTF8.GetString(bytes);
        }
        public static Guid ToGuid(this string self)
        {
            try
            {
                if (Guid.TryParse(self, out Guid newGuid))
                {
                    return newGuid;
                }
                else
                {
                    return Guid.Empty;
                }
            }
            catch
            {
                return Guid.Empty;
            }
        }
        public static int ToInt(this string input, int defaultValue = 0)
        {
            try
            {
                if (string.IsNullOrEmpty(input))
                {
                    return defaultValue;
                }
                input = input.ToString().Replace(",", "");
                if (int.TryParse(input, NumberStyles.AllowDecimalPoint, CultureInfo.InvariantCulture, out int i))
                {
                    return int.Parse(input, NumberStyles.AllowDecimalPoint);
                }
                else
                {
                    return defaultValue;
                }
            }
            catch (Exception)
            {
                return defaultValue;
            }
        }

        // DateTime
        public static DateTime ToDateTime(this string input)
        {
            try
            {
                if (DateTime.TryParse(input, out DateTime dt))
                {
                    return Convert.ToDateTime(input);
                }
                else
                {
                    return DateTime.MinValue;
                }
            }
            catch
            {
                return DateTime.MinValue;
            }
        }
        public static DateTime ToDateTime(this string input, string inputFormat)
        {
            try
            {
                return DateTime.ParseExact(input, inputFormat, System.Globalization.CultureInfo.InvariantCulture);
            }
            catch
            {
                return DateTime.MinValue;
            }
        }

        public static Guid[] SpitStringToGuid(this string input, char[] separator, StringSplitOptions options)
        {
            if (string.IsNullOrEmpty(input))
            {
                return Array.Empty<Guid>();
            }
            else
            {
                return input
              .Split(separator, options)
              .Where(x => Guid.TryParse(x, out _))
              .Select(Guid.Parse).ToArray();
            }
        }

        public static int[] SpitStringToInt(this string input, char[] separator, StringSplitOptions options)
        {
            if (string.IsNullOrEmpty(input) || input == "0")
            {
                return Array.Empty<int>();
            }
            else if (input == "0")
            {
                List<int> intArray = new List<int>
                {
                    0
                };
                return intArray.ToArray();
            }
            else
            {
                return input
              .Split(separator, options)
              .Where(x => int.TryParse(x, out _))
              .Select(int.Parse).ToArray();
            }
        }

        public static Guid[] SpitStringToGuid(this string input, char separator, StringSplitOptions options)
        {
            if (string.IsNullOrEmpty(input))
            {
                return Array.Empty<Guid>();
            }
            else
            {
                return input
              .Split(separator, options)
              .Where(x => Guid.TryParse(x, out _))
              .Select(Guid.Parse).ToArray();
            }
        }

        public static int[] SpitStringToInt(this string input, char separator, StringSplitOptions options)
        {
            if (string.IsNullOrEmpty(input) || input == "0")
            {
                return Array.Empty<int>();
            }
            else if (input == "0")
            {
                List<int> intArray = new List<int>
                {
                    0
                };
                return intArray.ToArray();
            }
            else
            {
                return input
              .Split(separator, options)
              .Where(x => int.TryParse(x, out _))
              .Select(int.Parse).ToArray();
            }
        }
    }
}
