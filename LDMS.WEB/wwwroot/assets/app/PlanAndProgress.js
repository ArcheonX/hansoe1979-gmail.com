(function ($) {
    "use strict";
    $(document).ready(function () { 

        var year = new Date().getFullYear();
        $("#FY3").val(year);
        $("#FY2").val(year-1);
        $("#FY1").val(year - 2);
        $("#lblFY3").text("FY" + year);
        $("#lblFY2").text("FY" + (year-1));
        $("#lblFY1").text("FY" + (year-2));

        $('#btnQueryProgress').click(function () {
            SearchPlanAndProgress();
        });
        SearchPlanAndProgress(); 
    })
})(jQuery);

function SearchPlanAndProgress() {
    MessageController.BlockUI({ boxed: true, textOnly: true, target: '#pn-result' });

    if ($.fn.dataTable.isDataTable('#dtProgress')) {
        var table = $('#dtProgress').DataTable();
        table.destroy();
    } 
    var fyear = $("input[type=radio][name=FixicalYear]:checked").val();//$("input[type='radio']:checked").val();
    var quater = [];
    $('input[type=checkbox][name=Quater]:checked').each(function () {
        quater.push(this.value);
    });
    debugger;
    $.ajax({
        type: "GET",
        url: "/Course/PlanProgress",
        data:
        {
            "employeeId": CookiesController.getCookie("EMPLOYEEID"),
            "ficialYear": fyear,
            "quater": quater.join(",") 
        },
        success: function (response) { 
            CreateChartDonut(response.Data);
            CreateChartStack(response.Data);
            $('#dtProgress').DataTable({
                'data': response.Data.List,
                'columns': [ 
                    { "data": 'PlatformName_EN', title: 'Platform' },
                    { "data": 'CourseName', title: 'Course Name' },
                    { "data": 'Course_LearnMethodName_EN', title: 'Learn Method' },
                    {
                        "mData": "TargetDate",
                        "bSortable": true,
                        "title": 'Target Date',
                        "mRender": function (data, type, row) {
                            return moment(data).format("DD/MM/YYYY");
                        }
                    },
                    { "data": 'RemainDay', title: 'Remain Day' }, 
                    {
                        "mData": "CourseStatus",
                        "bSortable": false,
                        "mRender": function (data, type, row) {
                            if (data == "COMPLETED") {
                                return ' <button class="btn btn-outline-success waves-effect waves-light" style="width:100%"> Completed </button >'
                            } else if (data == "OVER DUE") {
                                return ' <button class="btn btn-outline-danger waves-effect waves-light" style="width:100%"> Over due </button >'
                            } else if (data == "ON PROGRESS") {
                                return ' <button class="btn btn-outline-warning waves-effect waves-light" style="width:100%"> On Progress </button >'
                            } else if (data == "NOT START") {
                                return ' <button class="btn btn-outline-secondary waves-effect waves-light" style="width:100%"> Not Start </button >'
                            } else{
                                return ' <button class="btn btn-outline-secondary waves-effect waves-light" style="width:100%"> Not Start </button >'
                            } 
                        } 
                    }
                ],
                "columnDefs": [  
                    { "orderable": true, "targets": 1, "className": "text-center" },
                    { "orderable": true, "targets": 2, "className": "text-center" },
                    { "orderable": true, "targets": 3, "className": "text-center" },
                    { "orderable": true, "targets": 4, "className": "text-center" },
                    { "orderable": true, "targets": 5, "className": "text-center" } 
                ],
                'processing': true,
                'paging': true,
                "ordering": true,
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
                "pageLength": 10,
                "language": {
                    "zeroRecords": "No Course"
                }
            });
            $('.dataTables_length').addClass('bs-select');
            MessageController.UnblockUI('#pn-result'); 
        },
        failure: function (response) {
            MessageController.UnblockUI('#pn-result');
            if (JSON.parse(response.responseText).Errors.length > 0) {
                MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
            } else {
                MessageController.Error(response.responseText, "Error");
            }
        },
        error: function (response) {
            MessageController.UnblockUI('#pn-result');
            if (JSON.parse(response.responseText).Errors.length > 0) {
                MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
            } else {
                MessageController.Error(response.responseText, "Error");
            }
        }
    }); 
}

