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
            var tbody = $('#dtCourse').children('tbody');
            var table = tbody.length ? tbody : $('#dtEmployee');
            table.empty();
            $.each(response.Data, function () {
                var row = '<tr>' +
                    '<td style="text-align:left;">#</td>' +
                    '<td style="text-align:center;">' + this.EmployeeID + '</td>' +
                    '<td style="text-align:center;">' + this.Name + '</td > ' +
                    '<td style="text-align:center;">' + this.LDMS_M_Department.Name + '</td > ' +
                    '<td style="text-align:center;"> ' + this.EmployeeID + '</td > ' +
                    '<td style="text-align:center;"> ' + this.EmployeeID + '</td > ' +
                    '<td style="text-align:center;"> ' + this.EmployeeID + '</td > ' +
                    '<td style="text-align:left;" > Select</td > ' +
                    '<input type="checkbox" name="selectEmployee' + this.EmployeeID + '" value="' + this.EmployeeID + '"  id="selectEmployee_' + this.EmployeeID + '"  /><label for="selectEmployee_' + this.EmployeeID + '"> </label>' +
                    '</tr>';
                table.append(row);
                //var row = '<tr>' +
                //    '<td style="text-align:center;">' + this.ID + '</td>' +
                //    '<td style="text-align:left;">' + this.CourseName + '</td>' +
                //    '<td style="text-align:right;"><input type="checkbox" name="selectCourse' + this.ID + '" value="' + this.CourseID + '"  id="selectCourse_' + this.ID + '"  /><label for="selectselectCourse_' + this.ID + '"> </label></td >' +
                //    '</tr>';
                //table.append(row);
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
            MessageController.UnblockUI('#search-target-employee-modal');
        }
    });
}