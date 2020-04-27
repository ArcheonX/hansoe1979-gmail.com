var topics = [];
(function ($) {
    "use strict";
    $(document).ready(function () {
        //$("input[type='datetime']").datepicker();
        //$('select').select2({
        //    allowClear: true,
        //    closeOnSelect: true,
        //    theme: "bootstrap"
        //});
        $('#btnAddCompetence').click(function () {
            window.location.href = "Add"; 
        });
        //$('select[name="selectDepartment"]').on('change', function () { 
        //    var departmentId = $(this).val();
        //    LoadDepartmentSection(departmentId);
        //});
        //LoadCourse();
        //CreateEmployeePopup();
    })
})(jQuery); 

function Search() {
    $('#dtCompetenceList').DataTable({
        'processing': true,
        'serverSide': true,
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
        //retrieve: true,
        destroy: true,
        'ajax': {
            'url': '@Url.Action("Analytics", "Competence")',
            'type': 'POST'/*,
            'data': {
                PlatformId: $("#txtFilterPlatformID").val(),
                PlatformName: $("#txtFilterPlatformName").val(),
                PlatformType: $('#selectPlatformType').val(),
                PlatformStatus: $("#selectPlatformtStatus").val(),
                "__RequestVerificationToken": $('input[name=__RequestVerificationToken]').val()
            },*/
        },
        'columns': [
            { data: 'RowIndex' },
            { data: 'ID_Analytic' },
            { data: 'CompetenceAnalyticName' },
            { data: 'ID_Department' },
            { data: 'ID_JobGrade' },
            {
                "mData": "ID_Analytic",
                "mRender": function (data, type, row) {
                    var url = '@Url.Content("~/Competence/Analytic/Edit/")' + data;
                    var icon = '@Url.Content("~/assets/images/svg/icon-edit-blue.svg")';
                    return "<a href='" + url + "'><img src='" + icon + "' class='light-logo' alt='homepage' /></a>";
                }
            },
            {
                "mData": "ID_Analytic",
                "mRender": function (data, type, row) {
                    var url = '@Url.Content("~/Competence/Analytic/Edit/")' + data;
                    var icon = '@Url.Content("~/assets/images/svg/icon-edit-blue.svg")';
                    return "<a href='" + url + "'><img src='" + icon + "' class='light-logo' alt='homepage' /></a>";
                }
            }
            //{
            //    "mData": "ID",
            //    "mRender": function (data, type, row) { return "<a href='#'><img src='@Url.Content("~/assets/images/svg/icon-delete-red.svg")' class='light-logo' alt='homepage' /></a>"; }
            //},
            //{
            //    "mData": "ID_Analytic",
            //    "mRender": function (data, type, row) { return "<a href='#'><img src='@Url.Content("~/assets/images / icons / icon - excel.png")' width='32' height='32' alt='homepage' /></a>"; }
            //},
        ],
        "columnDefs": [
            { "orderable": false, "targets": 0, "className": "text-center", "width": "4%" },
            { "orderable": false, "targets": 1, "className": "text-center" },
            { "orderable": false, "targets": 2, "className": "text-center" },
            { "orderable": false, "targets": 3, "className": "text-center" },
            { "orderable": false, "targets": 4, "className": "text-center" },
            { "orderable": false, "targets": 5, "className": "text-center" },
            { "orderable": false, "targets": 6, "className": "text-center" }  
        ]
    });
}