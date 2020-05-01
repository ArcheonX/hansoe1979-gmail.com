var topics = [];
var employees = [];
var scores = [];
var expectatoins = [];

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
        $('#btnSaveCompetence').click(function () {
            SaveCompetenceScore();
        });  
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
    var AnalyticCategories = [];
    var Analyticseries = []; 

    if (topics.length >= 6 && employees.length >= 10) {
        return;
    }
    var topicScore = [];

    topics.forEach(tp => {
        AnalyticCategories.push(tp.Topic); 
        var score = scores.where((sc) => {
            return sc.ID_CompetenceKnowledgeTopic == tp.TopicId;
        });
        score.forEach(scr => {
            topicScore.push({
                EmployeeId: scr.ID_CompetenceEmployee,
                Score: scr.Score
            });
        }); 
    }); 
    employees.forEach(emp => {
        var AnalyticScores = []; 
        var eScores = topicScore.where((sc) => {
            return sc.EmployeeId== emp.EmployeeId;
        });
        eScores.forEach(scr => {
            AnalyticScores.push(scr.Score);
        }); 
        Analyticseries.push(
            {
                name: emp.EmployeeName,
                data: AnalyticScores,
                pointPlacement: 'on'
            });
    });
    Highcharts.chart('container', {
        chart: {
            polar: true,
            type: 'line'
        }, 
        title: {
            text: $("#txtCompetenceName").val() + ' Competence Analytic',
            //x: -80
        },
        pane: {
            size: '100%'
        },
        xAxis: {
            categories: AnalyticCategories,
            tickmarkPlacement: 'on',
            lineWidth: 0
        }, 
        yAxis: {
            gridLineInterpolation: 'polygon',
            lineWidth: 0,
            min: 0
        },
        //tooltip: {
        //    shared: true,
        //    pointFormat: '<span style="color:{series.color}">{series.name}: <b>{point.x:,.0f}</b><br/>'
        //}, 
        legend: {
            align: 'right',
            verticalAlign: 'middle',
            layout: 'vertical'
        },
        credits: {
            enabled: false,
        },
        series: Analyticseries,
        responsive: {
            rules: [{
                chartOptions: {
                    legend: {
                        align: 'center',
                        verticalAlign: 'bottom',
                        layout: 'horizontal'
                    },
                    pane: {
                        size: '100%'
                    }
                }
            }]
        } 
    });
}

function LoadCompetence(analytic_id) { 
    MessageController.BlockUI({ boxed: false, target: '#pn-Analytic' });
    topics = [];
    employees = [];
    scores = [];
    expectatoins = [];
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
            $.each(response.Data.Topics, function () {
                topics.push({
                    TopicId: this.ID,
                    ID_CompetenceAnalytic: this.ID_CompetenceAnalytic,
                    Topic: this.KnowledgeTopicName,
                    IsSpecial: this.ID_Course > 0 ? false : true,
                    ID_Course: this.ID_Course
                }); 
            });  
            $.each(response.Data.Employees, function () {
                employees.push({ 
                    EmployeeId: this.EmployeeID,
                    EmployeeName: this.LDMS_M_User.FullName, 
                }); 
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
            });

            expectatoins.push({
                ID_CompetenceKnowledgeTopic: 0,
                ID_CompetenceAnalytic: 0,
                Score: 0,
            });
            expectatoins.pop();
            $.each(response.Data.Expectatoins, function () {
                expectatoins.push({
                    ID_CompetenceKnowledgeTopic: this.ID_CompetenceKnowledgeTopic,
                    ID_CompetenceAnalytic: this.ID_CompetenceAnalytic,
                    Score: this.Score,
                });
            });

            BuildTable(); 
            MessageController.UnblockUI('#pn-Analytic');
            $("input[type=number]").focus(function () {
                $(this).select();
            });
            RenderChart(); 
        },
        failure: function (response) {
            MessageController.UnblockUI('#pn-Analytic');
            if (JSON.parse(response.responseText).Errors.length > 0) {
                MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
            } else {
                MessageController.Error(response.responseText, "Error");
            }
        },
        error: function (response) {
            MessageController.UnblockUI('#pn-Analytic');
            if (JSON.parse(response.responseText).Errors.length > 0) {
                MessageController.Error(JSON.parse(response.responseText).Errors[0].replace("Message:", ""), "Error");
            } else {
                MessageController.Error(response.responseText, "Error");
            }
        }
    }); 
}

