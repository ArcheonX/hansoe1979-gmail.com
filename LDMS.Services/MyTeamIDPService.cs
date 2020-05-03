using Dapper;
using LDMS.Identity;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Text.Json;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Data;
using LDMS.Daos;
using LDMS.ViewModels;

namespace LDMS.Services
{
    public class MyTeamIDPService : ILDMSService
    {
        private readonly ILogger<CoachingService> _logger;
        public MyTeamIDPService(
           ILogger<CoachingService> logger,
           ILDMSConnection iLDMSConnection, IHttpContextAccessor httpContextAccessor) : base(iLDMSConnection, httpContextAccessor)
        {
            _logger = logger;
        }

        public ViewModels.LDMS_T_IDP_Master GetMy_Team_IDP() {

            using (IDbConnection conn = Connection)
            {
                try
                {
                    var p = new DynamicParameters();
                    //if (ID_Employee != null) p.Add("@ID_Employee", ID_Employee);

                    p.Add("@ID_Assigner_Employee", "5088888887"); //CurrentUserId

                    var myTeamIDP = conn.Query<ViewModels.LDMS_T_IDP_Master>(_schema + ".[sp_T_IDP_Master_Select_Paging]", p, commandType: CommandType.StoredProcedure).FirstOrDefault();

                    return myTeamIDP;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
            }
        }
    }
}
