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
using Microsoft.Extensions.Logging;

namespace LDMS.Services
{
    //public interface IUserService
    //{
    //    UserApplicationUser Authenticate(string username, string password);
    //    IEnumerable<UserApplicationUser> GetAll();
    //}
    public class UserService : ILDMSService
    {
        private readonly JwtSettings _jwtSettings;
        private readonly ILogger<UserService> _logger;

        private readonly LDAPAuthenticationService _ldAPAuthenticationService;
        private readonly LocalAuthenticationService _localAuthenticationService;
        public UserService(
            JwtSettings jwtSettings, ILogger<UserService> logger,
            LDAPAuthenticationService ldAPAuthenticationService,
            LocalAuthenticationService localAuthenticationService,
            ILDMSConnection iLDMSConnection) : base(iLDMSConnection)
        {
            _jwtSettings = jwtSettings;
            _logger = logger;
            _ldAPAuthenticationService = ldAPAuthenticationService;
            _localAuthenticationService = localAuthenticationService;
        }
        public IEnumerable<LDMS_M_User> GetAll()
        {
            List<LDMS_M_User> groupMeetingsList = new List<LDMS_M_User>();
            using (System.Data.IDbConnection conn = Connection)
            {
                groupMeetingsList = conn.Query<LDMS_M_User>(_schema+".[usp_User_READ_ALL]").ToList();
                return groupMeetingsList;
            }
            // return _users.WithoutPasswords();
        }
        public LDMS_M_User Authenticate(string username, string password)
        {
            try
            {
                bool isAuthenPass = _ldAPAuthenticationService.Authenticate(username, password);
                if (!isAuthenPass)
                {
                    isAuthenPass = _localAuthenticationService.Authenticate(username, password);
                }
                if (isAuthenPass)
                {
                    using (System.Data.IDbConnection conn = Connection)
                    {

                        var dictionary = new Dictionary<string, object>
                        {
                            { "@param_EmployeeId", username }
                        };
                        var parameters = new DynamicParameters(dictionary);
                        var user = Connection.QuerySingle<LDMS_M_User>(_schema + ".[usp_User_READ_BY_EmployeeId] @param_EmployeeId", parameters);
                        if (user == null)
                            return null;
                        user.Token = GenerateJWT(user);
                        return user;
                        //IEnumerable<LDMS_M_UserRole> stores = Connection.Query<LDMS_M_UserRole, LDMS_M_Role, LDMS_M_UserRole>("[dbo].[usp_User_READ_BY_EmployeeId] @param_EmployeeId", (a, s) => { a.LDMS_M_Role = s; return a; }, splitOn: "ID_Role");
                    }
                }
                else
                {
                    throw new Exception("");
                }
            }catch(Exception ex)
            {
                return null;
            }
        }
        private string GenerateJWT(LDMS_M_User authenticatedUser)
        {
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_jwtSettings.JwtKey));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256Signature);

            List<Claim> claims = new List<Claim>
            {
                new Claim(JwtRegisteredClaimNames.Sub, authenticatedUser.EmployeeID),
                new Claim(ClaimTypes.GivenName, authenticatedUser.Name),
                new Claim(ClaimTypes.Surname, authenticatedUser.Surname),
                new Claim(ClaimTypes.Email, authenticatedUser.Email),
                new Claim(ClaimTypes.NameIdentifier, authenticatedUser.EmployeeID.ToString()),
                new Claim(ClaimTypes.Name, authenticatedUser.EmployeeID)
            };
            var token = new JwtSecurityToken(_jwtSettings.JwtIssuer, _jwtSettings.JwtIssuer,
              claims,
              expires: DateTime.Now.AddMinutes(120),
              signingCredentials: credentials);
            return new JwtSecurityTokenHandler().WriteToken(token);
        }
    }
}