using Microsoft.AspNetCore.Authorization;

namespace LDMS.WEB.Filters
{
    public class MinimumExpRequirement : IAuthorizationRequirement
    {
        public int MinimumExp { get; set; }
        public MinimumExpRequirement(int experience)
        {
            MinimumExp = experience;
        }
    }
}
