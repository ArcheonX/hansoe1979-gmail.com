using LDMS.Core;
using LDMS.ViewModels;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Dapper;
using System.Linq;

namespace LDMS.Services
{
    //public interface IUserService
    //{
    //    UserApplicationUser Authenticate(string username, string password);
    //    IEnumerable<UserApplicationUser> GetAll();
    //}
    public class UserService : ILDMSService
    {
        private readonly AppSettings _appSettings;
      /*  private readonly LDAPAuthenticationService _ldAPAuthenticationService;
        private readonly LocalAuthenticationService _localAuthenticationService;*/

        //private List<UserApplicationUser> _users = new List<UserApplicationUser>
        //{
        //    new UserApplicationUser("ted@bakersman.com") { Id = 6, FirstName = "Ted", LastName = "Facciani", Password = "azsx" ,
        //        UserRole = new UserIdentityRole("User")
        //        {
        //             Id ="0002"
        //        } },
        //    new UserApplicationUser("nancy@bakersman.com") { Id = 1, FirstName = "Nancy", LastName = "Rogers", Password = "azsx" ,
        //        UserRole = new UserIdentityRole("User")
        //        {
        //             Id ="0002"
        //        } },
        //    new UserApplicationUser("meghan@bakersman.com") { Id = 2, FirstName = "Meghan", LastName = "Ryan", Password = "azsx" ,
        //        UserRole = new UserIdentityRole("User")
        //        {
        //             Id ="0002"
        //        } },
        //    new UserApplicationUser("melissa@bakersman.com") { Id = 3, FirstName = "Melissa", LastName = "Cusick ", Password = "azsx" ,
        //        UserRole = new UserIdentityRole("User")
        //        {
        //             Id ="0002"
        //        } },
        //    new UserApplicationUser("chad@bakersman.com") { Id = 4, FirstName = "Chad", LastName = "DePasquale", Password = "azsx"  ,
        //        UserRole = new UserIdentityRole("User")
        //        {
        //             Id ="0002"
        //        } },
        //    new UserApplicationUser("Yulia@bakersman.com") { Id = 5, FirstName = "Yulia", LastName = "Berestneva", Password = "azsx"  ,
        //        UserRole = new UserIdentityRole("Administrator")
        //        {
        //             Id ="0001"
        //        } }
        //};
        public UserService(IOptions<AppSettings> appSettings,/* LDAPAuthenticationService ldAPAuthenticationService, LocalAuthenticationService localAuthenticationService, */ILDMSConnection iLDMSConnection) : base(iLDMSConnection)
        {
            _appSettings = appSettings.Value;
           /* _ldAPAuthenticationService = ldAPAuthenticationService;
            _localAuthenticationService = localAuthenticationService;*/
        }
        public IEnumerable<LDMS_User> GetAll()
        {
            List<LDMS_User> groupMeetingsList = new List<LDMS_User>();
            using (System.Data.IDbConnection conn = Connection)
            {
                groupMeetingsList = conn.Query<LDMS_User>("[vps].[SP_GetAllUsers]").ToList();
                return groupMeetingsList;
            }
            // return _users.WithoutPasswords();
        }
        public UserApplicationUser Authenticate(string username, string password)
        {
            UserApplicationUser user = new UserApplicationUser(username);
            string userId = System.Guid.NewGuid().ToString();
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_appSettings.Secret);
            var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.NameIdentifier,userId),
                    new Claim(ClaimTypes.Name,username),
                    new Claim("FullName", username),
                    new Claim(ClaimTypes.Role,UserRole.Administrator.ToString()),
                };

            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new Claim[]
                {
                    new Claim(ClaimTypes.Name,userId)
                }),
                Expires = DateTime.UtcNow.AddDays(7),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
            };
            var token = tokenHandler.CreateToken(tokenDescriptor);
            user.Token = tokenHandler.WriteToken(token);
            return user.WithoutPassword();
        }
    }
}
