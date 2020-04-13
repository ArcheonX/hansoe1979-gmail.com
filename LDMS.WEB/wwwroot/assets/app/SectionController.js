(function ($) {
    "use strict";
    $(document).ready(function () { 
    $("input[type='datetime']").datepicker();
    $('select').select2({
        allowClear: true,
        closeOnSelect: true,
        theme: "bootstrap"
    }); 
        $('#btnEditSection').click(function () { 
        $('#viewAllUser').attr("style", "width: 100%; margin-top: -15px; display: none;");
        $('#editSection').attr("style", "width: 100%; margin-top: -15px; display: block;");  
    });
        $('#btnBack').click(function () { 
        $('#viewAllUser').attr("style", "width: 100%; margin-top: -15px; display: block;");
        $('#editSection').attr("style", "width: 100%; margin-top: -15px; display: none;");  
        });

        $("#btnClear").click(function () {
            MessageController.WarningCallback("Are you sure you want to dicard changes'?", "Confirm Delete!", function (res) {
                if (res) {
                    $("#txtSectionId").val(null);
                    $("#txtSectionName").val(null);
                }
            })
        });
    //$.ajax({
    //    type: "GET",
    //    url: "/Master/Sections",
    //    data: {
    //        'departmentId': CookiesController.getCookie("DEPARTMENTID")
    //    },
    //    success: function (response) { 
    //        var options = $('#selectSection');
    //        options.append($("<option />").val(null).text("Please select")); 
    //        $.each(response.Data, function () {
    //            options.append($("<option />").val(this.ID).text('(' + this.SectionID + ') ' + this.SectionName_EN));
    //        }); 
    //    },
    //    failure: function (response) {
    //        MessageController.Error(response.responseText, "Error");
    //    },
    //    error: function (response) {
    //        MessageController.Error(response.responseText, "Error");
    //    }
    //});

    $.ajax({
        type: "GET",
        url: "/Master/Division",
        data: {
            'divisionId': CookiesController.getCookie("DIVISIONID")
        },
        success: function (response) { 
            $("#txtDivision").val(response.Data.DivisionID + " " + response.Data.DivisionName_EN); 
            $("#txtEditDivision").val(response.Data.DivisionID + " " + response.Data.DivisionName_EN); 
        },
        failure: function (response) { 
            MessageController.Error(response.responseText, "Error");
        },
        error: function (response) { 
            MessageController.Error(response.responseText, "Error");
        }
    });

    $.ajax({
        type: "GET",
        url: "/Master/Department",
        data: {
            'departmentId': CookiesController.getCookie("DEPARTMENTID")
        },
        success: function (response) { 
            $("#txtDepartment").val(response.Data.DepartmentID + " " + response.Data.DepartmentName_EN); 
            $("#txtEditDepartment").val(response.Data.DepartmentID + " " + response.Data.DepartmentName_EN); 
        },
        failure: function (response) { 
            MessageController.Error(response.responseText, "Error");
        },
        error: function (response) { 
            MessageController.Error(response.responseText, "Error");
        }
    });

    //$.ajax({
    //    type: "GET",
    //    url: "/Account/EmployeeByDepartment",
    //    data: {
    //        'departmentId': CookiesController.getCookie("DEPARTMENTID")
    //    },
    //    success: function (response) {
    //        debugger;
    //        $("#txtDepartment").val(response.Data.DepartmentID + " " + response.Data.DepartmentName_EN);
    //    },
    //    failure: function (response) {
    //        debugger;
    //        MessageController.Error(response.responseText, "Error");
    //    },
    //    error: function (response) {
    //        debugger;
    //        MessageController.Error(response.responseText, "Error");
    //    }
    //});
    })
})(jQuery);

function EditSection(id,code,name) {
    $("#txtSectionId").val(code);
    $("#txtSectionName").val(name); 
}
function DeleteSection(id, code, name) {
    MessageController.WarningCallback("Are you sure you want to delete Section '" + code + ' ' + name + "'?", "Confirm Delete!", function (res) {
        if (res) {
            $("#txtSectionId").val(code);
            $("#txtSectionName").val(name);
        }
    });
}