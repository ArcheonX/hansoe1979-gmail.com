using LDMS.Core;
using LDMS.ViewModels;
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
                        var items = Connection.Query<LDMS_M_User, LDMS_M_UserRole, LDMS_M_Role, LDMS_M_User>
                        (_schema + ".[usp_User_READ_BY_EmployeeId] @param_EmployeeId",
                          map: (u, c, a) =>
                          {
                              if( c != null)
                              { 
                                  c.LDMS_M_Role = a;
                              }
                              u.LDMS_M_UserRole = c;
                              return u;
                          },
                          splitOn: "UserRoleId,RoleId",
                          param: new { @param_EmployeeId = username });
                        var user = items.FirstOrDefault();
                        if (user != null)
                        {
                            user.Token = GenerateJWT(user);
                            user.LDMS_M_UserRole.Password = null;
                            return user;
                        }
                        else
                        {
                            throw new Exception("Unauthorized");
                        } 
                    }
                }
                else
                {
                    throw new Exception("Unauthorized");
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Unauthorized");
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
                new Claim(ClaimTypes.Name, authenticatedUser.EmployeeID),
                new Claim("ID_Division", authenticatedUser.ID_Division.ToString()),
                new Claim("ID_Center", authenticatedUser.ID_Center.ToString()),
                new Claim("ID_Department", authenticatedUser.ID_Department.ToString()),
                new Claim("ID_Section", authenticatedUser.ID_Section.ToString()),
                new Claim(ClaimTypes.Role, authenticatedUser.LDMS_M_UserRole!=null? authenticatedUser.LDMS_M_UserRole.ID_Role.ToString():"0"),
            };
            var token = new JwtSecurityToken(_jwtSettings.JwtIssuer, _jwtSettings.JwtIssuer,
              claims,
              expires: DateTime.Now.AddMinutes(120),
              signingCredentials: credentials);
            return new JwtSecurityTokenHandler().WriteToken(token);
        }
    }
}