using LDMS.Services;
using LDMS.ViewModels.Menu;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LDMS.WEB.ViewComponents
{
	public class NavigationMenuViewComponent : ViewComponent
	{
		private readonly UserService UserService;

		public NavigationMenuViewComponent(UserService userService)
		{
			UserService = userService;
		}
		public async Task<IViewComponentResult> InvokeAsync()
		{
			List<NavigationMenu> menus = TempData["Menu"] as List<NavigationMenu>;
			if(menus==null || menus.Count <= 0)
			{
				menus = await UserService.GetMenuItemsAsync();
			}
			//ViewData["Menu"] = menus; 	 
			return View(menus);
		}
	}
}
