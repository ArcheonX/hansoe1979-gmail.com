(function ($) { 
    $(document).ready(function () {
        $("input[type='datetime']").datepicker();
        $('select').select2({
            allowClear: true,
            closeOnSelect: true,
            theme: "bootstrap"
        });
        $('select[name="selectPlantLegal"]').on('change', function () { 
            var plantId = $(this).val();
            ReloadCenter($, plantId);
        });
        $('select[name="selectCenterLegal"]').on('change', function () {
            var centerId = $(this).val();
            ReloadDivision($, centerId);
        });
        $('select[name="selectDivisionLegal"]').on('change', function () {
            var divisionId = $(this).val();
            ReloadDepartment($, divisionId);
        }); 
        $.ajax({
            type: "GET",
            url: '/Master/GetAllPlatforms',
            success: function (response) { 
                var options = $('#selectPlatform');
                options.empty();
                options.append($("<option />").val(null).text("---All---"));
                $.each(response.Data, function () {
                    options.append($("<option />").val(this.ID).text('(' + this.PlatformID + ') ' + this.PlatformName_EN));
                });
                $('select[name="selectPlatform"]').val(null).trigger('change');
            },
            failure: function (response) { 
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            },
            error: function (response) { 
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            }
        });

        $.ajax({
            type: "GET",
            url: '/Master/GetAllCourses',
            success: function (response) {
                var options = $('#selectCourse');
                var options2 = $("#selectCourseLegal");
                options.empty();
                options2.empty();
                options.append($("<option />").val(null).text("---All---"));
                options2.append($("<option />").val(null).text("---All---"));
                $.each(response.Data, function () {
                    options.append($("<option />").val(this.ID).text('(' + this.CourseID + ') ' + this.CourseName));
                    options2.append($("<option />").val(this.ID).text('(' + this.CourseID + ') ' + this.CourseName));
                });
                $('select[name="selectCourse"]').val(null).trigger('change');
                $('select[name="selectCourseLegal"]').val(null).trigger('change');
            },
            failure: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            },
            error: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            }
        });

        $.ajax({
            type: "GET",
            url: "/Master/GetAllJobGrades",
            success: function (response) {
                var options = $('#selectJobGradeLegal');
                options.empty();
                options.append($("<option />").val(null).text("---All---"));
                $.each(response.Data, function () {
                    options.append($("<option />").val(this.ID).text(this.JobGradeName_EN));
                });
                $('select[name="selectJobGradeLegal"]').val(null).trigger('change');
            },
            failure: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            },
            error: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            }
        });

        $.ajax({
            type: "GET",
            url: "/Master/GetAllJobTitles",
            success: function (response) {
                var options = $('#selectJobTitleLegal');
                options.empty();
                options.append($("<option />").val(null).text("---All---"));
                $.each(response.Data, function () {
                    options.append($("<option />").val(this.ID).text(this.JobTitleName_EN));
                });
                $('select[name="selectJobTitleLegal"]').val(null).trigger('change');
            },
            failure: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            },
            error: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            }
        });

        $.ajax({
            type: "GET",
            url: "/Master/GetAllPlants",
            success: function (response) {
                var options = $('#selectPlantLegal');
                options.append($("<option />").val(null).text("Please select"));
                $.each(response.Data, function () {
                    options.append($("<option />").val(this.ID).text(this.PlantName_EN));
                });
                $('select[name="selectPlantLegal"]').val(null).trigger('change');
            },
            failure: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            },
            error: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            }
        });
    });
})(jQuery);
function OnSelectRadio(ele) { 
    $("#selectPlatform").attr("disabled", "disabled");
    $("#selectCourse").attr("disabled", "disabled");
    if (ele.id == "Platform") {
        $("#selectPlatform").removeAttr("disabled"); 
    } else if (ele.id == "Course") {
        $("#selectCourse").removeAttr("disabled"); 
    }
} 
function OnChangeReport(reportType) {
    $('#pnReportNormal').attr("style", "width: 100%;display: none;");
    $('#pnReportEmployeeComparation').attr("style", "width: 100%;display: none;");
    $('#pnReportCoursePlatformComparation').attr("style", "width: 100%;display: none;");
    $('#pnReportLegalCompliance').attr("style", "width: 100%;display: none;");
    $('#pnReportBasicFireFighting').attr("style", "width: 100%;display: none;");

    $('#btnNormalReport').attr("class", "btn btn-outline-info waves-effect waves-light");
    $('#btnEmployeeReport').attr("class", "btn btn-outline-info waves-effect waves-light");
    $('#btnCourseReport').attr("class", "btn btn-outline-info waves-effect waves-light");
    $('#btnLegalReport').attr("class", "btn btn-outline-info waves-effect waves-light");
    $('#btnBasicReport').attr("class", "btn btn-outline-info waves-effect waves-light");

    if (reportType == 'NORMAL') {
        $('#btnNormalReport').attr("class", "btn btn-info waves-effect waves-light");
        $('#pnReportNormal').attr("style", "width: 100%;display: block;");
    } else if (reportType == 'EMPLOYEE') {
        $('#pnReportEmployeeComparation').attr("style", "width: 100%;display: block;");
        $('#btnEmployeeReport').attr("class", "btn btn-info waves-effect waves-light");
    } else if (reportType == 'COURSEPLATFORM') {
        $('#pnReportCoursePlatformComparation').attr("style", "width: 100%;display: block;");
        $('#btnCourseReport').attr("class", "btn btn-info waves-effect waves-light");
    } else if (reportType == 'LEGALCOMPLIANCE') {
        $('#btnLegalReport').attr("class", "btn btn-info waves-effect waves-light");
        $('#pnReportLegalCompliance').attr("style", "width: 100%;display: block;");
    } else if (reportType == 'BASICFIRE') {
        $('#pnReportBasicFireFighting').attr("style", "width: 100%;display: block;");
        $('#btnBasicReport').attr("class", "btn btn-info waves-effect waves-light");
    } 
}

