$(document).ready(function () {
    $("input[type='datetime']").datepicker();
    $('select').select2({
        allowClear: true,
        closeOnSelect: true,
        theme: "bootstrap"
    });
    debugger;
    $.ajax({
        type: "GET",
        url: "/Master/Sections",
        data: {
            'departmentId': CookiesController.getCookie("DEPARTMENTID")
        },
        success: function (response) {
            options.append($("<option />").val(null).text("Please select"));
            $.each(response.Data, function () {
                if (this.ID_Department == departmentId) {
                    options.append($("<option />").val(this.ID).text('(' + this.SectionID + ') ' + this.SectionName_EN));
                }
            });
            options.val($("#userSectionId").val()).trigger('change');
            if (callback) {
                callback($("#userSectionId").val());
            }
        },
        failure: function (response) {
            MessageController.Error(response.responseText, "Error");
        },
        error: function (response) {
            MessageController.Error(response.responseText, "Error");
        }
    });
}) 