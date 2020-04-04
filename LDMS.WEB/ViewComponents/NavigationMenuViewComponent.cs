using LDMS.Services;
using LDMS.ViewModels.Menu;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace LDMS.WEB.ViewComponents
{
    [Authorize]
    public class NavigationMenuViewComponent : ViewComponent
    {
        private readonly UserService UserService;

        public NavigationMenuViewComponent(UserService userService)
        {
            UserService = userService;
        }
        [Authorize]
        public async Task<IViewComponentResult> InvokeAsync()
        {
            List<NavigationMenu> menus = TempData["Menu"] as List<NavigationMenu>;
            if (menus == null || menus.Count <= 0)
            {
                menus = await UserService.GetMenuItemsAsync();
            }
            //ViewData["Menu"] = menus; 	 
            return View(menus);
        }
    }
}