function CreateChartStack(data) {
    var cates = [];
    var overdue = [];
    var notstart = [];
    var onprogress = [];
    var completed = [];

    if (data != null && data.PlatForms.length > 0) {
        $.each(data.PlatForms, function () {  
            cates.push(this.PlatformName);
            overdue.push(this.Overdue);
            notstart.push(this.NotStart);
            onprogress.push(this.OnProgress);
            completed.push(this.Completed);
        }); 
    } 
    Highcharts.chart('container2', {
        credits: {
            enabled: false,
        },
        chart: {
            type: 'bar'
        },
        exporting: {
            enabled: false,
            buttons: {
                enabled: false
            }
        },
        title: {
            text: ''
        },
        xAxis: {
            categories: cates
        },
        yAxis: { 
            title: {
                text: ''
            },
            labels: {
                enabled: false
            } 
        },
        //legend: {
        //    reversed: true
        //},
        plotOptions: {
            bar: {
                stacking: 'percent'
            }
        },
        colors: ['#F20D0D', '#EEEEEE', '#F0F20D', '#8BBC21'],
        series:
            [
                {
                    name: 'Over Due',
                    dataLabels: {
                        enabled: true,
                        style: {
                            textShadow: false,
                            textOutline: false 
                        },
                        color: 'black',
                        formatter: function () {
                            if (this.percentage != 0) return Math.round(this.percentage) + '%';

                        }
                    },
                    data: overdue
                },
                {
                    name: 'Not Start',
                    dataLabels: {
                        enabled: true,
                        style: {
                            textShadow: false,
                            textOutline: false 
                        },
                        color: 'black',
                        formatter: function () {
                            if (this.percentage != 0) return Math.round(this.percentage) + '%';

                        }
                    },
                    data: notstart
                },
                {
                    name: 'On Progress',
                    dataLabels: {
                        enabled: true,
                        style: {
                            textShadow: false,
                            textOutline: false 
                        },
                        color: 'black',
                        formatter: function () {
                            if (this.percentage != 0) return Math.round(this.percentage) + '%';

                        }
                    },
                    data: onprogress
                }, {
                    name: 'Completed',
                    dataLabels: {
                        enabled: true,
                        style: {
                            textShadow: false,
                            textOutline: false 
                        },
                        color: 'black',
                        formatter: function () {
                            if (this.percentage != 0) return Math.round(this.percentage) + '%';

                        }
                    },
                    data: completed
                }]
    });
}

function CreateChartDonut(data) { 
    var overdue = 0;
    var notstart = 0;
    var onprogress = 0;
    var completed = 0;
    var completedPct = 0;
    if (data != null && data.Progress != null) {
        overdue = data.Progress.Overdue;
        notstart = data.Progress.NotStart;
        onprogress = data.Progress.OnProgress;
        completed = data.Progress.Completed;
        completedPct = (completed / data.List.length) * 100;
    }
   
    Highcharts.chart('container', {
        credits: {
            enabled: false,
        },
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        exporting: {
            enabled: false,
            buttons: {
                enabled: false
            }
        },
        title: {
            text: completedPct + '%',
            align: 'center',
            verticalAlign: 'middle',
            y: 60
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },
        plotOptions: {
            pie: {
                shadow: false,
                dataLabels: {
                    enabled: true,
                    distance: -50,
                    style: { 
                        color: 'black',
                        textShadow: false,
                        textOutline: false 
                    }
                },
                showInLegend: true,
                startAngle: -90,
                endAngle: 90,
                center: ['50%', '75%'],
                borderWidth: 0,
                size: '100%'
            }
        },
        colors: ['#F20D0D', '#EEEEEE', '#F0F20D', '#8BBC21'],
        series: [{
            type: 'pie',
            name: 'Overall My Learning Progress',
            dataLabels: {
                color: 'black',
                shadow: false,
                borderWidth: 0,
                distance: -30,
                formatter: function () {
                    if (this.percentage != 0) return Math.round(this.percentage) + '%';

                }
            },
            innerSize: '60%',
            data: [
                ['Over Due', overdue],
                ['Not Start', notstart],
                ['On Progress', onprogress],
                ['Completed', completed] 
            ]
        }]
    });
}