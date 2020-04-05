(function ($) { 
    $(document).ready(function () {
            CreateDataTablePaging($);
            $('.dataTables_length').addClass('bs-select'); 
            $('select[name="selectCenter"]').on('change', function () {
                var centerId = $(this).val();
                $('select[name="selectDivision"]').empty();
                var divisions = JSON.parse('@Html.Raw(Json.Serialize(ViewData["Division"]))');
                for (var i = 0; i < divisions.length; i++) {
                    if (divisions[i].ID_Center == centerId) {
                        $('select[name="selectDivision"]').append('<option  value="' + divisions[i].ID + '">' + divisions[i].DivisionID + ' ' + divisions[i].DivisionName_EN + '</option>');
                    }
                }
                $('select[name="selectDivision"]').val(null);
                $('select[name="selectDepartment"]').val(null);
                $('select[name="selectSection"]').val(null);
            });
            $('select[name="selectDivision"]').on('change', function () {
                var divisionId = $(this).val();
                $('select[name="selectDepartment"]').empty();
                var divisions = JSON.parse('@Html.Raw(Json.Serialize(ViewData["Department"]))');
                for (var i = 0; i < divisions.length; i++) {
                    if (divisions[i].ID_Division == divisionId) {
                        $('select[name="selectDepartment"]').append('<option  value="' + divisions[i].ID + '">' + divisions[i].DepartmentID + ' ' + divisions[i].DepartmentName_EN + '</option>');
                    }
                }
                $('select[name="selectDepartment"]').val(null);
                $('select[name="selectSection"]').val(null);
            });
            $('select[name="selectDepartment"]').on('change', function () {
                var departmentId = $(this).val();
                $('select[name="selectSection"]').empty();
                var divisions = JSON.parse('@Html.Raw(Json.Serialize(ViewData["Section"]))');
                for (var i = 0; i < divisions.length; i++) {
                    if (divisions[i].ID_Department == departmentId) {
                        $('select[name="selectSection"]').append('<option  value="' + divisions[i].ID + '">' + divisions[i].SectionID + ' ' + divisions[i].SectionName_EN + '</option>');
                    }
                }
                $('select[name="selectSection"]').val(null);
            });
            $('select[name="selectJobGrade"]').val(null);
            $('select[name="selectJObTitle"]').val(null);
            $('select[name="selectGender"]').val(null);
            $('select[name="selectCenter"]').val(null);
            $('select[name="selectDepartment"]').val(null);
            $('select[name="selectDivision"]').val(null);
            $('select[name="selectSection"]').val(null);

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
            var searmodel = {
                EmployeeId: $("#txtFilterEmployeeID").val(),
                EmployeeName: $("#txtFilterEmployeeName").val(),
                Departments: []
            };
            var values = $('#selectFilterDepartment').val();
            values.forEach(myFunction);
            function myFunction(item, index) {
                if (item != "All") {
                    searmodel.Departments.push(parseInt(item));
                }
            }

            $.ajax({
                url: "/Account/SearchEmployee",
                type: "GET",
                dataType: "json",
                cache: false,
                data: searmodel, //JSON.stringify(searmodel),
                success: function (data) {
                    $('#UserListcontent').html(data);
                    CreateDataTablePaging($);
                },
                error: function (xhr, ajaxOptions, thrownError) { 
                    debugger;
                  //  alert(xhr.status);
                }
            });
        }); 
        $("input[type='datetime']").datepicker(); 
        $('select').select2({
            allowClear: true,
            closeOnSelect: false,
            theme: "bootstrap" 
        }); 
    })
})(jQuery);

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
}
