// JavaScript Document

function MM_swapImgRestore() { //v3.0

    var i, x, a = document.MM_sr;
    for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;

}

function MM_preloadImages() { //v3.0

    var d = document;
    if (d.images) {
        if (!d.MM_p) d.MM_p = new Array();

        var i, j = d.MM_p.length,
            a = MM_preloadImages.arguments;
        for (i = 0; i < a.length; i++)

            if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image;
            d.MM_p[j++].src = a[i]; }
    }

}



function MM_findObj(n, d) { //v4.01

    var p, i, x;
    if (!d) d = document;
    if ((p = n.indexOf("?")) > 0 && parent.frames.length) {

        d = parent.frames[n.substring(p + 1)].document;
        n = n.substring(0, p);
    }

    if (!(x = d[n]) && d.all) x = d.all[n];
    for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];

    for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);

    if (!x && d.getElementById) x = d.getElementById(n);
    return x;

}



function MM_swapImage() { //v3.0

    var i, j = 0,
        x, a = MM_swapImage.arguments;
    document.MM_sr = new Array;
    for (i = 0; i < (a.length - 2); i += 3)

        if ((x = MM_findObj(a[i])) != null) { document.MM_sr[j++] = x; if (!x.oSrc) x.oSrc = x.src;
            x.src = a[i + 2]; }

}




// function for display/hide content

function display(sID) {

    oObj = document.getElementById(sID);

    if (oObj) {

        oObj.style.display = 'inline';

    }

}



function hide(sID) {

    oObj = document.getElementById(sID);

    if (oObj) {

        oObj.style.display = 'none';

    }

}

//end display/hide content-->



function taps_projectInfo(id) {

    for (i = 1; i <= 2; i++) { 
        if (id == i) {
            jQuery("#content_listview" + i).fadeIn(800);
            document.getElementById('Tap_listview' + i).className = 'select_taps';
        } else {
            hide("content_listview" + i);
            jQuery("#content_listview" + i).fadeOut(800);
            document.getElementById('Tap_listview' + i).className = '';
        } 
    } 
}
function taps_listview(id) {

    for (i = 1; i <= 2; i++) {

        if (id == i) {
            jQuery("#content_listview" + i).fadeIn(800);
            document.getElementById('Tap_listview' + i).className = 'select_taps';
        } else {
            hide("content_listview" + i);
            jQuery("#content_listview" + i).fadeOut(800);
            document.getElementById('Tap_listview' + i).className = '';

        }

    } 
}

function taps_listuser(id) {

    for (i = 1; i <= 4; i++) {

        if (id == i) {
             jQuery("#content_user" + i).fadeIn(800); 
            document.getElementById('Tap_listuser' + i).className = 'select-user active';

        } else { 
            hide("content_user" + i);
            jQuery("#content_user" + i).fadeOut(800);
            document.getElementById('Tap_listuser' + i).className = '';

        }

    }

}

function taps_listuser_setting(id) {

    for (i = 1; i <= 3; i++) {

        if (id == i) {

            jQuery("#content_user_setting" + i).show();

            //display('content_location'+i);

            document.getElementById('Tap_listuser_setting' + i).className = 'select_tap_user';

        } else {

            hide("content_user_setting" + i);

            jQuery("#content_user_setting" + i).hide();

            document.getElementById('Tap_listuser_setting' + i).className = '';

        }

    }

}
//downup icon
function clickupdown(x) {
    x.classList.toggle("fa-sort-up");
}





//

//