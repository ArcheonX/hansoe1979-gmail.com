$(function() {
    if ($("#pnl-main-menu")) {
        menu.renderMenu();
    }
});
var menu = {
    renderMenu: function() {
        var link = window.location.href.replace(window.location.protocol + "//" + window.location.host + "/", "");
        if (!link.endsWith(".html")) {
            link = link + ".html";
        }
        if (link != "login.html" && link != "EULA.html" && link != "accept-invitation.html" && !link.startsWith("accept-invitation.html")) {
            var userId = $.cookie(AppConfig.Cookie.UserId);
            $("#current-user-login").text(App.GetCurrentUserFullName());
            if (userId) {
                $("#menu-logout").attr("style", "display:block");
                $("#menu-login").attr("style", "display:none");
            } else {
                $("#menu-logout").attr("style", "display:none");
                $("#menu-login").attr("style", "display:block");
            }
            var roles = $.cookie(AppConfig.Cookie.Roles);
            if (roles) {
                var obj = JSON.parse(roles).first();
                if (obj != undefined && obj.roleId == 'ACCB2124-BA87-4E07-AD75-30D88BB81CBF') { //admin
                    $("#menu-level-admin").attr("style", "display:block");
                    $("#menu-admin-manage-project").attr("style", "display:block");
                    //$("#my-project-manage").attr("style", "display:none");
                } else {
                    $("#menu-level-admin").attr("style", "display:none");
                    $("#menu-admin-manage-project").attr("style", "display:none");
                    // $("#my-project-manage").attr("style", "display:block");
                }
                if (obj.roleId == 'B99C7DA0-D6A2-4D1F-BAE9-61223929F263') { //Client User 
                    $("#menu-clients-manage-project").attr("style", "display:block");
                } else {
                    $("#menu-clients-manage-project").attr("style", "display:none");
                }
                if (obj.roleId == 'FAC1FB26-40F5-4A29-A038-43AD584B760B' /*worker */ ||
                    obj.roleId == '18C15FB9-E55A-4876-B166-6BD5E0156694' /*worker */ ||
                    obj.roleId == 'ACCB2124-BA87-4E07-AD75-30D88BB81CBF' /*admin */ ) {
                    $("#menu-worker-manage-project").attr("style", "display:block");
                } else {
                    $("#menu-worker-manage-project").attr("style", "display:none");
                }
            }
        }
        /* var defaultPage = $.cookie(AppConfig.Cookie.DefaultPage);
             if (defaultPage != link) {
                 var service = new UserService();
                 service.GetUserMenu(function(res) {
                     var models = res.Data;
                     var allowMenu = models.first(function(element) {
                         return element.Menus.any(function(chmn) { return chmn.Url == link; }) || element.Url == link;
                     });
                     if (!allowMenu) {
                         window.location.href = $.cookie(AppConfig.Cookie.DefaultPage);
                     }
                     $.cookie(AppConfig.Cookie.Menu, models);
                 });
        }*/
    }
}