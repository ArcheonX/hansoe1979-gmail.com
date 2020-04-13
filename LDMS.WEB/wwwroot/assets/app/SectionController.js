$(document).ready(function () { 
    $("input[type='datetime']").datepicker();
    $('select').select2({
        allowClear: true,
        closeOnSelect: true,
        theme: "bootstrap"
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
        },
        failure: function (response) {
            debugger;
            MessageController.Error(response.responseText, "Error");
        },
        error: function (response) {
            debugger;
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
            debugger;
            $("#txtDepartment").val(response.Data.DepartmentID + " " + response.Data.DepartmentName_EN); 
        },
        failure: function (response) {
            debugger;
            MessageController.Error(response.responseText, "Error");
        },
        error: function (response) {
            debugger;
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