(function ($) {
    "use strict";
    $(document).ready(function () { 
        $('#btnQueryProgress').click(function () {
            SearchPlanAndProgress();
        });
        CreateChartStack();
        CreateChartDonut();

        if ($.fn.dataTable.isDataTable('#dtProgress')) {
            var table = $('#dtProgress').DataTable();
            table.destroy();
        }
        $('#dtProgress').DataTable({
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
            "pageLength": 10,
            "bJQueryUI": true, //Enable smooth theme
            "sPaginationType": "full_numbers", //Enable smooth theme
            "sDom": 'lfrtip'
        });
        $('.dataTables_length').addClass('bs-select');
    })
})(jQuery);
function SearchPlanAndProgress() {
    MessageController.BlockUI({ boxed: true, textOnly: true, target: '#pn-result' });

    if ($.fn.dataTable.isDataTable('#dtProgress')) {
        var table = $('#dtProgress').DataTable();
        table.destroy();
    }
    debugger;
    var fyear = $("input[type=radio][name=FixicalYear]:checked").val();//$("input[type='radio']:checked").val();
    var quater = [];
    $('input[name="Quater"]:checked').each(function () {
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
            "quater": quater
        },
        success: function (response) { 
            $('#dtProgress').DataTable({
                'data': response.Data,
                'columns': [ 
                    { "data": 'PlatformName_EN', title: 'Platform' },
                    { "data": 'CourseName', title: 'Course Name' },
                    { "data": 'Course_LearnMethodName_EN', title: 'Learn Method' },
                    { "data": "TargetDate", type: 'date-dd-mmm-yyyy', targets: 0, title: 'Target Date' },  
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
                //"columnDefs": [ 
                //    { "orderable": false, "targets": 1, "className": "text-center" },
                //    { "orderable": false, "targets": 2, "className": "text-center" },
                //    { "orderable": false, "targets": 3, "className": "text-center" },
                //    { "orderable": false, "targets": 4, "className": "text-center" },
                //    { "orderable": false, "targets": 5, "className": "text-center" },
                //    { "orderable": false, "targets": 6, "className": "text-center" }

                //],
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
function CreateChartStack() {
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
            categories: ['Effective Meeting', 'Human Relation', 'Problem Solving', 'Analytics', 'TWI-JI']
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
                    data: [30, 40, 20, 50, 10]
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
                    data: [20,30, 50, 70, 10]
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
                    data: [20, 50, 60, 40, 30]
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
                    data: [10, 40, 70, 30, 30]
                }]
    });
}

function CreateChartDonut() {
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
            text: '10%',
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
                size: '100%'
            }
        },
        colors: ['#F20D0D', '#EEEEEE', '#F0F20D', '#8BBC21'],
        series: [{
            type: 'pie',
            name: 'Browser share',
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
                ['Over Due',30],
                ['Not Start', 20],
                ['On Progress', 40],
                ['Completed', 10] 
            ]
        }]
    });
}