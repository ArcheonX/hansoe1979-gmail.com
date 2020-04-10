var initialLoad = true;
(function ($) { 
    $(document).ready(function () {   
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
        $('select[name="selectCenter"]').on('change', function () {
            if (!$.isEmptyObject(validobj.submitted)) {
                validobj.form();
            }
            var centerId = $(this).val();
            $.ajax({
                url: "/Master/GetAllDivisions",
                type: "GET",
            }).done(function (items) { 
                var options = $('#selectDivision');
                options.empty();
                options.append($("<option />").val(null).text("Please select"));
                $.each(items, function () { 
                    if (this.ID_Center == centerId) {
                        options.append($("<option />").val(this.ID).text('(' + this.DivisionID + ') ' + this.DivisionName_EN));
                    }
                });
                $('select[name="selectDivision"]').val(null);
            }); 
            });
        $('select[name="selectDivision"]').on('change', function () {
            if (!$.isEmptyObject(validobj.submitted)) {
                validobj.form();
            } 
                var divisionId = $(this).val(); 
                $.ajax({
                    url: "/Master/GetAllDepartments",
                    type: "GET",
                }).done(function (items) { 
                    var options = $('#selectDepartment');
                    options.empty();
                    options.append($("<option />").val(null).text("Please select"));
                    $.each(items, function () {
                        if (this.ID_Division == divisionId) {
                            options.append($("<option />").val(this.ID).text('(' + this.DepartmentID + ') ' + this.DepartmentName_EN));
                        }
                    });
                    $('select[name="selectDepartment"]').val(null);
                }); 
            });
        $('select[name="selectDepartment"]').on('change', function () {
            if (!$.isEmptyObject(validobj.submitted)) {
                validobj.form();
            } 
                var departmentId = $(this).val();
                $.ajax({
                    url: "/Master/GetAllSections",
                    type: "GET",
                }).done(function (items) { 
                    var options = $('#selectSection');
                    options.empty();
                    options.append($("<option />").val(null).text("Please select"));
                    $.each(items, function () {
                        if (this.ID_Department == departmentId) {
                            options.append($("<option />").val(this.ID).text('(' + this.SectionID + ') ' + this.SectionName_EN));
                        }
                    });
                    $('select[name="selectSection"]').val(null);
                }); 
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
        })
            $('#btnUser').click(function () {
                $('#viewAllUser').attr("style", "border-width:thin;border-style:solid;display:block;width:100%");
                $('#UserEditor').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
                $('#MasterReport').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");

                $('#btnUser').attr("class","btn btn-info waves-effect waves-light");
                $('#btnMasterReport').attr("class", "btn btn-info btn-inactive waves-effect waves-light");
            });
            $('#btnMasterReport').click(function () {
                $('#viewAllUser').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
                $('#UserEditor').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
                $('#MasterReport').attr("style", "border-width:thin;border-style:solid;display:block;width:100%");

                $('#btnUser').attr("class", "btn btn-info btn-inactive waves-effect waves-light");
                $('#btnMasterReport').attr("class", "btn btn-info waves-effect waves-light");
            });
        $('#btnAddEmployee').click(function () { 
                CreateEditor($); 
                $('#viewAllUser').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
                $('#UserEditor').attr("style", "border-width:thin;border-style:solid;display:block;width:100%");
                $('#MasterReport').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
            });
            $('#btnBack').click(function () {
                $('#viewAllUser').attr("style", "border-width:thin;border-style:solid;display:block;width:100%");
                $('#UserEditor').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
                $('#MasterReport').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
            });
        $('#btnSaveEmployee').click(function (event) {
                event.preventDefault();
                if (!$("#frmUserEditor").valid()) {
                    return false;
            }
            MessageController.ConfirmCallback("Are you sure you want to do this?", "Confirm change", function (res) {
                if (res) {
                    var roleId = 0;
                    $('#dtUserRoleList > tbody  > tr').each(function () {
                        var self = $(this);
                        var roleId = self.find("td").eq(1).text(); //self.find("td").eq(1).find(":text").val();
                        var isSelected = self.find("td").eq(4).find("input[type='checkbox']").prop("checked");
                        if (isSelected) {
                            roleId = parseInt(roleId);
                        }
                    });
                    var empModel = {
                        IsEditMode: $("#userEditMode").val() == "true",
                        EmployeeId: $("#txtEmployeeId").val(),
                        EmployeeName: $("#txtEmployeeName").val(),
                        EmployeeSurName: $("#txtEmployeeSurName").val(),
                        JobGradeId: parseInt($("#selectJobGrade").val()),
                        JobTitleId: parseInt($("#selectJObTitle").val()),
                        Gender: $("#selectGender").val(),
                        CenterId: parseInt($("#selectCenter").val()),
                        Nationality: $("#txtNationality").val(),
                        DivisionId: parseInt($("#selectDivision").val()),
                        Email: $("#txtEmail").val(),
                        DepartmentId: parseInt($("#selectDepartment").val()),
                        Phone: $("#txtPhone").val(),
                        SectionId: parseInt($("#selectSection").val()),
                        Password: $("#txtPassword").val(),
                        Remark: $("#txtRemark").val(),
                        RoleId: roleId,
                        IsInstructer: $("#isInstructer").val() == "true",
                        IsSectionHead: $("#isSectionHead").val() == "true"
                    };
                    $.ajax({
                        type: empModel.IsEditMode ? "PUT" : "POST",
                        url: '/Account/Employee',
                        data: empModel,
                        success: function (response) {
                            $('#viewAllUser').attr("style", "border-width:thin;border-style:solid;display:block;width:100%");
                            $('#UserEditor').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
                            $('#MasterReport').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
                            SearchEmployee();
                        },
                        failure: function (response) {
                            MessageController.Error(response.responseText, "Error");
                        },
                        error: function (response) {
                            MessageController.Error(response.responseText, "Error");
                        }
                    });
                    return false; 
                } else {
                    return false; 
                }
            });  
          }); 
        $('#btnSearchEmployee').click(function () {  
            SearchEmployee();
        }); 
        if (initialLoad) { 
            $("input[type='datetime']").datepicker();
            $('select').select2({
                allowClear: true,
                closeOnSelect: true,
                theme: "bootstrap"
            });

            SearchEmployee(); 
            $.ajax({
                url: "/Master/GetAllDepartments",
                type: "GET", 
            }).done(function (items) { 
                var options = $('#selectFilterDepartment'); 
                var optionsreport = $('#selectMasterReportDepartment');
                options.append($("<option />").val(null).text("---All---"));
                optionsreport.append($("<option />").val(null).text("---All---"));

                $.each(items, function () {
                    options.append($("<option />").val(this.ID).text('(' + this.DepartmentID + ') ' + this.DepartmentName_EN));
                    optionsreport.append($("<option />").val(this.ID).text('('+this.DepartmentID + ') ' + this.DepartmentName_EN));
                }); 

                $('select[name="selectFilterDepartment"]').val(null);
                $('select[name="selectMasterReportDepartment"]').val(null);
            }); 
            $.ajax({
                url: "/Master/GetAllJobGrades",
                type: "GET",
            }).done(function (items) {
                var options = $('#selectMasterReportJobGrade');
                options.append($("<option />").val(null).text("---All---"));
                $.each(items, function () {
                    options.append($("<option />").val(this.ID).text(this.JobGradeName_EN)); 
                }); 
                $('select[name="selectMasterReportJobGrade"]').val(null);
            });

            initialLoad = false;
        }
    })
})(jQuery); 

