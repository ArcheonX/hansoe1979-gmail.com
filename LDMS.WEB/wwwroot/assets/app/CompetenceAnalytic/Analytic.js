var topics = [];
var employees = [];
var scores = [];
(function ($) {
    "use strict";
    $(document).ready(function () {
        var analytic_id = $("#analytic_id").val();
        $('#btnBack').click(function () {
            window.location.href = "/Competence/Index";
        });
        $('#btnEditCompetence').click(function () {
            window.location.href = "/Competence/Edit/" + $("#analytic_id").val();
        });
        RenderChart();
        LoadCompetence(parseInt(analytic_id));
    })
})(jQuery);

function validate(evt) {
    var theEvent = evt || window.event;

    // Handle paste
    if (theEvent.type === 'paste') {
        key = event.clipboardData.getData('text/plain');
    } else {
        // Handle key press
        var key = theEvent.keyCode || theEvent.which;
        key = String.fromCharCode(key);
    }
    var regex = /[0-5]|\./;
    if (!regex.test(key)) {
        theEvent.returnValue = false;
        if (theEvent.preventDefault) theEvent.preventDefault();
    }
}

function RenderChart() {
    Highcharts.chart('container', {
        chart: {
            polar: true,
            type: 'line'
        },

        accessibility: {
            description: 'A spiderweb chart compares the allocated budget against actual spending within an organization. The spider chart has six spokes. Each spoke represents one of the 6 departments within the organization: sales, marketing, development, customer support, information technology and administration. The chart is interactive, and each data point is displayed upon hovering. The chart clearly shows that 4 of the 6 departments have overspent their budget with Marketing responsible for the greatest overspend of $20,000. The allocated budget and actual spending data points for each department are as follows: Sales. Budget equals $43,000; spending equals $50,000. Marketing. Budget equals $19,000; spending equals $39,000. Development. Budget equals $60,000; spending equals $42,000. Customer support. Budget equals $35,000; spending equals $31,000. Information technology. Budget equals $17,000; spending equals $26,000. Administration. Budget equals $10,000; spending equals $14,000.'
        },

        title: {
            text: 'Budget vs spending',
            x: -80
        },

        pane: {
            size: '80%'
        },

        xAxis: {
            categories: ['Sales', 'Marketing', 'Development', 'Customer Support','Information Technology', 'Administration'],
            tickmarkPlacement: 'on',
            lineWidth: 0
        },

        yAxis: {
            gridLineInterpolation: 'polygon',
            lineWidth: 0,
            min: 0
        },

        tooltip: {
            shared: true,
            pointFormat: '<span style="color:{series.color}">{series.name}: <b>${point.y:,.0f}</b><br/>'
        },

        legend: {
            align: 'right',
            verticalAlign: 'middle',
            layout: 'vertical'
        },

        series: [{
            name: 'Allocated Budget',
            data: [43000, 19000, 60000, 35000, 17000, 10000],
            pointPlacement: 'on'
        }, {
            name: 'Actual Spending',
            data: [50000, 39000, 42000, 31000, 26000, 14000],
            pointPlacement: 'on'
        }],

        responsive: {
            rules: [{
                condition: {
                    maxWidth: 500
                },
                chartOptions: {
                    legend: {
                        align: 'center',
                        verticalAlign: 'bottom',
                        layout: 'horizontal'
                    },
                    pane: {
                        size: '70%'
                    }
                }
            }]
        }

    });
}

