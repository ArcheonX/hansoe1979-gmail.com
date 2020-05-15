var initialLoad = true;
(function ($) {
    $(document).ready(function () {
        
        // Back to Platform list
        $('#btnBack').click(function () {
            //alert('btnAddPlatform');
            $('#viewAllplatform').attr("style", "border-width:thin;border-style:solid;display:block;width:100%");
            $('#platformEditor').attr("style", "border-width:thin;border-style:solid;display:none;width:100%");
            $('#divSubPlatformHeader').attr("style", "margin-right: 25px; margin-left: -25px; margin-top: 25px; display:none");
        });

        $('#btnSearchPlatform').click(function () {
            SearchPlatform($);
        });

        if (initialLoad) {
           
            SearchPlatform($);
            initialLoad = false;
        }
    })
})(jQuery);

function LoadPlatfrom(ID) {
    alert('LoadPlatfrom : ' + ID);
    $.ajax({
        url:  "/Platform/EditPlatform",
        type: "GET",
        data: {
            'ID': ID
        },
        success: function (partialViewResult) {
            //$('#platformEditor').attr("style", "border-width:thin;border-style:solid;display:block;width:100%");
            //$('#platformEditor').empty();
            //$('#platformEditor').html(partialViewResult);
        },
        failure: function (response) {
            MessageController.Error(response.responseText, "Error");
        },
        error: function (response) {
            MessageController.Error(response.responseText, "Error");
        }
    })
}

function CreateEditPlatform($) {
    /*$.ajax({
        url: "/Platform/GetAllPlatformType",
        type: "GET",
    }).done(function (items) {
        $('#selectPlatformType').empty();
        var options = $('#selectPlatformType');
        options.append($("<option />").val(null).text("---Please Select---"));
        $.each(items, function () {
            options.append($("<option />").val(this.ID).text(this.PlatformTypeName_EN));
        });
        $('select[name="selectPlatformType"]').val(null);
    });*/

    /*$.ajax({
        url: "/Platform/GetAllCourseLearnMethod",
        type: "GET",
    }).done(function (items) {
        var options = $('#selectLearnMetod');
        options.append($("<option />").val(null).text("---Please Select---"));
        $.each(items, function () {
            options.append($("<option />").val(this.ID).text(this.Course_LearnMethodName_EN));
        });
        $('select[name="selectLearnMetod"]').val(null);
    });*/

}

function CreateDataTablePaging($) {
    $('#dtPlatformList').DataTable({
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

function SearchPlatform($) {
    var searmodel = {
        PlatformId: $("#txtFilterPlatformID").val(),
        PlatformName: $("#txtFilterPlatformName").val(),
        PlatformType: $("#txtFilterPlatformType").val(),
        PlatformStatus: $("#selectPlatformtStatus").val()

    };
    $.ajax({
        url: "/Platform/SearchPlatform",
        type: "GET",
        data: searmodel,
    })
        .done(function (partialViewResult) {
            $('#PlatformListcontent').empty();
            $('#PlatformListcontent').html(partialViewResult);
            CreateDataTablePaging($);
        });
}