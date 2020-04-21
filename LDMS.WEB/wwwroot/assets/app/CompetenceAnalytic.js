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

    })
})(jQuery);