function LoadCompetence(analytic_id) {
    $.ajax({
        type: "GET",
        url: "/Competence/Competence",
        data: { "competenceId": analytic_id },
        success: function (response) {
            $("#txtCompetenceName").val(response.Data.CompetenceAnalyticName);
            $("#txtExpectatoin5").val("5 = " +response.Data.Criteria5);
            $("#txtExpectatoin4").val("4 = " +response.Data.Criteria4);
            $("#txtExpectatoin3").val("3 = " +response.Data.Criteria3);
            $("#txtExpectatoin2").val("2 = " +response.Data.Criteria2);
            $("#txtExpectatoin1").val("1 = " +response.Data.Criteria1);
            $("#selectLevel").val(response.Data.ID_JobGrade).trigger('change');

            var index = 1;
            $.each(response.Data.Topics, function () {
                topics.push({
                    Index: index,
                    ID_CompetenceAnalytic: this.ID_CompetenceAnalytic,
                    Topic: this.KnowledgeTopicName,
                    IsSpecial: this.ID_Course > 0 ? false : true,
                    ID_Course: this.ID_Course,
                    Action: "",
                });
                index++;
            });
            index = 1;
            $.each(response.Data.Employees, function () {
                employees.push({
                    Index: index,
                    EmployeeId: this.EmployeeID,
                    EmployeeName: this.LDMS_M_User.FullName,
                    Action: "",
                });
                index++;
            });
            scores.push({
                ID_CompetenceKnowledgeTopic:0,
                ID_CompetenceEmployee: "",
                Score:0,
            });
            scores.pop();
            $.each(response.Data.Scores, function () {
                scores.push({  
                    ID_CompetenceKnowledgeTopic: this.ID_CompetenceKnowledgeTopic,
                    ID_CompetenceEmployee: this.ID_CompetenceEmployee,
                    Score: this.Score,
                });
                index++;
            });

            var thead = document.createElement('thead');
            var tr = document.createElement('tr');
            var topic = document.createElement('th');
            topic.className = "thTopic";
            topic.style = "vertical-align: middle;";
            topic.appendChild(document.createTextNode('Knowledge Topic'));

            var expec = document.createElement('th');
            expec.className = "thExpectatoin";
            expec.style = "vertical-align: middle;";
            expec.appendChild(document.createTextNode('Expectatoin'));

            tr.appendChild(topic);
            tr.appendChild(expec);
            employees.forEach(item => {
                var thCol = document.createElement('th');
                thCol.className = "verticalTableHeader";
                thCol.style = "vertical-align: middle;";
                thCol.appendChild(document.createTextNode(item.EmployeeName));
                tr.appendChild(thCol);
            });
            thead.appendChild(tr);

            var tbody = document.createElement('tbody');
            topics.forEach(item => {
                var tr_tpoic = document.createElement('tr');

                var tdtpoic = document.createElement('td');
                tdtpoic.className = "tdTopic";
                tdtpoic.appendChild(document.createTextNode(item.Topic));
                tr_tpoic.appendChild(tdtpoic);

                var tdExpectatoin = document.createElement('td');
                tdExpectatoin.className = "tdScore";
                tdExpectatoin.style = "width:50px;";
                tr_tpoic.appendChild(tdExpectatoin);
                if (item.IsSpecial == true) {
                    $("<input type='number' disabled id='txtScore_topic_" + item.TopicId + "_Expectatoin_' style='width:100%;text-align:center' onkeypress='validate(event)' class='quantity'   min=0  max=5 value='0' />").appendTo(tdExpectatoin);
                } else {
                    $("<input type='number' id='txtScore_topic_item." + item.TopicId + "_Expectatoin_' style='width:100%;text-align:center' onkeypress='validate(event)' class='quantity'   min=0  max=5 value='0' />").appendTo(tdExpectatoin);
                }
                employees.forEach(emp => {

                    var score_value = 0;
                    var any_score = scores.where((sc) => {
                        return sc.ID_CompetenceKnowledgeTopic == item.TopicId && sc.ID_CompetenceEmployee == emp.EmployeeId;
                    });
                    if (any_score && any_score.length>0) {
                        score_value = any_score[0].Score;
                    }
                    var td = document.createElement('td');
                    td.className = "tdScore";
                    td.style = "width:50px;";
                    tr_tpoic.appendChild(td);
                    if (item.IsSpecial == true) {
                        $("<input type='number' disabled id='txtScore_topic_" + item.TopicId + "_Employee_" + emp.EmployeeId + "' style='width:100%;text-align:center' onkeypress='validate(event)' class='quantity'   min=0  max=5 value='" + score_value+"' />").appendTo(td);
                    } else {
                        $("<input type='number' id='txtScore_topic_item." + item.TopicId + "_Employee_" + emp.EmployeeId + "' style='width:100%;text-align:center' onkeypress='validate(event)' class='quantity'   min=0  max=5 value='" + score_value +"' />").appendTo(td);
                    }
                });
                tbody.appendChild(tr_tpoic);
            });
            table.appendChild(thead);
            table.appendChild(tbody); 
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

   
 
    var table = document.getElementById('tableAnalytic');
    while (table.hasChildNodes()) {
        table.removeChild(table.firstChild);
    }   
}
