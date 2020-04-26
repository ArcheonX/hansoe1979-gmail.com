var topics = [];
var employees = [];
var tmpselection = [];
(function ($) {
    "use strict";
    $(document).ready(function () {
        $("input[type='datetime']").datepicker();
        $('select').select2({
            allowClear: true,
            closeOnSelect: true,
            theme: "bootstrap"
        });
        $('#btnBack').click(function () {
            window.location.href = "Index"; 
        });
        $('select[name="selectDepartment"]').on('change', function () {
            var departmentId = $(this).val();
            LoadDepartmentSection(departmentId);
        });
        LoadCourse();
        CreateEmployeePopup(); 
        topics.push({
            Index: 0,
            Topic: "",
            IsSpecial: false,
            ID_Course: 0,
            Action: "",
        });
        topics.pop();
        RefreshTopic();

        employees.push({
            Index: 0,
            EmployeeId: "",
            EmployeeName: false, 
            Action: "",
        });
        employees.pop();
        RefreshExployees();
        LoadJobGrades();
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
                LoadJobTitle();
                SearchEmployee(); 
            },
            beforeClose: function () {
                tmpselection = []; 
            }
        }
    });

    $(document).on('click', '.popup-modal-dismiss', function (e) {
        e.preventDefault();
        $.magnificPopup.close();
    });
}
function DeleteTopic(rowindex) { 
    MessageController.ConfirmCallback("Are you sure you want to do delete this Topic?", "Confirm Delete Topic", function (res) {
        if (res) { 
            topics = topics.where((item) => {
                return item.Index != rowindex;
            });
            var index = 1;
            topics.forEach(item => {
                item.Index = index;
                index++;
            });
            RefreshTopic(); 
        } 
    }); 
}
function AddTopic(item) { 
    var index = (topics.length + 1);
    if (index > 20) {
        MessageController.Warning("Knowledge Topic maximum exceed (Maximum = 20 Topic)", "Maximum exceed");
        return;
    } 
    var text = "";
    var special = false;
    var id_course = $("#selectCourse").val();
    if (id_course != 0 && id_course != null && id_course != undefined && id_course > 0) {
        var data = $("#selectCourse").select2('data');
        text = data[0].text;  
        $('select[name="selectCourse"]').val(null).trigger('change');
        special = false;
    } else{
        text = $("#txtSpecialTopic").val();
        $("#txtSpecialTopic").val("");
        special = true;
    }    
    if (topics.length > 0) {
        var isDupicatTopicName = topics.any((item) => {
            return item.Topic.toLowerCase() == text.toLowerCase();
        });
        if (isDupicatTopicName) {
            MessageController.Warning("Knowledge Topic already exitst", "Already exitst");
            return;
        }
    }
    if (text != null && text != undefined && text != "") {
        var topic = {
            Index: index,
            Topic: text,
            IsSpecial: special, 
            ID_Course: id_course,
            Action: "",
        }; 
        topics.push(topic); 
        RefreshTopic(); 
    } 
}
function RefreshTopic() {
    if ($.fn.dataTable.isDataTable('#dtTopic')) {
        var table = $('#dtTopic').DataTable();
        table.destroy();
    }  
   var tableTopic= $('#dtTopic').DataTable({
        'data': topics,
        'columns': [
            { data: 'Index', title:'#' },
            { data: 'Topic', title: 'Topic' },
            {
                "mData": "IsSpecial",
                title: 'Special',
                "mRender": function (data, type, row) {
                    if (data == true) {
                        return '<a style="cursor: none" ><img src="../assets/images/svg/icon-check-green.svg" class="light-logo" alt="homepage" /> </a>';
                    }
                    else {
                        return '<a style="cursor: none"><img src="../assets/images/svg/icon-cross.svg" class="light-logo" alt="homepage" /> </a>';
                    }
                }
            },
            {
                "mData": "Index",
                "mRender": function(data, type, row) {
                    return '<a onclick="DeleteTopic(' + data + ')" style="cursor: pointer" id="btnDeleteTopic"><img src="../assets/images/svg/icon-delete-red.svg" class="light-logo" alt="homepage" /> </a>';
                }
            }
       ], 
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
        "bJQueryUI": true,
        "sPaginationType": "full_numbers",
        "sDom": 'lfrtip',
       "pageLength": 10,
       "language": {
           "zeroRecords": "No Knowledge Topic"
       }
    });
    $('.dataTables_length').addClass('bs-select');
    tableTopic.page('last').draw('page');
}

function OnSelectEmp(employeeId, element) {
    if (document.getElementById('selectEmployee_' + employeeId).checked) {
        tmpselection.push(employeeId);
    } else {
        tmpselection = tmpselection.where((item) => {
            return item != employeeId;
        }); 
    } 
}
function OnSelectEmployee() {

    if (tmpselection.length > 20) {
        MessageController.Warning("Target Employee maximum exceed (Maximum = 20 Topic)", "Maximum exceed");
        return;
    }
    employees = [];
    var table = $('#dtSelectEmployee').DataTable();
    var rowindex = 1; 
    var data = table.rows().data();  
    data.each(function (value, index) { 
        var emp = tmpselection.any((item) => {
            return item == value.EmployeeId;
        });
        if (emp) {
            employees.push({
                Index: rowindex,
                EmployeeId: value.EmployeeId,
                EmployeeName: value.EmployeeName,
                Action: "",
            });
            rowindex++;
        } 
    });
 
    RefreshExployees();
    $("#search-target-employee-modal").magnificPopup('close');
}

