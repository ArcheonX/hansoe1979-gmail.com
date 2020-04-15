using Microsoft.AspNetCore.Authorization;
using System.Threading.Tasks;

namespace LDMS.WEB.Filters
{
    public class MinimumExpHandler : AuthorizationHandler<MinimumExpRequirement>
    {
        protected override Task HandleRequirementAsync(
               AuthorizationHandlerContext context,
               MinimumExpRequirement requirement)
        {
            var user = context.User;
            var claim = context.User.FindFirst("MinExperience");
            if (claim != null)
            {
                var expInYears = int.Parse(claim?.Value);
                if (expInYears >= requirement.MinimumExp)
                    context.Succeed(requirement);
            }
            return Task.CompletedTask;
        }
    }
}
