using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;

namespace LDMS.Identity
{
    public static class PasswordHelper
    {
        public const int SALT_BYTE_SIZE = 24;

        public static bool IsTokenExpired(DateTime tokenCreated, int resetTokenExpiredHours)
        {
            return DateTime.Now.CompareTo(tokenCreated.AddHours(resetTokenExpiredHours)) > 0;
        }

        public static bool IsStrong(string password, string regex)
        {
            bool bOk = true;

            Regex rx = new Regex(regex);
            Match match = rx.Match(password);

            if (string.IsNullOrEmpty(password) || !match.Success)
            {
                bOk = false;
            }

            return bOk;
        }

        public static string CreateSalt()
        {
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            byte[] buff = new byte[SALT_BYTE_SIZE];
            rng.GetBytes(buff);

            return Convert.ToBase64String(buff);
        }

        public static string GenerateSaltedHash(string password, string salt)
        {
            byte[] bIn = Encoding.Unicode.GetBytes(password);
            byte[] bSalt = Convert.FromBase64String(salt);
            byte[] bAll = new byte[bSalt.Length + bIn.Length];
            byte[] bRet = null;

            Buffer.BlockCopy(bSalt, 0, bAll, 0, bSalt.Length);
            Buffer.BlockCopy(bIn, 0, bAll, bSalt.Length, bIn.Length);

            HashAlgorithm s = HashAlgorithm.Create("SHA1");

            bRet = s.ComputeHash(bAll);
            return Convert.ToBase64String(bRet);
        }

        public static bool IsValidPassword(string password, string saltedHash, string salt)
        {
            bool bOk = false;
            string pwdSaltedHash = GenerateSaltedHash(password, salt);
            bOk = pwdSaltedHash.Equals(saltedHash);
            return bOk;
        }
    }
}
