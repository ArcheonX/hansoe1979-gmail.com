﻿using LDMS.Core;
using LDMS.Identity;
using LDMS.Services;
//using LDMS.WEB.Models;
using LDMS.ViewModels;
using LDMS.WEB.Filters;
using LDMS.WEB.Models;
using LDMS.WEB.Models.Employee;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using NPOI.SS.Formula.Functions;
using Org.BouncyCastle.Bcpg.OpenPgp;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace LDMS.WEB.Controllers
{
    public class ILearningPerformanceController : BaseController
    {
        private readonly ILearningPerformanceService _lService;
        private IWebHostEnvironment _hostingEnvironment;

        public ILearningPerformanceController(ILearningPerformanceService lService, IWebHostEnvironment environment)
        {
            _lService = lService;
            _hostingEnvironment = environment;
        }



        [AuthorizeRole(UserRole.All)]
        [Route("ILearningPerform/Index/")]
        public IActionResult Index()
        {
            return View("~/Views/ILearningPerformance/Index.cshtml");
        }

        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("ILearningPerform/GetCourse")]
        [AutoValidateAntiforgeryToken]
        public IActionResult GetCourse(string platformID)
        {
            var ret = _lService.GetCourseByPlatformID(platformID);

            return Json(ret);
        }

        [AuthorizeRole(UserRole.All)]
        [HttpPost]
        [Route("ILearningPerform/GetTotal")]
        [AutoValidateAntiforgeryToken]
        public IActionResult GetTotal(string platformID, string courseID, string year, string q1, string q2, string q3, string q4)
        {
            if (platformID == "null") platformID = ""; if (courseID == "null") courseID = "";
            var ret = _lService.GetTotal(platformID, courseID, year, q1, q2, q3, q4, JwtManager.Instance.GetUserId(HttpContext.Request));

            return Json(ret);
        }

        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        [Route("ILearningPerform/GetCostSpend")]
        public IActionResult GetCostSpend(string platformID, string courseID, string year, string q1, string q2, string q3, string q4)
        {
            if (platformID == "null") platformID = ""; if (courseID == "null") courseID = "";
            List<dynamic> ret = _lService.GetCostSpend(platformID, courseID, year, q1, q2, q3, q4, JwtManager.Instance.GetUserId(HttpContext.Request));

            StringBuilder sb = new StringBuilder();
            StringBuilder sbCate = new StringBuilder();
            StringBuilder sbInvest = new StringBuilder();
            StringBuilder sbQ = new StringBuilder();
            StringBuilder sbL = new StringBuilder();

            if (ret.Count > 0)
            {
                for(int i =0; i < ret.Count; i++)
                {
                    sbCate.Append("'"+ret[i].MonthAttr+"', ");

                    if (ret[i].Invest != null) sbInvest.Append(ret[i].Invest + ", "); else sbInvest.Append("0, ");
                    if (ret[i].Qualify != null) sbQ.Append(ret[i].Qualify + ", "); else sbQ.Append("0, ");
                    if (ret[i].Loss != null) sbL.Append(ret[i].Loss + ", "); else sbL.Append("0, ");
                }

                sb.Append(@"Highcharts.chart('divCostSpend', {
                chart: {
                    height: 320,
                    type: 'line'
                },
                title: {
                    text: 'Total Learning Cost Spending'
                },
                subtitle: {
                    text: ''
                },
                credits: {
                    enabled: false
                },
                exporting: {
                    enabled: false
                },
                xAxis: {
                    categories: ["+ sbCate.ToString()+ @"]
                },
                yAxis: {
                    title: {
                        text: 'Baht'
                    }
                },
                plotOptions: {
                    line: {
                        dataLabels: {
                            enabled: true
                        }
                    }
                },
                series: [{
                    name: 'Invest',
                    color: '#4774c5',
                    data: ["+ sbInvest.ToString() + @"]
                },
                {
                    name: 'Qualified',
                    color: '#02b151',
                    data: ["+sbQ.ToString() +@"]
                },
                {
                    name: 'Lost',
                    color: '#ff0505',
                    data: ["+ sbL.ToString() +@"]
                }]
            });");
            }

            return new JavaScriptResult(sb.ToString());
        }



        [AuthorizeRole(UserRole.All)]
        [HttpGet]
        [Route("ILearningPerform/GetLearningProgress")]
        public IActionResult GetLearningProgress(string platformID, string courseID, string year, string q1, string q2, string q3, string q4)
        {
            if (platformID == "null") platformID = ""; if (courseID == "null") courseID = "";
            List<dynamic> ret = _lService.GetCostSpend(platformID, courseID, year, q1, q2, q3, q4, JwtManager.Instance.GetUserId(HttpContext.Request));

            StringBuilder sb = new StringBuilder();
            StringBuilder sbCate = new StringBuilder();
            StringBuilder sbInvest = new StringBuilder();
            StringBuilder sbQ = new StringBuilder();
            StringBuilder sbL = new StringBuilder();

            if (ret.Count > 0)
            {

                sb.Append(@"Highcharts.chart('divLearningProgress', {
                chart: {
                    height: 320,
                    plotBackgroundColor: null,
                    plotBorderWidth: 0,
                    plotShadow: false
                },
                exporting: {
                    enabled: false
                },
                credits: {
                    enabled: false
                },
                title: {
                    text: '10%',
                    align: 'center',
                    verticalAlign: 'middle',
                    y: 60
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}</b>'
                },
                accessibility: {
                    point: {
                        valueSuffix: '%'
                    }
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        dataLabels: {
                            enabled: true,
                            distance: -50,
                            format: '<b>{point.name}</b>: {point.percentage:.1f}',
                            style: {
                                fontWeight: 'bold',
                                color: 'white'
                            }
                        },
                        startAngle: -90,
                        endAngle: 90,
                        center: ['50%', '75%'],
                        size: '110%',
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'Learning Progress',
                    innerSize: '50%',
                    colorByPoint: true,
                    data: [
                        { name: 'OverDue', y: 30, color: '#ff0000', index : 1 },
                        { name: 'Not Start', y: 20, color: '#d0cece', index: 2 },
                        { name: 'On Progress', y: 40, color: '#ffff00', index: 3 },
                        { name: 'Completed', y: 10, color: '#00b050', index: 4}
                    ]
                }]
            });");
            }

            return new JavaScriptResult(sb.ToString());
        }
    }

    public class JavaScriptResult : ContentResult
    {
        public JavaScriptResult(string script)
        {
            this.Content = script;
            this.ContentType = "application/javascript";
        }
    }
}