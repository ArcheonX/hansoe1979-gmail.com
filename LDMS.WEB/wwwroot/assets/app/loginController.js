$(document).ready(function () {
    if (localStorage.RememberMe && localStorage.RememberMe != '' && localStorage.RememberMe == "true") {
        $('#chkRememberMe').prop('checked', true);
        $('#txtUserName').val(localStorage.usrname);
        $('#txtPassword').val(localStorage.pass);
    } else {
        $('#chkRememberMe').prop('checked', false);
        $('#txtUserName').val("");
        $('#txtPassword').val("");
    }
});
function OnAuthentication() {
    //MessageController.BlockUI({
    //    target: '#main-wrapper',
    //});
    var loginModel = {
        Username: $("#txtUserName").val(),
        Password: $("#txtPassword").val()
    };

    if (loginModel.Username == null || loginModel.Username == "") { 
        MessageController.Error("Pleas Enter 'Username'", 'Login Faild');
        //MessageController.UnblockUI({
        //    target: '#main-wrapper',
        //});
        return;
    }
    if (loginModel.Password == null || loginModel.Password == "") { 
        MessageController.Error("Pleas Enter 'Password'", 'Login Faild');
        //MessageController.UnblockUI({
        //    target: '#main-wrapper',
        //});
        return;
    }
    $.ajax({
        type: "POST",
        url: "/Account/Login",
        data: loginModel,
        success: function (response) { 
            if (response.Code == 200) {
                if ($("#chkRememberMe").prop('checked') == true) { 
                    localStorage.usrname = $('#txtUserName').val();
                    localStorage.pass = $('#txtPassword').val();
                    localStorage.RememberMe = true; 
                } else {
                    $('#chkRememberMe').prop('checked', false);
                    localStorage.usrname = "";
                    localStorage.pass = "";
                    localStorage.RememberMe = false;
                }
                window.location.href = response.Data;
            } else {
                debugger; 
                MessageController.Error("Pleas Enter 'Password'", 'Login Faild');
                //MessageController.UnblockUI({
                //    target: '#main-wrapper',
                //});
            }
        },
        failure: function (response) { 
            MessageController.Error("Invalid Account", "Login Faild");
            //MessageController.UnblockUI({
            //    target: '#main-wrapper',
            //});
        },
        error: function (response) { 
            MessageController.Error("Invalid Account", "Login Faild");
            //MessageController.UnblockUI({
            //    target: '#main-wrapper',
            //});
        }
    });  
}