var initialLoad = true;
(function ($) { 
    $(document).ready(function () {   
        CreateFrmValidation($);
        $('select[name="selectCenter"]').on('change', function () {
            if (!$(this).valid()) return;
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
            if (!$(this).valid()) return;
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
            if (!$(this).valid()) return;
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
                    $('select[name="selectDepartment"]').val(null);
                }); 
        }); 
        $('select[name="selectSection"]').on('change', function () {
            if (!$(this).valid()) return;
        });
        $('select[name="selectJobGrade"]').on('change', function () {
            if (!$(this).valid()) return;
        });
        $('select[name="selectJObTitle"]').on('change', function () {
            if (!$(this).valid()) return;
        });
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
            $('#btnSaveEmployee').click(function () {
                if (!$("#frmUserEditor").valid()) return;
            }); 
        $('#btnSearchEmployee').click(function () {  
            SearchEmployee($);
        }); 
        if (initialLoad) { 
            $("input[type='datetime']").datepicker();
            $('select').select2({
                allowClear: true,
                closeOnSelect: true,
                theme: "bootstrap"
            });

            SearchEmployee($); 
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
function CreateFrmValidation($) {
    $("#frmUserEditor").validate({
        rules: {
            EmployeeID: "required",
            Name: "required",
            Surname: "required",
            ID_JobGrade: "required",
            ID_JobTitle: "required",
            Gender: "required",
            ID_Center: "required",
            ID_Division: "required",
            ID_Department: "required",
            "LDMS_M_UserRole.ID_Section": "required",
            Email: {
                required: true,
                email: true
            },
            "LDMS_M_UserRole.Password": {
                required: true,
                minlength: 8,
            }
        },
        messages: {
            EmployeeID: {
                required: "Please enter Employee ID",
            },
            Name: {
                required: "Please enter Name",
            },
            Surname: {
                required: "Please enter Surname",
            },
            Email: {
                required: "Please enter email address",
                email: "Please enter a valid email address.",
            },
            ID_JobGrade: {
                required: "Please Enter Job Grade"
            },
            ID_JobTitle: {
                required: "Please Enter Job Title"
            },
            ID_Center: {
                required: "Please Enter Center"
            },
            ID_Division: {
                required: "Please Enter Division"
            },
            ID_Department: {
                required: "Please Enter Department"
            },
            Gender: {
                required: "Please Enter Gender"
            }
        },
        highlight: function(element, errorClass, validClass) {
            var elem = $(element);
            if (elem.hasClass("select2-hidden-accessible")) {
                $("#select2-" + elem.attr("id") + "-container").parent().addClass(errorClass);
            }
            else {
                elem.addClass(errorClass);
            }
        },
        unhighlight: function(element, errorClass, validClass) {
            var elem = $(element);
            if (elem.hasClass("select2-hidden-accessible")) {
                $("#select2-" + elem.attr("id") + "-container").parent().removeClass(errorClass);
            }
            else {
                elem.removeClass(errorClass);
            }
        },
        errorPlacement: function(error, element) {
            var elem = $(element);
            if (elem.hasClass("select2-hidden-accessible")) {
                element = $("#select2-" + elem.attr("id") + "-container").parent();
                error.insertAfter(element);
            }
            else {
                error.insertAfter(element);
            }
        }
    });
}

function CreateEditor($) { 
    $('select[name="selectDivision"]').val(null);
    $('select[name="selectDepartment"]').val(null);
    $('select[name="selectSection"]').val(null);
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
                '<td style = "text-align:center">' + this.RowIndex+'</td>' +
                '<td style="text-align:left">' + this.RoleName_EN+'</td>' +
                '<td style="text-align:left">' + this.RoleDescription+'</td>' +
                '<td style="text-align:center;width:100px"><input type="checkbox" name="selectRole_' + this.RoleId + ' value="selectRole_' + this.RoleId + '"  id="selectRole_' + this.RoleId + '"/><label for="selectRole_' + this.RoleId +'"> </label> </td >' +
                '</tr>'; 
            //Add row
            table.append(row);  
        }); 
    });
    //$("#table_id  tbody").remove();
}

function SearchEmployee($) { 
    var deps = $('#selectFilterDepartment').val();
            var searmodel = {
                    EmployeeId: $("#txtFilterEmployeeID").val(),
                    EmployeeName: $("#txtFilterEmployeeName").val(),
                    Departments: deps != null && deps != undefined ? deps.join(",") : null
                }; 
            $.ajax({
                url: "/Account/SearchEmployee",
                type: "GET",
                data: searmodel,
            })
                .done(function (partialViewResult) { 
                    $('#UserListcontent').empty();
                    $('#UserListcontent').html(partialViewResult);
                    CreateDataTablePaging($);
        });
}

function CreateDataTablePaging($) {
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