function RefreshExployees() {
    if ($.fn.dataTable.isDataTable('#dtEmployee')) {
        var table = $('#dtEmployee').DataTable();
        table.destroy();
    }
    var tableTopic = $('#dtEmployee').DataTable({
        'data': employees,
        'columns': [
            { data: 'Index', title: '#' },
            { data: 'EmployeeId', title: 'Employee Id' },
            { data: 'EmployeeName', title: 'Employee Name' } ,
            {
                "mData": "Index",
                "mRender": function (data, type, row) {
                    return '<a onclick="DeleteEmployee(' + data + ')" style="cursor: pointer" id="btnDeleteEmployee"><img src="../assets/images/svg/icon-delete-red.svg" class="light-logo" alt="homepage" /> </a>';
                }
            }
        ], 
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
        "bJQueryUI": true,
        "sPaginationType": "full_numbers",
        "sDom": 'lfrtip',
        "pageLength": 20,
         "language": { 
              "zeroRecords": "No Target Employee" 
        },
    });
    $('.dataTables_length').addClass('bs-select');
    tableTopic.page('last').draw('page');
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
        success: function (response) {
            options.append($("<option />").val(null).text("---All---"));
            $.each(response.Data, function () {
                options.append($("<option />").val(this.ID_Department).text('(' + this.DepartmentID + ') ' + this.DepartmentName_EN));
            });
            options.val(null).trigger('change');
        },
        failure: function (response) {
            if (JSON.parse(response.responseText).Errors.length > 0) {
                MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
            }
            else {
                MessageController.Error(response.responseText, "Error");
            }
        },
        error: function (response) {
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
    var options2 = $('#selectLevel');
    options.empty();
    options2.empty();

    $.ajax({
        type: "GET",
        url: "/Master/GetAllJobGrades",
        success: function (response) {
            options.append($("<option />").val(null).text("---All---"));
            options2.append($("<option />").val(null).text("---All---"));
            $.each(response.Data, function () {
                options.append($("<option />").val(this.ID).text(this.JobGradeName_EN));
                options2.append($("<option />").val(this.ID).text(this.JobGradeName_EN));
            });
            options.val(null).trigger('change');
            options2.val(null).trigger('change');
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
    var searmodel = {
        EmployeeId: $("#txtEmployeeID").val(),
        EmployeeName: $("#txtEmployeeName").val(),
        Departments: $("#selectDepartment").val(),
        Sections: $("#selectSection").val(),
        JobGrades: $("#selectJobGrade").val(),
        JobTitles: $("#selectJobTitle").val(),
        Levels: "",
    }
    MessageController.BlockUI({ boxed: true, target: '#search-target-employee-modal' });
    if ($.fn.dataTable.isDataTable('#dtSelectEmployee')) {
        var table = $('#dtSelectEmployee').DataTable();
        table.destroy();
    }
    $.ajax({
        type: "GET",
        url: "/Employee/SearchEmployee",
        data: searmodel,
        success: function (response) { 
            $('#dtSelectEmployee').DataTable({
                'data': response.Data,
                'columns': [
                    { data: 'RowIndex', title: '#' },
                    { data: 'EmployeeId', title: 'Employee Id' },
                    { data: 'EmployeeName', title: 'Employee Name' },
                    { data: 'DepartmentName', title: 'Department' },
                    { data: 'SectionName', title: 'Section' },
                    { data: 'JobGrade', title: 'Job Grade' },
                    { data: 'JobTitle', title: 'Job Title' },
                    {
                        "mData": "EmployeeId",
                        "mRender": function (data, type, row) {
                            var isSelect = employees.any((item) => {
                                return data == value.EmployeeId;
                            });
                            if (isSelect) {
                                return '<input type = "checkbox" checked="checked"  onchange="OnSelectEmp(' + data + ', this);" class="chk-select-employee" name = "selectEmployee_' + data + '" value = "' + data + '"  id = "selectEmployee_' + data + '" /> <label for="selectEmployee_' + data + '"> </label>';
                            } else {
                                return '<input type = "checkbox"  onchange="OnSelectEmp(' + data + ', this);" class="chk-select-employee" name = "selectEmployee_' + data + '" value = "' + data + '"  id = "selectEmployee_' + data + '" /> <label for="selectEmployee_' + data + '"> </label>';
                            }
                        }
                    }
                ],  
                "columnDefs": [
                    { "orderable": false, "targets": 0, "className": "text-center", "width": "4%" },
                    { "orderable": false, "targets": 1, "className": "text-center" },
                    { "orderable": false, "targets": 2, "className": "text-center" },
                    { "orderable": false, "targets": 3, "className": "text-center" },
                    { "orderable": false, "targets": 4, "className": "text-center" },
                    { "orderable": false, "targets": 5, "className": "text-center" },
                    { "orderable": false, "targets": 6, "className": "text-center" },
                    { "orderable": false, "targets": 7, "className": "text-center" }

                ],
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
                "bJQueryUI": true, //Enable smooth theme
                "sPaginationType": "full_numbers", //Enable smooth theme
                "sDom": 'lfrtip',
                "pageLength": 5,
                "language": {
                    "zeroRecords": "No Employee"
                }
            });
            $('.dataTables_length').addClass('bs-select');
            MessageController.UnblockUI('#search-target-employee-modal');
        }
    });
}