(function ($) {
    "use strict";
    /*==================================================================
    [ Validate ]*/
//  var input = $('.validate-input .input100');
//  $('.validate-form').on('submit', function () {
//        var check = true;
//        for (var i = 0; i < input.length; {
//            if(validate(input[i]) == false) {
//            showValidate(input[i]);
//            check = false;
//        }
//    }
//            return check;
//});
    //btn-frm-login

    $('#btn-frm-login').click(function (event) {
        event.preventDefault();
        //var input = $('.validate-input .input100');
        //var check = true;
        //for (var i = 0; i < input.length; {
        //    if(validate(input[i]) == false) {
        //    showValidate(input[i]);
        //    check = false;
        //}

        if (!$("#Login-form").valid()) {
            return false;
        }

        var loginModel = { 
            Username: $("#txtUserName").val(),
            Password: $("#txtPassword").val() 
        };
        $.ajax({
            type: "POST",
            url: "/Account/Login",
            data: loginModel,
            success: function (response) {
                debugger;
            },
            failure: function (response) {
                MessageController.Error(response.responseText, "Error");
                debugger;
            },
            error: function (response) {
                MessageController.Error(response.responseText, "Error");
                debugger;
            }
        });  
    });
$('.validate-form .input100').each(function () {
    $(this).focus(function () {
        hideValidate(this);
    });
});
//function validate(input) {
//    if ($(input).val().trim() == '') {
//        return false;
//    }
//}
//function showValidate(input) {
//    var thisAlert = $(input).parent();
//    $(thisAlert).addClass('alert-validate');
//}
//function hideValidate(input) {
//    var thisAlert = $(input).parent();

//    $(thisAlert).removeClass('alert-validate');
    //}
})(jQuery);