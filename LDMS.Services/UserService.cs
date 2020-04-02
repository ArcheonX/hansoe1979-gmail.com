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
       private readonly LDAPAuthenticationService _ldAPAuthenticationService;
        private readonly LocalAuthenticationService _localAuthenticationService;
        public UserService(IOptions<AppSettings> appSettings,
            LDAPAuthenticationService ldAPAuthenticationService,
            LocalAuthenticationService localAuthenticationService, 
            ILDMSConnection iLDMSConnection) : base(iLDMSConnection)
        {
            _appSettings = appSettings.Value;
            _ldAPAuthenticationService = ldAPAuthenticationService;
            _localAuthenticationService = localAuthenticationService;
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
            var isAuthenPass = false;
            isAuthenPass = _ldAPAuthenticationService.Authenticate(username, password);
            if (!isAuthenPass)
            {

            }

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
