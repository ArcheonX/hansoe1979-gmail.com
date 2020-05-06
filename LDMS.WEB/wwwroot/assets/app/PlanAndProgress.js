(function ($) {
    "use strict";
    $(document).ready(function () {
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