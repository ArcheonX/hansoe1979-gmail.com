using LDMS.Core;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace LDMS.Domain
{
    //public interface IUserService
    //{
    //    UserApplicationUser Authenticate(string username, string password);
    //    IEnumerable<UserApplicationUser> GetAll();
    //}
    public class UserService : ILDMSService
    {
        private List<UserApplicationUser> _users = new List<UserApplicationUser>
        {
            new UserApplicationUser("ted@bakersman.com") { Id = 6, FirstName = "Ted", LastName = "Facciani", Password = "azsx" ,
                UserRole = new UserIdentityRole("User")
                {
                     Id ="0002"
                } },
            new UserApplicationUser("nancy@bakersman.com") { Id = 1, FirstName = "Nancy", LastName = "Rogers", Password = "azsx" ,
                UserRole = new UserIdentityRole("User")
                {
                     Id ="0002"
                } },
            new UserApplicationUser("meghan@bakersman.com") { Id = 2, FirstName = "Meghan", LastName = "Ryan", Password = "azsx" ,
                UserRole = new UserIdentityRole("User")
                {
                     Id ="0002"
                } },
            new UserApplicationUser("melissa@bakersman.com") { Id = 3, FirstName = "Melissa", LastName = "Cusick ", Password = "azsx" ,
                UserRole = new UserIdentityRole("User")
                {
                     Id ="0002"
                } },
            new UserApplicationUser("chad@bakersman.com") { Id = 4, FirstName = "Chad", LastName = "DePasquale", Password = "azsx"  ,
                UserRole = new UserIdentityRole("User")
                {
                     Id ="0002"
                } },
            new UserApplicationUser("Yulia@bakersman.com") { Id = 5, FirstName = "Yulia", LastName = "Berestneva", Password = "azsx"  ,
                UserRole = new UserIdentityRole("Administrator")
                {
                     Id ="0001"
                } }
        };
        private readonly AppSettings _appSettings;
        public UserService(IOptions<AppSettings> appSettings, ILDMSConnection iLDMSConnection) : base(iLDMSConnection)
        {
            _appSettings = appSettings.Value;
        }
        public IEnumerable<UserApplicationUser> GetAll()
        {
            /*
              using (IDbConnection conn = Connection)
                 {
                     string sQuery = "SELECT ID, FirstName, LastName, DateOfBirth FROM Employee WHERE ID = @ID";
                     conn.Open();
                     var result = await conn.QueryAsync<Employee>(sQuery, new { ID = id });
                     return result.FirstOrDefault();
                 }
             */
            return _users.WithoutPasswords();
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
