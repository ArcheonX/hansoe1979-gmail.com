(function ($) {
    "use strict";
    $(document).ready(function () {
        $("input[type='datetime']").datepicker();
        $('select').select2({
            allowClear: true,
            closeOnSelect: true,
            theme: "bootstrap"
        });
        $('#btnAddCompetence').click(function () {
            $('#pnAnalytic').attr("style", "display:none;width:100%");
            $('#pnAddnalytic').attr("style", "display:block;width:100%");
        });
        $('select[name="selectDepartment"]').on('change', function () { 
            var departmentId = $(this).val();
            LoadDepartmentSection(departmentId);
        });
        LoadCourse();
        CreateEmployeePopup();
    })
})(jQuery);
function CreateEmployeePopup() {
    $('.search-target-employee-modal').magnificPopup({
        type: 'inline',
        preloader: false,
        modal: true,
        callbacks: {
            beforeOpen: function () {
                LoadDepartment();
                LoadJobGrades();
                LoadJobTitle(); 
                SearchEmployee();

                //$("#selectCourseStatus").val(1).trigger('change');
                //$("#selectLearnMethod").val(null).trigger('change');
                //SearchEmployee();
            }
        }
    });

    $(document).on('click', '.popup-modal-dismiss', function (e) {
        e.preventDefault();
        $.magnificPopup.close();
    });
}
function AddTopic(item) {
    var tbody = $('#dtTopic').children('tbody');
    var table = tbody.length ? tbody : $('#dtTopic');

    var row = '<tr>' +
        '<td style="text-align:center;width:10%"><label class="LabelCaption">1</label></td>' +
        '<td style="text-align:center;width:80%"><input type="text"  title="Please Enter Employee ID" id="txtEmployeeId" style="width: 100%" class="form-control required" /> </td>' +
        '<td style="text-align:center;width:10%"><button id="btnSearchEmployee" class="btn btn-outline-danger waves-effect waves-light" style="width:100%"><img style="width:35px;height:30px" src="../assets/images/svg/cancel.svg" /></button>' +
        '</td></tr>';
    table.append(row);
}
function LoadCourse() {
    var options = $('#selectCourse');
    options.empty();
    $.ajax({
        type: "GET",
        url: '/Master/GetAllCourses',
        success: function (response) {         
            options.append($("<option />").val(null).text("Please Select"));
            $.each(response.Data, function () {
                options.append($("<option />").val(this.ID).text('(' + this.CourseID + ') ' + this.CourseName));
            });
            options.val(null).trigger('change');
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
function LoadDepartment() {
    var options = $('#selectDepartment');
    options.empty();
    $.ajax({
        type: "GET",
        url: "/Master/GetAllDepartments",
        success: function(response) {
            options.append($("<option />").val(null).text("---All---"));
            $.each(response.Data, function() {
                options.append($("<option />").val(this.ID_Department).text('(' + this.DepartmentID + ') ' + this.DepartmentName_EN));
            });
            options.val(null).trigger('change');
        },
        failure: function(response) {
            if (JSON.parse(response.responseText).Errors.length > 0) {
                MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
            }
            else {
                MessageController.Error(response.responseText, "Error");
            }
        },
        error: function(response) {
            if (JSON.parse(response.responseText).Errors.length > 0) {
                MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
            }
            else {
                MessageController.Error(response.responseText, "Error");
            }
        }
    });
}
function LoadJobGrades() {
    var options = $('#selectJobGrade');
    options.empty();
    $.ajax({
        type: "GET",
        url: "/Master/GetAllJobGrades",
        success: function (response) { 
            options.append($("<option />").val(null).text("---All---"));
            $.each(response.Data, function () {
                options.append($("<option />").val(this.ID).text(this.JobGradeName_EN));
            });
            options.val(null).trigger('change');
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
function LoadJobTitle() {
    var options = $('#selectJobTitle');
    options.empty();
    $.ajax({
        type: "GET",
        url: "/Master/GetAllJobTitles",
        success: function (response) {
            options.append($("<option />").val(null).text("--All--"));
            $.each(response.Data, function () {
                options.append($("<option />").val(this.ID).text(this.JobTitleName_EN));
            });
            options.val(null).trigger('change');
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
function LoadDepartmentSection(departmentId) {
    var options = $('#selectSection');
    options.empty(); 
    $.ajax({
        type: "GET",
        url: '/Master/GetAllSectionsByDepartment',
        data: {
            'departmentId': departmentId
        },
        success: function (response) {         
            options.append($("<option />").val(null).text("---All---"));
            $.each(response.Data, function () {
                options.append($("<option />").val(this.ID_Section).text('(' + this.SectionID + ') ' + this.SectionName_EN));
            }); 
            options.val(null).trigger('change');
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
function SearchEmployee() {
    var table = $('#dtEmployee').DataTable();
    table.destroy();
    var searmodel = {
        EmployeeId: "",
        EmployeeName: "",
        Departments: "",
        Sections: "",
        JobGrades: "",
        JobTitles: "",
        Levels: "",
    }
    MessageController.BlockUI({ boxed: true, target: '#search-target-employee-modal' });
    $.ajax({
        type: "GET",
        url: "/Employee/SearchEmployee",
        data: searmodel,
        success: function (response) {
            var tbody = $('#dtEmployee').children('tbody');
            var table = tbody.length ? tbody : $('#dtEmployee');
            table.empty();
            $.each(response.Data, function () {
                var row = '<tr>' +
                    '<td style="text-align:left;">' + this.RowIndex + '</td>' +
                    '<td style="text-align:center;">' + this.EmployeeId + '</td>' +
                    '<td style="text-align:center;">' + this.EmployeeName + '</td > ' +
                    '<td style="text-align:center;">' + this.DepartmentName + '</td > ' +
                    '<td style="text-align:center;"> ' + this.SectionName + '</td > ' +
                    '<td style="text-align:center;"> ' + this.JobGrade + '</td > ' +
                    '<td style="text-align:center;"> ' + this.JobTitle + '</td > ' +
                    '<td style="text-align:left;"><input type = "checkbox" name = "selectEmployee_' + this.EmployeeId + '" value = "' + this.EmployeeId + '"  id = "selectEmployee_' + this.EmployeeId + '" /> <label for="selectEmployee_' + this.EmployeeId + '"> </label></td> ' +
                    '</tr>';
                table.append(row);
            });
            $('#dtEmployee').DataTable({
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
            MessageController.UnblockUI('#search-target-employee-modal');
        }
    });
}