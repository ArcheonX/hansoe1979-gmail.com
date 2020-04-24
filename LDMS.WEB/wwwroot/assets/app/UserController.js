(function ($) {
    "use strict";
    $(document).ready(function () {   
        $("input[type='datetime']").datepicker(); 
        $('select').select2({ 
            closeOnSelect: true,
            theme: "bootstrap",
            allowClear: true,
            placeholder: 'All',
            language: {
                noResults: function () {
                    return "{{ __('No results found') }}";
                }
            }
        });

        var validobj = $("#frmUserEditor").validate({ 
            onkeyup: false,
            errorClass: "myErrorClass",
            highlight: function (element, errorClass, validClass) {
                var elem = $(element); 
                elem.addClass(errorClass); 
            },
            unhighlight: function (element, errorClass, validClass) {
                var elem = $(element); 
                elem.removeClass(errorClass); 
            },
            errorPlacement: function (error, element) {
                var elem = $(element); 
                error.insertAfter(elem);
                error.attr("style", "color: #f60b0b");
            },
        }); 

        $.ajax({
            type: "GET",
            url: "/Master/GetAllDepartments",
            success: function (response) {
                var options = $('#selectFilterDepartment');
                var optionsreport = $('#selectMasterReportDepartment');
                //options.append($("<option />").val(null).text("---All---"));
                optionsreport.append($("<option />").val(null).text("---All---"));

                $.each(response.Data, function () {
                    options.append($("<option />").val(this.ID_Department).text('(' + this.DepartmentID + ') ' + this.DepartmentName_EN));
                    optionsreport.append($("<option />").val(this.ID_Department).text('(' + this.DepartmentID + ') ' + this.DepartmentName_EN));
                });
                $('select[name="selectMasterReportDepartment"]').val(null).trigger('change');
                $('select[name="selectFilterDepartment"]').val(null).trigger('change');
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
                options.empty();
                options.append($("<option />").val(null).text("---All---"));
                $.each(response.Data, function () {
                    options.append($("<option />").val(this.ID).text('(' + this.CourseID + ') ' + this.CourseName));
                });
                $('select[name="selectCourse"]').val(null).trigger('change');
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
                var options = $('#selectMasterReportJobGrade');
                options.append($("<option />").val(null).text("---All---"));
                $.each(response.Data, function () {
                    options.append($("<option />").val(this.ID_JobGrade).text(this.JobGradeName_EN));
                });
                $('select[name="selectMasterReportJobGrade"]').val(null).trigger('change');
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

        SearchEmployee($);

        $('select[name="selectCenter"]').on('change', function () {
            if (!$.isEmptyObject(validobj.submitted)) {
                validobj.form();
            }
            var centerId = $(this).val();
            ReloadDivision($, centerId, null);
        }); 

        $('select[name="selectDivision"]').on('change', function () {
            if (!$.isEmptyObject(validobj.submitted)) {
                validobj.form();
            }
            var divisionId = $(this).val();
            ReloadDepartment($, divisionId, null); 
        });

        $('select[name="selectDepartment"]').on('change', function () {
            if (!$.isEmptyObject(validobj.submitted)) {
                validobj.form();
            } 
            var departmentId = $(this).val();
            ReloadSection($, departmentId, null);  
        });
        
        $('select[name="selectSection"]').on('change', function () {
            if (!$.isEmptyObject(validobj.submitted)) {
                validobj.form();
            }
        });

        $('select[name="selectJobGrade"]').on('change', function () {
            if (!$.isEmptyObject(validobj.submitted)) {
                validobj.form();
            }
        });

        $('select[name="selectJObTitle"]').on('change', function () {
            if (!$.isEmptyObject(validobj.submitted)) {
                validobj.form();
            }
        });

        $('select[name="selectGender"]').on('change', function () {
            if (!$.isEmptyObject(validobj.submitted)) {
                validobj.form();
            }
        }); 

        $('#btnResetPassword').click(function () {
            MessageController.ConfirmCallback("Are you sure you want to reset to default password?", "Confirm change", function (res) {
                if (res) {
                    $.ajax({
                        type: "POST",
                        url: '/Employee/ResetPassword',
                        data: { 'employeeId': $("#txtEmployeeId").val() },
                        success: function (response) { 
                            MessageController.Success("Reset password success.", "Success");
                            SearchEmployee();
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
            });
        });

        $('#btnUser').click(function () {
            $('#viewAllUser').attr("style", "display:block;width:100%");
            $('#UserEditor').attr("style", "display:none;width:100%");
            $('#MasterReport').attr("style", "display:none;width:100%");
            $('#btnUser').attr("class", "btn btn-info waves-effect waves-light");
            $('#btnMasterReport').attr("class", "btn btn btn-outline-info waves-effect waves-light");
        });

        $('#btnMasterReport').click(function () {
            $('#viewAllUser').attr("style", "display:none;width:100%");
            $('#UserEditor').attr("style", "display:none;width:100%");
            $('#MasterReport').attr("style", "display:block;width:100%");
            $('#btnUser').attr("class", "btn btn btn-outline-info waves-effect waves-light");
            $('#btnMasterReport').attr("class", "btn btn-info waves-effect waves-light");
        });

        $('#btnAddEmployee').click(function () {
            ClearEditor();
            $('#viewAllUser').attr("style", "display:none;width:100%");
            $('#UserEditor').attr("style", "display:block;width:100%");
            $('#MasterReport').attr("style", "display:none;width:100%");
            CreateEditor($, null); 
        });

        $('#btnBack').click(function () {
            ClearEditor();
            $('#viewAllUser').attr("style", "display:block;width:100%");
            $('#UserEditor').attr("style", "display:none;width:100%");
            $('#MasterReport').attr("style", "display:none;width:100%");
        });

        $('#btnSaveEmployee').click(function (event) {
            event.preventDefault();
            if (!$("#frmUserEditor").valid()) {
                return false;
            }
            MessageController.ConfirmCallback("Are you sure you want to do this?", "Confirm change", function (res) {
                if (!res) {
                    return false;
                }
                var roleId = 0;
                $('#dtUserRoleList > tbody  > tr').each(function () {
                    var self = $(this); 
                    var isSelected = self.find("td").eq(4).find("input[type='checkbox']").prop("checked");
                    if (isSelected) {
                        var value = self.find("td").eq(1).text(); //self.find("td").eq(1).find(":text").val();
                        roleId = parseInt(value); 
                    }
                }); 
                var empModel = {
                    CenterId: parseInt($("#selectCenter").val()),
                    DivisionId: parseInt($("#selectDivision").val()),
                    DepartmentId: parseInt($("#selectDepartment").val()),
                    SectionId: parseInt($("#selectSection").val()),
                    JobGradeId: parseInt($("#selectJobGrade").val()),
                    JobTitleId: parseInt($("#selectJObTitle").val()),
                    Gender: $("#selectGender").val(),

                    IsEditMode: $("#userEditMode").val() == "true",
                    EmployeeId: $("#txtEmployeeId").val(),
                    EmployeeName: $("#txtEmployeeName").val(),
                    EmployeeSurName: $("#txtEmployeeSurName").val(), 
                    Nationality: $("#txtNationality").val(), 
                    Email: $("#txtEmail").val(), 
                    Phone: $("#txtPhone").val(), 
                    Password: $("#txtPassword").val(),
                    Remark: $("#txtRemark").val(),
                    RoleId: roleId,
                    IsInstructer: $("#isInstructer").val() == "true",
                    IsSectionHead: $("#isSectionHead").val() == "true"
                }; 
                if ($("#userEditMode").val() == "true") {
                    UpdateEmployee(empModel);
                } else {
                    CreateEmployee(empModel);
                }  
           }); 
        }); 

        $('#btnSearchEmployee').click(function () { 
            SearchEmployee();
        });

        $('#btnExportMasterReport').click(function () { 
            event.preventDefault();
            //if (!$("#reportFrm").valid()) {
            //    return false;
            //}
            if ($("#dteTrainingDateFrm").val() == null || $("#dteTrainingDateFrm").val() == "" || $("#dteTrainingDateFrm").val() == undefined) {
                MessageController.Error("Please Enter Training Date?", "Validator");
                return;
            }
            if ($("#dteTrainingDateTo").val() == null || $("#dteTrainingDateTo").val() == "" || $("#dteTrainingDateTo").val() == undefined) {
                MessageController.Error("Please Enter Training Date?", "Validation failed.");
                return;
            }
            ExportMasterReport($);
        });
    })
})(jQuery);

function checkboxonlyOne(checkbox) {
    var checkboxes = document.getElementsByName(checkbox.name);
    $.each(checkboxes, function () {
        if (this !== checkbox) {
            this.prop('checked', false); 
        }
    }); 
}

function ExportMasterReport($) {  
    var filterModel = {
        MasterReportType: $('input[name="selectMasterType"]:checked').val(),
        InstructorId: $("#txtInstructorId").val(),
        CourseId: $("#selectCourse").val(),
        PlatformId: $("#selectPlatform").val(),
        ActiveStatus: $("#selectMasterReportStatus").val(),
        TrainingStatus: $("#selectMasterReportTrainingStatus").val(),
        JobGradeId: $("#selectMasterReportJobGrade").val(),
        DepartmentId: $("#selectMasterReportDepartment").val(),
        TrainingDateFrm: $("#dteTrainingDateFrm").val(),
        TrainingDateTo: $("#dteTrainingDateTo").val()
    }
    $.ajax({
        type: "GET",
        url: '/Report/GetIMasterReport',
        data: filterModel,
        success: function (response) { 
            var reportFile = Utility.base64ToArrayBuffer(response.Data.FileContents);
            Utility.ExportExcelFile(response.Data.FileDownloadName, reportFile);  
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
};

function ReloadDivision($, centerId, callback) {
    var options = $('#selectDivision');
    options.empty(); 
    $.ajax({
        type: "GET",
        url: "/Master/GetAllDivisionsByCenter",
        data: {
            'centerId': centerId
        },
        success: function (response) {
            options.append($("<option />").val(null).text("Please select"));
            debugger;
            $.each(response.Data, function () {
                options.append($("<option />").val(this.ID_Division).text('(' + this.DivisionID + ') ' + this.DivisionName_EN));
            });
            options.val($("#userDivisionId").val()).trigger('change');
            if (callback) {
                callback($("#userDivisionId").val());
            }
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

function ReloadDepartment($, divisionId, callback) {
    var options = $('#selectDepartment');
    options.empty();
    $.ajax({
        type: "GET",
        url: "/Master/GetAllDepartmentsByDivision",
        data: {
            'divisionId': divisionId
        },
        success: function (response) {

            options.append($("<option />").val(null).text("Please select"));
            $.each(response.Data, function () {
                options.append($("<option />").val(this.ID_Department).text('(' + this.DepartmentID + ') ' + this.DepartmentName_EN));
            });
            options.val($("#userDepartmentId").val()).trigger('change');
            if (callback) {
                callback($("#userDepartmentId").val());
            }
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

function ReloadSection($, departmentId, callback) { 
    var options = $('#selectSection');
    options.empty();
    $.ajax({
        type: "GET",
        url: '/Master/GetAllSectionsByDepartment',
        data: {
            'departmentId': departmentId
        },
        success: function (response) {
            options.append($("<option />").val(null).text("Please select"));
            $.each(response.Data, function () {
                options.append($("<option />").val(this.ID_Section).text('(' + this.SectionID + ') ' + this.SectionName_EN));
            });
            options.val($("#userSectionId").val()).trigger('change');
            if (callback) {
                callback($("#userSectionId").val());
            }
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

function UpdateEmployee(empModel) {
    $.ajax({
        type: "POST",
        url: '/Employee/UpdateEmployee',
        data: empModel,
        success: function (response) {
            $('#viewAllUser').attr("style", "border-width:thin;border-style:solid;display:block;width:100%");
            $('#UserEditor').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
            $('#MasterReport').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
            ClearEditor();
            SearchEmployee(); 
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

function CreateEmployee(empModel) {
    $.ajax({
        type: "POST",
        url: '/Employee/CreateEmployee',
        data: empModel,
        success: function (response) {
            $('#viewAllUser').attr("style", "border-width:thin;border-style:solid;display:block;width:100%");
            $('#UserEditor').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
            $('#MasterReport').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
            ClearEditor();
            SearchEmployee();
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

function DeleteEmployee(employeeId) {
    MessageController.WarningCallback("Are you sure you want to delete Employee '" + employeeId + "'?", "Confirm Delete!", function (res) {
        if (res) {
            $.ajax({
                type: "Delete",
                url: '/Employee/RemoveEmployee',
                data: { 'employeeId': employeeId },
                success: function (response) {
                    SearchEmployee();
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
    });
}

function EditEmployee(employeeId) {
    $('#viewAllUser').attr("style", "display:none;width:100%");
    $('#UserEditor').attr("style", "display:block;width:100%");
    $('#MasterReport').attr("style", "display:none;width:100%");
    CreateEditor($, employeeId); 
}

function ClearEditor() {
    $("#userCenterId").val(null);
    $("#userDivisionId").val(null);
    $("#userDepartmentId").val(null);
    $("#userSectionId").val(null);
     $("#isInstructer").prop("checked", false);
    $("#btnResetPassword").attr("style", "display:none;width:100%"); 
    $("#isSectionHead").prop("checked", false);

    $('#selectCenter').val(null).trigger('change');  
    $('#selectGender').val(null).trigger('change');
    $('#selectJobGrade').val(null).trigger('change');
    $('#selectJObTitle').val(null).trigger('change');
    $('#selectDivision').val(null).trigger('change');
    $('#selectDepartment').val(null).trigger('change');
    $('#selectSection').val(null).trigger('change');   
    $('#txtEmployeeId').val(null);
    $('#txtEmployeeName').val(null);
    $('#txtEmployeeSurName').val(null);
    $('#txtNationality').val(null);
    $('#txtEmail').val(null);
    $('#txtPhone').val(null);
    $('#txtRemark').val(null);
    $('#isInstructer').val(null);
    $('#isSectionHead').val(null);
    $('#dtUserRoleList > tbody  > tr').each(function () {
        var self = $(this); 
        var check = self.find("td").eq(4).find("input[type='radio']");
        check.prop("checked", false);
    }); 
}
function CreateEditor($, employeeId) { 
    $("#userEditMode").val("false");
    $('select[name="selectDivision"]').val(null);
    $('select[name="selectDepartment"]').val(null);
    $('select[name="selectSection"]').val(null);
    $('select[name="selectGender"]').val(null); 
    $("#userCenterId").val(null);
    $("#userDivisionId").val(null);
    $("#userDepartmentId").val(null);
    $("#userSectionId").val(null);  
    $("#btnResetPassword").attr("style", "display:none;width:100%");
    $("#isInstructer").prop("checked", false); 
    $("#isSectionHead").prop("checked", false); 

    $.ajax({
        type: "GET",
        url: "/Master/GetAllJobGrades", 
        success: function (response) {
            var options = $('#selectJobGrade');
            options.append($("<option />").val(null).text("Please select"));
            $.each(response.Data, function () {
                options.append($("<option />").val(this.ID_JobGrade).text(this.JobGradeName_EN));
            });
            $('select[name="selectJobGrade"]').val(null).trigger('change');
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
            var options = $('#selectJObTitle');
            options.append($("<option />").val(null).text("Please select"));
            $.each(response.Data, function () {
                options.append($("<option />").val(this.ID_JobTitle).text(this.JobTitleName_EN));
            });
            $('select[name="selectJObTitle"]').val(null).trigger('change');
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
        url: "/Master/GetAllCenters",
        success: function (response) {
            var options = $('#selectCenter');
            options.append($("<option />").val(null).text("Please select"));
            $.each(response.Data, function () {
                options.append($("<option />").val(this.ID_Center).text(this.CenterName_EN));
            });
            $('select[name="selectCenter"]').val(null).trigger('change');
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
        url: "/Master/GetAllRoles",
        success: function (response) {
            var tbody = $('#dtUserRoleList').children('tbody');
            var table = tbody.length ? tbody : $('#dtUserRoleList');
            table.empty();
            $.each(response.Data, function () {
                var row = '<tr>' +
                    '<td style="text-align:center">' + this.RowIndex + '</td>' +
                    '<td style="text-align:center;display:none">' + this.RoleId + '</td>' +
                    '<td style="text-align:left">' + this.RoleName_EN + '</td>' +
                    '<td style="text-align:left">' + this.RoleDescription + '</td>' +
                    '<td style="text-align:center;width:100px"><input type="radio" name="selectUserRole" value="' + this.RoleId + '"  id="selectRole_' + this.RoleId + '"  onclick="checkboxonlyOne(this)" /><label for="selectRole_' + this.RoleId + '"> </label> </td >' +
                    '</tr>'; 
                table.append(row);
            }); 
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

    if (employeeId != undefined && employeeId != "") {
        $.ajax({
            type: "GET",
            url: "/Employee/ReadEmployee",
            data: { 'employeeId': employeeId },
            success: function (response) {
                $("#userEditMode").val("true");
                var user = response.Data;

                $("#userCenterId").val(user.CenterId);
                $("#userDivisionId").val(user.DivisionId);
                $("#userDepartmentId").val(user.DepartmentId);
                $("#userSectionId").val(user.SectionId);

                if (user.IsAD == false) {
                    $("#btnResetPassword").attr("style", "display:block;width:100%");
                }

                if (user.IsInstructer == true) {
                    $("#isInstructer").prop("checked", true); 
                }  

                if (user.IsSectionHead == true) {
                    $("#isSectionHead").prop("checked", true); 
                }
                $('#selectCenter').val(user.CenterId).trigger('change');

                ReloadDivision($, user.CenterId, function () { 
                    ReloadDepartment($, user.DivisionId, function () {
                        ReloadSection($, user.DepartmentId, null);
                    });
                }); 
                $('#selectGender').val(user.Gender).trigger('change'); 
                $('#selectJobGrade').val(user.JobGradeId).trigger('change');
                $('#selectJObTitle').val(user.JobTitleId).trigger('change'); 
                $('#txtEmployeeId').val(user.EmployeeId); 
                $('#txtEmployeeName').val(user.EmployeeName); 
                $('#txtEmployeeSurName').val(user.EmployeeSurName); 
                $('#txtNationality').val(user.Nationality); 
                $('#txtEmail').val(user.Email); 
                $('#txtPhone').val(user.Phone); 
                $('#txtRemark').val(user.Remark);  
                $('#isInstructer').val(user.EmployeeId); 
                $('#isSectionHead').val(user.EmployeeId);  
                $('#dtUserRoleList > tbody  > tr').each(function () { 
                    var self = $(this); 
                    var roleId = parseInt(self.find("td").eq(1).text());
                    if (roleId == user.RoleId) {
                        var check = self.find("td").eq(4).find("input[type='radio']");
                        check.prop("checked", true);
                    } 
                }); 
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

function SearchEmployee() {
    MessageController.BlockUI({ boxed: true, target: '#dtUserList' });
    var deps = $('#selectFilterDepartment').val();
    var searmodel = {
        EmployeeId: $("#txtFilterEmployeeID").val(),
        EmployeeName: $("#txtFilterEmployeeName").val(),
        Departments: deps != null && deps != undefined ? deps.join(",") : null
    }; 
    $.ajax({
        type: "GET",
        url: "/Account/SearchEmployee",
        data: searmodel,
        success: function (response) {  
            $('#UserListcontent').empty();
            $('#UserListcontent').html(response);
            CreateDataTablePaging(); 
            MessageController.UnblockUI('#dtUserList');
        },
        failure: function (response) {
            MessageController.UnblockUI('#dtUserList');
            if (JSON.parse(response.responseText).Errors.length > 0) {
                MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
            } else {
                MessageController.Error(response.responseText, "Error");
            }
        },
        error: function (response) {
            MessageController.UnblockUI('#dtUserList');
            if (JSON.parse(response.responseText).Errors.length > 0) {
                MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
            } else {
                MessageController.Error(response.responseText, "Error");
            }
        }
    });
}

function CreateDataTablePaging() {
    if ($.fn.dataTable.isDataTable('#dtUserList')) {
        var table = $('#dtUserList').DataTable();
        table.destroy();
    } 
    $('#dtUserList').DataTable({
        'processing': true,
        'paging': true,
        "ordering": false,
        "searching": false,
        "lengthChange": false,
        "bAutoWidth": false,
        "Filter": false,
        "info": false,
        "bPaginate": false,
        "bLengthChange": false,
        //"language": {
        //    "lengthMenu": "Display _MENU_ records per page",
        //    "zeroRecords": "    Nothing found - sorry",
        //    "info": "    page _PAGE_ of _PAGES_",
        //    "infoEmpty": "    No records available",
        //    "infoFiltered": "(filtered from _MAX_ total records)"
        //},
        "bJQueryUI": true, //Enable smooth theme
        "sPaginationType": "full_numbers", //Enable smooth theme
        "sDom": 'lfrtip'
    });
    $('.dataTables_length').addClass('bs-select');
}

function OnSelectRadio(ele) {
    $("#txtInstructorId").attr("disabled", "disabled");
    $("#selectPlatform").attr("disabled", "disabled");
    $("#selectCourse").attr("disabled", "disabled");
    if (ele.id == "Instructor") {
        $("#txtInstructorId").removeAttr("disabled");
    } else if (ele.id == "Platform") {
        $("#selectPlatform").removeAttr("disabled");
    } else if (ele.id == "Course") {
        $("#selectCourse").removeAttr("disabled");
    }
} 

