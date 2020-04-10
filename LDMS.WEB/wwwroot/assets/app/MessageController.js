
var MessageController = function () {
    var Success = function (message, title) { 
        swal({
            title: title,
            text: message.replace("Message: ", ""),
            type: "success",
            showConfirmButton: true,
            showCancelButton: false,
            confirmButtonText: "Ok",
            closeOnConfirm: true,
            clofocusConfirm: true,
            showLoaderOnConfirm: true 
        });
    }
    var SuccessCallback = function (message, title, callback) {
        swal({
            title: title,
            text: message.replace("Message: ", ""),
            type: "success",
            showConfirmButton: true,
            showCancelButton: false,
            confirmButtonText: "Ok",
            closeOnConfirm: true,
            clofocusConfirm: true,
            showLoaderOnConfirm: true
        },
            function (isConfirm) {
                callback(isConfirm); 
            }); 
    }
    var Warning = function (message, title) {
        swal({
            title: title,
            text: message.replace("Message: ", ""),
            type: "warning",
            showCancelButton: true,
            showConfirmButton: true,
            confirmButtonText: 'Yes',
            cancelButtonText: 'No',
            confirmButton: 'btn btn-danger',
            cancelButton: 'btn btn-success',
            reverseButtons: true,
            closeOnConfirm: true,
            closeOnCancel: true,
            focusConfirm: true,
            showLoaderOnConfirm: true
        }); 
    }
    var WarningCallback = function (message, title, callback) { 
        swal({
            title: title,
            text: message.replace("Message: ", ""),
            type: "warning",
            showCancelButton: true,
            showConfirmButton: true,
            confirmButtonText: 'Yes',
            cancelButtonText: 'No',
            confirmButton: 'btn btn-danger',
            cancelButton: 'btn btn-success',
            reverseButtons: true,
            closeOnConfirm: true,
            closeOnCancel: true,
            focusConfirm: true,
            showLoaderOnConfirm: true
        },
            function (isConfirm) {
                callback(isConfirm);
            });
    }
    var Confirm = function (message, title) {
        swal({
            title: title,
            text: message.replace("Message: ", ""),
            type: "info",
            showCancelButton: true,
            confirmButton: 'btn btn-success',
            cancelButton: 'btn btn-danger',
            confirmButtonText: "Yes",
            cancelButtonText: "No",
            closeOnConfirm: true,
            closeOnCancel: true,
            focusConfirm: true,
            showLoaderOnConfirm: true
        }); 
        //swal({
        //    title: "Are you sure?",
        //    text: "Your will not be able to recover this imaginary file!",
        //    type: "warning",
        //    showCancelButton: true,
        //    confirmButtonClass: "btn-danger",
        //    confirmButtonText: "Yes, delete it!",
        //    closeOnConfirm: false
        //},
        //    function () {
        //        swal("Deleted!", "Your imaginary file has been deleted.", "success");
        //    });
    }
    var ConfirmCallback = function (message, title, callback) {      
        swal({
            title: title,
            text: message.replace("Message: ", ""),
            type: "info",
            showCancelButton: true,
            confirmButton: 'btn btn-success',
            cancelButton: 'btn btn-danger',
            confirmButtonText: "Yes",
            cancelButtonText: "No",
            closeOnConfirm: true,
            closeOnCancel: true,
            focusConfirm: true,
        },function(isConfirm) {
            callback(isConfirm);
        }); 
    }
    var Error = function (message, title) {
        swal({
            title: title,
            text: message.replace("Message: ", ""),
            type: "error",
            showCancelButton: false,
            confirmButtonText: "Ok",
            cancelButtonText: "No",
            closeOnConfirm: true,
            closeOnCancel: true,
            focusConfirm: true
        });  
    }
    var ErrorCallback = function (message, title, callback) {
        swal({
            title: title,
            html: message.replace("Message: ", ""),
            type: "error",
            showCancelButton: false,
            confirmButtonText: "Ok",
            cancelButtonText: "No",
            closeOnConfirm: true,
            closeOnCancel: true,
            focusConfirm: true
        }, function (isConfirm) {
            callback(isConfirm);
        }); 
    }

    return {
        Success: function (message, title) {
            return Success(message, title);
        },
        SuccessCallback:function (message, title, callback) {
            return SuccessCallback(message, title, callback);
        },
        Warning: function (message, title) {
            return Warning(message, title);
        },
        WarningCallback: function (message, title, callback) {
            return WarningCallback(message, title, callback);
        },
        Confirm: function (message, title) {
            return Confirm(message, title);
        },
        ConfirmCallback: function (message, title, callback) {
            return ConfirmCallback(message, title, callback);
        },
        Error: function (message, title) {
            return Error(message, title);
        },
        ErrorCallback: function (message, title, callback) {
            return ErrorCallback(message, title, callback);
        }
    }
}();