(function ($) {
    "use strict";
    $(document).ready(function () { 
    //$("input[type='datetime']").datepicker();
    $('select').select2({
        allowClear: true,
        closeOnSelect: true,
        theme: "bootstrap"
    }); 
        $('#btnEditSection').click(function () {
            $('#viewAllUser').attr("style", "width: 100%; margin-top: -15px; display: none;");
            $('#editSection').attr("style", "width: 100%; margin-top: -15px; display: block;");
            LoadSection();
        });
        $('#btnBack').click(function () {
            $('#viewAllUser').attr("style", "width: 100%; margin-top: -15px; display: block;");
            $('#editSection').attr("style", "width: 100%; margin-top: -15px; display: none;");
            LoadDepartmentSection();
        });

        $("#btnClear").click(function () {
            MessageController.WarningCallback("Are you sure you want to dicard changes'?", "Confirm Delete!", function (res) {
                if (res) {
                    $("#txtSectionId").val(null);
                    $("#txtSectionName").val(null);
                }
            })
        });
        $("#btnCancel").click(function (event) {
            MessageController.ConfirmCallback("Are you sure you want to cancel changes", "Confirm Cancel Change", function (res) {
                if (!res) {
                    return false;
                } 
                LoadEmployees();
            });
        });
        $('#btnSavSection').click(function (event) {
            event.preventDefault();
            if (!$("#frmSectionEditor").valid()) {
                return false;
            }

            if ($("#txtSectionName").val() == undefined || $("#txtSectionName").val() == null || $("#txtSectionName").val() == "") {
                MessageController.Error("Please Enter Section Name", "Validation Failed");
                return false;
            }

            if ($("#txtSectionId").val() == undefined || $("#txtSectionId").val() == null || $("#txtSectionId").val() == "") {
                MessageController.Error("Please Enter Section Abbreviation", "Validation Failed");
                return false;
            }
            MessageController.ConfirmCallback("Are you sure you want to do this?", "Confirm change", function (res) {
                if (!res) {
                    return false;
                }
                var model = {
                    ID: $("#sectionId").val(),
                    SectionID: $("#txtSectionId").val(),
                    ID_Department: CookiesController.getCookie("DEPARTMENTID"),
                    SectionName_EN: $("#txtSectionName").val(),
                    SectionName_TH: $("#txtSectionName").val(),
                    Description: "",
                    IsActive: true
                }
                if (model.ID <= 0
                    || model.ID == null
                    || model.ID == "null"
                    || model.ID == undefined) {
                    CreateSection(model);
                } else {
                    UpdateSection(model);
                }
            });
        });
        $("#btnSearchEmployee").click(function (event) {
            LoadEmployees();
        }); 
        $("#btnEmpListSave").click(function (event) {
            var models = [];
            $('#dtListEmployee > tbody  > tr').each(function () { 
                var self = $(this);
                var employeeId = self.find("td").eq(1).text();
                var sectionHead = self.find("td").eq(5).find("input[type='checkbox']").prop("checked");
                var sectionId = self.find("td").eq(6).find("select option:selected").val();
                var model = {
                    EmployeeId: employeeId,
                    IsSectionHead: sectionHead,
                    SectionId: sectionId 
                };
                models.push(model);
            });
            console.log(models);
        });  
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
        LoadEmployees(); 
        LoadDepartmentSection();
    })
})(jQuery);
function LoadSection() {
    $.ajax({
        type: "GET",
        url: '/Organization/Sections',
        data: {
            'departmentId': CookiesController.getCookie("DEPARTMENTID")
        },
        success: function (response) {
            $('#dtSectionRows').empty();
            $('#dtSectionRows').html(response);
            try {
                if (!$.fn.dataTable.isDataTable('#dtSectionRows')) {
                    $('#dtSectionRows').DataTable({
                        "paging": true,
                        "ordering": false,
                        "searching": false,
                        "lengthChange": false,
                        "bAutoWidth": true,
                        "Filter": true,
                        "info": false,
                        "bPaginate": false,
                        "bLengthChange": false,
                        "sErrMode": "console",
                        "language": {
                            "lengthMenu": "Display _MENU_ records per page",
                            "zeroRecords": "    Nothing found - sorry",
                            "info": "    page _PAGE_ of _PAGES_",
                            "infoEmpty": "    No records available",
                            "infoFiltered": "(filtered from _MAX_ total records)"
                        }
                    });
                }
                $('.dataTables_length').addClass('bs-select');
            } catch (e) {
                return false;
            }
        },
        failure: function (response) { 
            MessageController.Error(response.responseText, "Error");
        },
        error: function (response) { 
            MessageController.Error(response.responseText, "Error");
        }
    });
}
function LoadEmployees() {
    $.ajax({
        type: "GET",
        url: '/Organization/Employees',
        data: {
            'departmentId': CookiesController.getCookie("DEPARTMENTID"),
            'sectionId': $("#selectSection").val(),
            'keyword': $("#txtKeyword").val()
        },
        success: function (response) {
            $('#dtListEmployee').empty();
            $('#dtListEmployee').html(response);
            try {
                if (!$.fn.dataTable.isDataTable('#dtListEmployee')) {
                    $('#dtListEmployee').DataTable({
                        "paging": true,
                        "ordering": false,
                        "searching": false,
                        "lengthChange": false,
                        "bAutoWidth": true,
                        "Filter": true,
                        "info": false,
                        "bPaginate": false,
                        "bLengthChange": false,
                        "sErrMode": "console",
                        "language": {
                            "lengthMenu": "Display _MENU_ records per page",
                            "zeroRecords": "    Nothing found - sorry",
                            "info": "    page _PAGE_ of _PAGES_",
                            "infoEmpty": "    No records available",
                            "infoFiltered": "(filtered from _MAX_ total records)"
                        }
                    });
                }
                $('.dataTables_length').addClass('bs-select');
            } catch (e) {
                return false;
            }
        },
        failure: function (response) {
            MessageController.Error(response.responseText, "Error");
        },
        error: function (response) {
            MessageController.Error(response.responseText, "Error");
        }
    });
}
function LoadDepartmentSection() {
    $.ajax({
        type: "GET",
        url: '/Organization/SectionByDepartment',
        data: {
            'departmentId': CookiesController.getCookie("DEPARTMENTID")
        },
        success: function (response) {
            var options = $('#selectSection');
            options.empty();
            options.append($("<option />").val(null).text("---All---")); 
            $.each(response.Data, function () {
                options.append($("<option />").val(this.ID).text('(' + this.SectionID + ') ' + this.SectionName_EN)); 
            });
            Array.prototype.slice.call(document.querySelectorAll('select[id*="selectSection"]'))
                .forEach(function (element) {
                    var selectValue = element.value;
                    var options = $("#" + element.id); 
                    options.empty();
                    if (element.id != 'selectSection') {
                        options.append($("<option />").val(null).text("---None---"));
                    } else {
                        options.append($("<option />").val(null).text("---All---"));
                    }
                    $.each(response.Data, function () {
                        if (this.ID == selectValue) {
                            options.append($("<option  selected='selected' />").val(this.ID).text('(' + this.SectionID + ') ' + this.SectionName_EN));
                        } else {
                            options.append($("<option />").val(this.ID).text('(' + this.SectionID + ') ' + this.SectionName_EN));
                        }
                    });

              
            }); 
        },
        failure: function (response) {
            MessageController.Error(response.responseText, "Error");
        },
        error: function (response) {
            MessageController.Error(response.responseText, "Error");
        }
    });
}
function EditSection(id, code, name) {
    $("#txtSectionId").val(code);
    $("#txtSectionName").val(name); 
    $("#sectionId").val(id); 
}
function DeleteSection(id, code, name) {
    MessageController.WarningCallback("Are you sure you want to delete Section '" + code + ' ' + name + "'?", "Confirm Delete!", function (res) {
        if (res) { 
            $.ajax({
                type: "Delete",
                url: '/Organization/DeleteSection',
                data: { 'sectionId': id },
                success: function (response) {
                    LoadSection();
                },
                failure: function (response) {
                    MessageController.Error(response.responseText, "Error");
                },
                error: function (response) {
                    MessageController.Error(response.responseText, "Error");
                }
            });
        }
    });
}
function CreateSection(sectiomModel) { 
    $.ajax({
        type: "POST",
        url: '/Organization/CreateSection',
        data: sectiomModel,
        success: function (response) {
            LoadSection();
            $("#txtSectionId").val(null);
            $("#txtSectionName").val(null);
            $("#sectionId").val(null); 
        },
        failure: function (response) {
            MessageController.Error(response.responseText, "Error");
        },
        error: function (response) {
            MessageController.Error(response.responseText, "Error");
        }
    });
}
function UpdateSection(sectiomModel) { 
    $.ajax({
        type: "POST",
        url: '/Organization/UpdateSection',
        data: sectiomModel,
        success: function (response) {
            LoadSection(); 
            $("#txtSectionId").val(null);
            $("#txtSectionName").val(null);
            $("#sectionId").val(null); 
        },
        failure: function (response) {
            MessageController.Error(response.responseText, "Error");
        },
        error: function (response) {
            MessageController.Error(response.responseText, "Error");
        }
    });
}
 