function BuildTable() {

    var table = document.getElementById('tableAnalytic');
    while (table.hasChildNodes()) {
        table.removeChild(table.firstChild);
    }

    var thead = document.createElement('thead');
    var tr = document.createElement('tr');
    var topic = document.createElement('th');
    topic.className = "thTopic";
    topic.style = "vertical-align: middle;";
    topic.appendChild(document.createTextNode('Knowledge Topic'));

    var expec = document.createElement('th');
    expec.className = "thExpectatoin";
    expec.style = "vertical-align: middle;";
    $("<div  class='rotated'>Expectatoin</div>").appendTo(expec); 

    tr.appendChild(topic);
    tr.appendChild(expec);
    employees.forEach(item => {
        var thCol = document.createElement('th');
        thCol.className = "verticalTableHeader";
        thCol.style = "vertical-align: middle;";
        $("<div  class='rotated'>" + item.EmployeeName + "</div>").appendTo(thCol);  
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
        var exp_val = 0;
        var any_exp = expectatoins.where((sc) => {
            return sc.ID_CompetenceKnowledgeTopic == item.TopicId;
        });
        if (any_exp && any_exp.length > 0) {
            exp_val = any_exp[0].Score;
        }
        if (item.IsSpecial == true) {
            $("<input type='number' id='txtScore_topic_" + item.TopicId + "_Expectatoin' style='width:100%;text-align:center' onkeypress='validate(event)' class='quantity'   min=0  max=5 value='" + exp_val + "'  />").appendTo(tdExpectatoin);
        }
        else {
            $("<input type='number' disabled id='txtScore_topic_" + item.TopicId + "_Expectatoin' style='width:100%;text-align:center' onkeypress='validate(event)' class='quantity'   min=0  max=5 value='" + exp_val + "' />").appendTo(tdExpectatoin);
        }
        employees.forEach(emp => {
            var score_value = 0;
            var any_score = scores.where((sc) => {
                return sc.ID_CompetenceKnowledgeTopic == item.TopicId && sc.ID_CompetenceEmployee == emp.EmployeeId;
            });
            if (any_score && any_score.length > 0) {
                score_value = any_score[0].Score;
            }
            var td = document.createElement('td');
            td.className = "tdScore";
            td.style = "width:50px;";
            tr_tpoic.appendChild(td);
            if (item.IsSpecial == true) {
                $("<input type='number' id='txtScore_topic_" + item.TopicId + "_Employee_" + emp.EmployeeId + "' style='width:100%;text-align:center' onkeypress='validate(event)' class='quantity'   min=0  max=5 value='" + score_value + "' />").appendTo(td);
            }
            else {
                $("<input type='number' disabled id='txtScore_topic_" + item.TopicId + "_Employee_" + emp.EmployeeId + "' style='width:100%;text-align:center' onkeypress='validate(event)' class='quantity'   min=0  max=5 value='" + score_value + "' />").appendTo(td);                
            }
        });
        tbody.appendChild(tr_tpoic);
    });
    table.appendChild(thead);
    table.appendChild(tbody);
}

function SaveCompetenceScore() {
    var analytic_id = $("#analytic_id").val();
    var analyticexpectatoins = [];
    var analyticscores = []; 
    topics.forEach(item => {
        var score = $("#txtScore_topic_" + item.TopicId + '_Expectatoin').val();
        if (score == null || score == undefined) {
            score = "0";
        }
        analyticexpectatoins.push(
            {
                "ID_CompetenceAnalytic": String(analytic_id),
                "ID_CompetenceKnowledgeTopic": String(item.TopicId),
                "Score": String(score)
            });
        employees.forEach(emp => {
            var empscore = $("#txtScore_topic_" + item.TopicId + '_Employee_' + emp.EmployeeId).val();
            if (empscore == null || empscore == undefined) {
                empscore = "0";
            }
            analyticscores.push(
                {
                    "ID_CompetenceKnowledgeTopic": String(item.TopicId) ,
                    "ID_CompetenceEmployee": String(emp.EmployeeId),
                    "Score": String(empscore)
                });
        });
    });

    $.ajax({
        type: "POST",
        url: "/Competence/UpdateCompetenceScore",
        data:
        {
            "competenceId": analytic_id,
            "scores":analyticscores,
            "expectatoins": analyticexpectatoins
        },
        success: function (response) {
            MessageController.Success("Update Competence Score Completed.", "Completed");
            LoadCompetence(analytic_id);
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
}