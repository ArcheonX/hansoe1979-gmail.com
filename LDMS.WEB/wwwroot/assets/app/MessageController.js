
var MessageController = function () {
    var blockUI = function (options, baseUrl) {
        options = $.extend(true, {}, options);
        var html = '';  
        var image = baseUrl + '/assets/images/gif/loading-spinner-grey.gif';
        if (options.animate) {
            html = '<div class="loading-message ' + (options.boxed ? 'loading-message-boxed' : '') + '">' + '<div class="block-spinner-bar"><div class="bounce1"></div><div class="bounce2"></div><div class="bounce3"></div></div>' + '</div>';
        } else if (options.iconOnly) {
            html = '<div class="loading-message ' + (options.boxed ? 'loading-message-boxed' : '') + '"><img src=' + image+' align=""></div>';
        } else if (options.textOnly) {
            html = '<div class="loading-message ' + (options.boxed ? 'loading-message-boxed' : '') + '"><span>  ' + (options.message ? options.message : 'LOADING...') + '</span></div>';
        } else {
            html = '<div class="loading-message ' + (options.boxed ? 'loading-message-boxed' : '') + '"><img src=' + image +' align=""><span>  ' + (options.message ? options.message : 'LOADING...') + '</span></div>';
        }
        if (options.target) { // element blocking
            var el = $(options.target);
            if (el.height() <= ($(window).height())) {
                options.cenrerY = true;
            }
            el.block({
                message: html,
                baseZ: options.zIndex ? options.zIndex : 1000,
                centerY: options.cenrerY !== undefined ? options.cenrerY : false,
                centerX: options.centerX !== undefined ? options.centerX : false,
                css: {
                    top: '10%',
                    border: '0',
                    padding: '0',
                    backgroundColor: 'none'
                },
                overlayCSS: {
                    backgroundColor: options.overlayColor ? options.overlayColor : '#555',
                    opacity: options.boxed ? 0.05 : 0.5,
                    cursor: 'wait'
                }
            });
        } else { // page blocking
            $.blockUI({
                message: html,
                baseZ: options.zIndex ? options.zIndex : 1000,
                css: {
                    border: '0',
                    padding: '0',
                    backgroundColor: 'none'
                },
                overlayCSS: {
                    backgroundColor: options.overlayColor ? options.overlayColor : '#555',
                    opacity: options.boxed ? 0.05 : 0.5,
                    cursor: 'wait'
                }
            });
        }
    }
    var unblockUI = function (target) {
        if (target) {
            if ($(target)) {
                $(target).unblock({
                    onUnblock: function () {
                        $(target).css('position', '');
                        $(target).css('zoom', '');
                    }
                });
            } else {
                $.unblockUI();
            }
        } else {
            $.unblockUI();
        }
    } 
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
            showCancelButton: false,
            showConfirmButton: true,
            confirmButtonText: 'Ok',
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
            showCancelButton: false,
            showConfirmButton: true,
            confirmButtonText: 'Ok',
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
    BlockUI: function (options) { 
        var protocol = location.protocol;
        var slashes = protocol.concat("//");
        var host = slashes.concat(window.location.hostname);
        let path = host + (window.location.port != null && window.location.port != undefined && window.location.port != '' ? ':' + window.location.port : ''); 
        return blockUI(options, path);
    },
    UnblockUI: function (options) {
        return unblockUI(options);
    },
    Success: function (message, title) {
        return Success(message, title);
    },
    SuccessCallback: function (message, title, callback) {
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