function DeleteEmployee(employeeId) { 
    MessageController.WarningCallback("Are you sure you want to delete Employee '" + employeeId + "'?", "Confirm Delete!", function (res) { 
        if (res)
        {
            $.ajax({
                type: "Post",
                url: '/Account/RemoveEmployee',
                data: employeeId,
                success: function (response) { 
                    SearchEmployee();
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
        }
    });
}
function CreateEditor(employeeId) {
    $("#userEditMode").val("true");
    $('select[name="selectDivision"]').val(null);
    $('select[name="selectDepartment"]').val(null);
    $('select[name="selectSection"]').val(null);
    $('select[name="selectGender"]').val(null);
    $.ajax({
        url: "/Master/GetAllJobGrades",
        type: "GET",
    }).done(function (grades) {
        $('#selectJobGrade').select2();
        var options = $('#selectJobGrade');
        options.append($("<option />").val(null).text("Please select"));
        $.each(grades, function () {
            options.append($("<option />").val(this.ID).text(this.JobGradeName_EN));
        });
        $('select[name="selectJobGrade"]').val(null);
    });
    $.ajax({
        url: "/Master/GetAllJobTitles",
        type: "GET",
    }).done(function (JobTitles) {
        $('#selectJObTitle').select2();
        var options = $('#selectJObTitle');
        options.append($("<option />").val(null).text("Please select"));
        $.each(JobTitles, function () {
            options.append($("<option />").val(this.ID).text(this.JobTitleName_EN));
        });
        $('select[name="selectJObTitle"]').val(null);
    });
    $.ajax({
        url: "/Master/GetAllCenters",
        type: "GET",
    }).done(function (centers) {
        var options = $('#selectCenter');
        options.append($("<option />").val(null).text("Please select"));
        $.each(centers, function () {
            options.append($("<option />").val(this.ID).text('(' + this.CenterID + ') ' + this.CenterName_EN));
        });
        $('select[name="selectCenter"]').val(null);
    });
    $.ajax({
        url: "/Master/GetAllRoles",
        type: "GET",
    }).done(function (items) {
        var tbody = $('#dtUserRoleList').children('tbody');
        var table = tbody.length ? tbody : $('#dtUserRoleList');
        $.each(items, function () {
            var row = '<tr>' +
                '<td style = "text-align:center">' + this.RowIndex + '</td>' +
                '<td style = "text-align:center;display:none">' + this.RoleId + '</td>' +
                '<td style="text-align:left">' + this.RoleName_EN + '</td>' +
                '<td style="text-align:left">' + this.RoleDescription + '</td>' +
                '<td style="text-align:center;width:100px"><input type="checkbox" name="selectRole_' + this.RoleId + ' value="selectRole_' + this.RoleId + '"  id="selectRole_' + this.RoleId + '"/><label for="selectRole_' + this.RoleId + '"> </label> </td >' +
                '</tr>';
            //Add row
            table.append(row);
        });
    });
}

function CreateEditor() { 
    $("#userEditMode").val("false");
    $('select[name="selectDivision"]').val(null);
    $('select[name="selectDepartment"]').val(null);
    $('select[name="selectSection"]').val(null);
    $('select[name="selectGender"]').val(null);
    $.ajax({
        url: "/Master/GetAllJobGrades",
        type: "GET",
    }).done(function(grades) {
        $('#selectJobGrade').select2();
        var options = $('#selectJobGrade');
        options.append($("<option />").val(null).text("Please select"));
        $.each(grades, function() {
            options.append($("<option />").val(this.ID).text(this.JobGradeName_EN));
        });
        $('select[name="selectJobGrade"]').val(null);
    });
    $.ajax({
        url: "/Master/GetAllJobTitles",
        type: "GET",
    }).done(function(JobTitles) {
        $('#selectJObTitle').select2();
        var options = $('#selectJObTitle');
        options.append($("<option />").val(null).text("Please select"));
        $.each(JobTitles, function() {
            options.append($("<option />").val(this.ID).text(this.JobTitleName_EN));
        });
        $('select[name="selectJObTitle"]').val(null);
    });
    $.ajax({
        url: "/Master/GetAllCenters",
        type: "GET",
    }).done(function(centers) { 
        var options = $('#selectCenter');
        options.append($("<option />").val(null).text("Please select"));
        $.each(centers, function() {
            options.append($("<option />").val(this.ID).text('(' + this.CenterID + ') ' + this.CenterName_EN));
        });
        $('select[name="selectCenter"]').val(null);
    });
    $.ajax({
        url: "/Master/GetAllRoles",
        type: "GET",
    }).done(function (items) {  
        var tbody = $('#dtUserRoleList').children('tbody');
        var table = tbody.length ? tbody : $('#dtUserRoleList');   
        $.each(items, function () { 
            var row = '<tr>' +
                '<td style = "text-align:center">' + this.RowIndex + '</td>' +
                '<td style = "text-align:center;display:none">' + this.RoleId + '</td>' +
                '<td style="text-align:left">' + this.RoleName_EN+'</td>' +
                '<td style="text-align:left">' + this.RoleDescription+'</td>' +
                '<td style="text-align:center;width:100px"><input type="checkbox" name="selectRole_' + this.RoleId + ' value="selectRole_' + this.RoleId + '"  id="selectRole_' + this.RoleId + '"/><label for="selectRole_' + this.RoleId +'"> </label> </td >' +
                '</tr>'; 
            //Add row
            table.append(row);  
        }); 
    }); 
}

function SearchEmployee() { 
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
        },
        failure: function (response) {
            alert(response.responseText);
        },
        error: function (response) {
            alert(response.responseText);
        }
    }); 
}

function CreateDataTablePaging() {
    $('#dtUserList').DataTable({
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
