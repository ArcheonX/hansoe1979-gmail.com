jQuery(function() {
    jQuery("#clickmenu-close").hide()
    jQuery("#menumobile").hide()
    jQuery('#clickmenu').click(function() {
        jQuery("#menumobile").slideDown()
        jQuery("#clickmenu").hide()
        jQuery("#clickmenu-close").show()
    })
});