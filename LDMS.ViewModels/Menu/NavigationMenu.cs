using System;
using System.Collections.Generic;
using System.Text;

namespace LDMS.ViewModels.Menu
{
    public class NavigationMenu
    {
        public string MenuID { get; set; }
        public string MenuIco { get; set; }
        public string MenuUrl { get; set; }
        public bool CanRead { get; set; }
        public bool CadWrite { get; set; }
        public string   MenuName { get; set; }
        public string ControllerName { get; set; }
        public string ActionName { get; set; }
        public List<SubNavigationMenu> SubMenus { get; set; }
        public NavigationMenu()
        {
            SubMenus = new List<SubNavigationMenu>();
        }
    }

    public class SubNavigationMenu
    {
        public string MenuID { get; set; }
        public string MenuIco { get; set; }
        public string MenuUrl { get; set; }
        public bool CanRead { get; set; }
        public bool CadWrite { get; set; }
        public string MenuName { get; set; }
        public string ControllerName { get; set; }
        public string ActionName { get; set; }

    }
}
