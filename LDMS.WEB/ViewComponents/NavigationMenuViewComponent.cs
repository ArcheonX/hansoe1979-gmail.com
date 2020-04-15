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
            try
            {
                List<NavigationMenu> menus = await UserService.GetMenuItemsAsync();
                //if (menus == null || menus.Count <= 0)
                //{
                //    menus = await UserService.GetMenuItemsAsync();
                //}
             //   TempData["Menus"] = menus; 	 
                return View(menus);
            }
            catch
            {
                List<NavigationMenu> menus = new List<NavigationMenu>();
                return View(menus);
            }
        }
    }
}
