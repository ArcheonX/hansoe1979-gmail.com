jQuery(document).ready(function () {
    CreatePlatformPopup();
    CreateCoursePopup();
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
function CreatePlatformPopup() { 
    $('.search-platform-modal').magnificPopup({
        type: 'inline',
        preloader: false, 
        modal: true,
        callbacks: {
            beforeOpen: function () {
                $("#selectPlatformType").val(null).trigger('change');
                $("#selectPlatformStatus").val(1).trigger('change');
                SearchPlatform(); 
            }
        }
    });
    $(document).on('click', '.popup-modal-dismiss', function (e) {
        e.preventDefault();
        $.magnificPopup.close();
    });
}

function SearchPlatform() {
    var table = $('#dtPlatform').DataTable();
    table.destroy();
    var searmodel = {
        PlatformId: $("#txtPlatformID").val(),
        PlatformName: $("#txtPlatformName").val(),
        PlatformType: $("#selectPlatformType").val(),
        PlatformStatus: $("#selectPlatformStatus").val()
    };
    $.ajax({
        type: "GET",
        url: "/Platform/Platforms",
        data: searmodel,
        success: function(response) {
            var tbody = $('#dtPlatform').children('tbody');
            var table = tbody.length ? tbody : $('#dtPlatform');
            table.empty();
            $.each(response.Data, function() {
                var row = '<tr>' +
                    '<td style="text-align:center;">' + this.ID + '</td>' +
                    '<td style="text-align:left">' + this.PlatformName_EN + '</td>' +
                    '<td style="text-align:left;"><input type="checkbox" name="selectUserRole" value="' + this.PlatformID + '"  id="selectRole_' + this.ID + '"  onclick="checkboxonlyOne(this)" /><label for="selectRole_' + this.ID + '"> </label> </td >' +
                    '</tr>';
                table.append(row);
            });
            $('#dtPlatform').DataTable({
                "autoWidth": false,
                "lengthChange": false,
                "pageLength": 5,
                "paging": true,
                "ordering": false,
                "searching": false,
                "lengthChange": false,
                "bAutoWidth": false,
                "Filter": true,
                "info": false,
                "bPaginate": false,
                "bLengthChange": false,
                "language": {
                    "lengthMenu": "Display _MENU_ records per page",
                    "zeroRecords": "    Nothing found - sorry",
                    "info": "    page _PAGE_ of _PAGES_",
                    "infoEmpty": "    No records available",
                    "infoFiltered": "(filtered from _MAX_ total records)"
                }
            });
            $('.dataTables_length').addClass('bs-select');
        }
    });
}

function CreateCoursePopup() {
    $('.search-course-modal').magnificPopup({
        type: 'inline',
        preloader: false,
        modal: true,
        callbacks: {
            beforeOpen: function () {
                $("#selectCourseStatus").val(1).trigger('change');
                $("#selectLearnMethod").val(null).trigger('change');
                SearchCourse();
            }
        }
    });

    $(document).on('click', '.popup-modal-dismiss', function (e) {
        e.preventDefault();
        $.magnificPopup.close();
    });
}
function SearchCourse() {
    var table = $('#dtCourse').DataTable();
    table.destroy();
    var searmodel = {
        CourseID: $("#txtCourseID").val(),
        CourseName: $("#txtCourseName").val(),
        CourseStatus: $("#selectCourseStatus").val(),
        LearnMethod: $("#selectLearnMethod").val()
    };
    $.ajax({
        type: "GET",
        url: "/Courses/Courses",
        data: searmodel,
        success: function (response) {
            var tbody = $('#dtCourse').children('tbody');
            var table = tbody.length ? tbody : $('#dtCourse');
            table.empty();
            $.each(response.Data, function () {
                var row = '<tr>' +
                    '<td style="text-align:center">' + this.ID + '</td>' +
                    '<td style="text-align:left">' + this.CourseName + '</td>' +
                    '<td style="text-align:left;"><input type="checkbox" name="selectUserRole" value="' + this.CourseID + '"  id="selectRole_' + this.ID + '"  onclick="checkboxonlyOne(this)" /><label for="selectRole_' + this.ID + '"> </label> </td >' +
                    '</tr>';
                table.append(row);
            });
            $('#dtCourse').DataTable({
                "autoWidth": false,
                "lengthChange": false,
                "pageLength": 5,
                "paging": true,
                "ordering": false,
                "searching": false,
                "lengthChange": false,
                "bAutoWidth": false,
                "Filter": true,
                "info": false,
                "bPaginate": false,
                "bLengthChange": false,
                "language": {
                    "lengthMenu": "Display _MENU_ records per page",
                    "zeroRecords": "    Nothing found - sorry",
                    "info": "    page _PAGE_ of _PAGES_",
                    "infoEmpty": "    No records available",
                    "infoFiltered": "(filtered from _MAX_ total records)"
                }
            });
            $('.dataTables_length').addClass('bs-select');
        }
    });
}

function OnSelectReportType(ele) {
    $("#selectCourse").attr("disabled", "disabled");
    $("#btnSearchCourse").attr("disabled", "disabled");
    $("#btnSearchPlatform").attr("disabled", "disabled");
    $("#selectPlatform").attr("disabled", "disabled");  

    if (ele.id =="Platform") {
        $("#selectPlatform").removeAttr("disabled");
        $("#btnSearchPlatform").removeAttr("disabled");
    } else {
        $("#selectCourse").removeAttr("disabled");
        $("#btnSearchCourse").removeAttr("disabled");
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
    //$('.popup-modal').magnificPopup({
    //    type: 'inline',
    //    preloader: false,
    //    modal: true
    //});
    //$(document).on('click', '.popup-modal-dismiss', function (e) {
    //    e.preventDefault();
    //    $.magnificPopup.close();
    //});
}

function ReloadCenter($, plantId) {
    var options = $('#selectCenterLegal');
    options.empty(); 
    if (plantId != null && plantId != undefined && plantId != "") { 
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