function ReloadCenter($, plantId) {
    var options = $('#selectCenterLegal');
    options.empty(); 
    if (plantId != null && plantId != undefined && plantId != "") {
        debugger;
        $.ajax({
            type: "GET",
            url: "/Master/GetAllCentersByPlant",
            data: { "plantId": plantId },
            success: function (response) {
                options.append($("<option />").val(null).text("Please select"));
                $.each(response.Data, function () {
                    options.append($("<option />").val(this.ID).text('(' + this.CenterID + ') ' + this.CenterName_EN));
                });
                options.val($("#selectCenterLegal").val()).trigger('change');
            },
            failure: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            },
            error: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            }
        });
    }
}

function ReloadDivision($, centerId) {
    var options = $('#selectDivisionLegal');
    options.empty(); 
    if (centerId != null && centerId != undefined && centerId != "") {
        debugger;
        $.ajax({
            type: "GET",
            url: "/Master/GetAllDivisionsByCenter",
            data: { "centerId": centerId },
            success: function (response) {
                options.append($("<option />").val(null).text("Please select"));
                $.each(response.Data, function () {
                    options.append($("<option />").val(this.ID).text('(' + this.DivisionID + ') ' + this.DivisionName_EN));
                });
                options.val($("#selectDivisionLegal").val()).trigger('change');
            },
            failure: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            },
            error: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            }
        });
    }
}

function ReloadDepartment($, divisionId) {
    var options = $('#selectDepartmentLegal');
    options.empty(); 
    if (divisionId != null && divisionId != undefined && divisionId != "") {
        $.ajax({
            type: "GET",
            url: "/Master/GetAllDepartmentsByDivision",
            data: { "divisionId": divisionId },
            success: function (response) {
                debugger;
                options.append($("<option />").val(null).text("Please select"));
                $.each(response.Data, function () {
                    options.append($("<option />").val(this.ID_Department).text('(' + this.DepartmentID + ') ' + this.DepartmentName_EN));
                });
                options.val($("#selectDepartmentLegal").val()).trigger('change');
            },
            failure: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            },
            error: function (response) {
                if (JSON.parse(response.responseText).Errors.length > 0) {
                    MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
                } else {
                    MessageController.Error(response.responseText, "Error");
                }
            }
        });
    }
} 