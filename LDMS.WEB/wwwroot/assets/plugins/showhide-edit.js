jQuery(function(){
jQuery(".hide-edit-content").hide ()
jQuery("#clickedit-hide").hide ()
jQuery('#clickedit').click(function(){
jQuery(".hide-edit-content").show()
jQuery(".show-edit-content").hide ()
jQuery("#clickedit-hide").show ()
jQuery("#clickedit").hide ()
});

jQuery('#clickedit-hide').click(function(){
jQuery(".hide-edit-content").hide()
jQuery(".show-edit-content").show ()
jQuery("#clickedit-hide").hide ()
jQuery("#clickedit").show ()
});






	});
