<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/10/28
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
    <title>用户中心</title>
    <link href="/bootstrap/css/bootstrap.min.css" title="" rel="stylesheet" />
    <link title="" href="/css/center/style.css" rel="stylesheet" type="text/css"  />
    <link title="blue" href="/css/center/dermadefault.css" rel="stylesheet" type="text/css"/>
    <link href="/css/center/templatecss.css" rel="stylesheet" title="" type="text/css" />
    <link href="/css/blog/common.css" rel="stylesheet" type="text/css"/>
    <link href="/css/style-gantt.css" rel="stylesheet" type="text/css">
    <link href="/css/prettify.css" rel="stylesheet" type="text/css">
    <link rel="icon" href="https://static.jianshukeji.com/hcode/images/favicon.ico">

    <!--引入js文件-->
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <script src="/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="/js/jquery.session.js" type="text/javascript"></script>
    <script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/jquery.fn.gantt.js"></script>
    <script type="text/javascript" src="/js/prettify.min.js"></script>
    <script type="text/javascript" src="/js/highcharts-gantt.js"></script>
    <script type="text/javascript" src="/js/exporting.js"></script>

    <style>
        body {
            font-family: Helvetica, Arial, sans-serif;
            font-size: 13px;
            padding: 0 0 50px 0;
        }

        .contain {
            width: 800px;
            margin: 0 auto;
        }
    </style>
</head>

<body>
<nav class="nav navbar-default navbar-mystyle navbar-fixed-top">
    <div class="navbar-header">
        <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand mystyle-brand"><span class="glyphicon glyphicon-home"></span></a> </div>
    <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li class="li-border"><a class="mystyle-color" href="/home">前往首页</a></li>
            <li class="li-border"><a class="mystyle-color" style="font-size: 28px">公共安全中心综合管理系统</a></li>
        </ul>

        <ul class="nav navbar-nav pull-right">
            <li class="dropdown li-border"><a  class="dropdown-toggle mystyle-color" data-toggle="dropdown" id="showUser"><span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="/" id="quit">退出</a></li>
                </ul>
            </li>
            <li class="dropdown"><a href="#" class="dropdown-toggle mystyle-color" data-toggle="dropdown">换肤<span class="caret"></span></a>
                <ul class="dropdown-menu changecolor">
                    <li id="blue"><a href="#">蓝色</a></li>
                    <li class="divider"></li>
                    <li id="green"><a href="#">绿色</a></li>
                    <li class="divider"></li>
                    <li id="orange"><a href="#">橙色</a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>
<div class="down-main">
    <div class="left-main left-full">
        <div class="sidebar-fold"><span class="glyphicon glyphicon-menu-hamburger"></span></div>
        <div class="subNavBox">

            <div class="sBox">
                <div class="subNav sublist-up"><span class="title-icon glyphicon glyphicon-chevron-up"></span><span class="sublist-title">绩效考评</span>
                </div>
                <ul class="navContent" style="display:none">
                    <li style="display: none" id="kpiSetControl">
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />考评设置</div>
                        <a href="/kpiSet"><span class="sublist-icon glyphicon glyphicon-cog"></span><span class="sub-title">考评设置</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />绩效考评</div>
                        <a id="assessOpen"><span class="sublist-icon glyphicon glyphicon-credit-card"></span><span class="sub-title">绩效考评</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />绩效任务</div>
                        <a id="assessRW"><span class="sublist-icon glyphicon glyphicon-star"></span><span class="sub-title">绩效任务</span></a> </li>
                    <li>

                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />绩效查询</div>
                        <a id="checkSelect"><span class="sublist-icon glyphicon glyphicon-th-list"></span><span class="sub-title">绩效查询</span></a></li>
                    <li style="display: none" id="kpiMemberControl">
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />成员管理</div>
                        <a href="/member"><span class="sublist-icon glyphicon glyphicon glyphicon-user"></span><span class="sub-title">成员管理</span></a></li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />账户设置</div>
                        <a href="/account"><span class="sublist-icon glyphicon glyphicon-credit-card"></span><span class="sub-title">账户设置</span></a></li>
                </ul>
            </div>

            <div class="sBox">
                <div class="subNav sublist-up"><span class="title-icon glyphicon glyphicon-chevron-up"></span><span class="sublist-title">文档管理</span>
                </div>
                <ul class="navContent" style="display:none">
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />浏览文档</div>
                        <a href="/browseFile"><span class="sublist-icon glyphicon glyphicon-th-list"></span><span class="sub-title">浏览文档</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />上传文档</div>
                        <a href="/blogUpload"><span class="sublist-icon glyphicon glyphicon glyphicon-file"></span><span class="sub-title">上传文档</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />我的文档</div>
                        <a href="/simple"><span class="sublist-icon glyphicon glyphicon glyphicon-tasks"></span><span class="sub-title">我的文档</span></a></li>
                </ul>
            </div>
            <div class="sBox">
                <div class="subNav sublist-up"><span class="title-icon glyphicon glyphicon-chevron-up"></span><span class="sublist-title">项目管理</span>
                </div>
                <ul class="navContent" style="display:none">
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />项目需求</div>
                        <a href="/projectM"><span class="sublist-icon glyphicon glyphicon-edit"></span><span class="sub-title">项目需求</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />项目总览</div>
                        <a id="showProjectAll"><span class="sublist-icon glyphicon glyphicon-th-list"></span><span class="sub-title">项目总览</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />我的项目</div>
                        <a href="/MyProject"><span class="sublist-icon glyphicon glyphicon glyphicon-tasks"></span><span class="sub-title">我的文档</span></a></li>
                </ul>
            </div>
            <div class="sBox">
                <div class="subNav sublist-up"><span class="title-icon glyphicon glyphicon-chevron-up"></span><span class="sublist-title">通知中心</span>
                </div>
                <ul class="navContent" style="display:none">
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />规章制度</div>
                        <a ><span class="sublist-icon glyphicon glyphicon-list-alt"></span><span class="sub-title">规章制度</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />中心事务</div>
                        <a ><span class="sublist-icon glyphicon glyphicon-comment"></span><span class="sub-title">中心事务</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />系统通知</div>
                        <a ><span class="sublist-icon glyphicon glyphicon glyphicon-menu-hamburger"></span><span class="sub-title">系统通知</span></a></li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />其他通知</div>
                        <a ><span class="sublist-icon glyphicon glyphicon-cog"></span><span class="sub-title">其他通知</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="row">
        <div id="container" class="col-md-offset-2" style="width: 1200px;"></div>
    </div>
</div>
<!-------信息列表------->

<script type="text/javascript">
    var newDate = new Date();
    $("#assessOpen").click(function () {
        $.ajax({
            url:"/checkPerformance",
            success:function (result) {
                if (result==2){
                    alert("评审尚未开始，请联系管理员")
                } else if(result==1){
                    window.location.href='/kpiTest';
                }
            }
        })
    })
    $("#showProjectAll").click(function () {
        $.ajax({
            url:"/authorityControl",
            success:function (result) {
                if (result!="1"){
                    window.location.href="/showAllProject";
                }else {
                    window.location.href = "/showAllPMNormal";
                }
            }
        });
    });
    $("#checkSelect").click(function () {
        $.ajax({
            url:"/authorityControl",
            success:function (result) {
                if (result!="1"){
                    window.location.href="/kpiSelect";
                }else {
                    window.location.href = "/kpiSelectNormal";
                }
            }
        });
    });

    $(function(){

       /* var today = new Date(),
            day = 1000 * 60 * 60 * 24,
            // Utility functions
            dateFormat = Highcharts.dateFormat,
            defined = Highcharts.defined,
            isObject = Highcharts.isObject,
            reduce = Highcharts.reduce;
// Set to 00:00:00:000 today
        today.setUTCHours(0);
        today.setUTCMinutes(0);
        today.setUTCSeconds(0);
        today.setUTCMilliseconds(0);
        today = today.getTime();
        Highcharts.ganttChart('container', {
            series: [{
                name: '项目',
                data: [/!*{
                    name: '项目1',
                    id: '1',
                    start: today - (2 * day),
                    end: today + (14 * day),
                    owner: 'Peter'
                }, {
                    name: '子项目1',
                    id: '2',
                    parent: '1',
                    start: today - (2 * day),
                    end: today + (8 * day),
                    /!*completed: {
                        amount: 0.2
                    },*!/
                    owner: 'Linda'
                }, {
                    name: '前期任务',
                    id: '21',
                    /!*dependency: 'prepare_building',*!/
                    parent: '2',
                    start: today - (2 * day),
                    end: today + 5 * day,
                    owner: 'Ivy'
                }, {
                    name: '中期任务',
                    id: '22',
                    /!*dependency: 'inspect_building',*!/
                    parent: '2',
                    start: today + 3* day,
                    end:today+7*day,
                    /!*milestone: true,*!/
                    owner: 'Peter'
                }, {
                    name: '结果测试',
                    id: '23',
                    /!*dependency: 'inspect_building',*!/
                    parent: '2',
                    start: today + 5 * day,
                    end:today+8*day,
                    /!*milestone: true,*!/
                    owner: 'Peter'
                },
                    {
                    name: '子项目2',
                    id: '3',
                    /!*dependency: 'passed_inspection',*!/
                    parent: '1',
                    owner: 'Josh'
                }, {
                    name: '前期任务',
                    id: '31',
                    parent: '3',
                    start: today + 2 * day,
                    end: today + 6 * day,
                    owner: 'Mark'
                }, {
                    name: '中期任务',
                    id:"32",
                    parent: '3',
                    start: today + 6 * day,
                    end: today + 9 * day,
                    owner: 'Anne'
                }, {
                    name: '后期任务',
                    id:"33",
                    parent: '3',
                    start: today + 9 * day,
                    end: today + 11 * day
                }, {
                        name: '结果测试',
                        id:"33",
                        parent: '3',
                        start: today + 11 * day,
                        end: today + 14 * day
                    }*!/]
            },
                {
                    name: '项目2',
                    data: [{
                        name: '项目2',
                        id: '4',
                        start: today - (2 * day),
                        end: today + (14 * day),
                        owner: 'Peter'
                    }, {
                        name: '子项目1',
                        id: '5',
                        parent: '4',
                        start: today - (2 * day),
                        end: today + (8 * day),
                        /!*completed: {
                            amount: 0.2
                        },*!/
                        owner: 'Linda'
                    }, {
                        name: '前期任务',
                        id: '51',
                        /!*dependency: 'prepare_building',*!/
                        parent: '5',
                        start: today - (2 * day),
                        end: today + 5 * day,
                        owner: 'Ivy'
                    }, {
                        name: '中期任务',
                        id: '52',
                        /!*dependency: 'inspect_building',*!/
                        parent: '5',
                        start: today + 3* day,
                        end:today+7*day,
                        /!*milestone: true,*!/
                        owner: 'Peter'
                    }, {
                        name: '结果测试',
                        id: '53',
                        /!*dependency: 'inspect_building',*!/
                        parent: '5',
                        start: today + 5 * day,
                        end:today+8*day,
                        /!*milestone: true,*!/
                        owner: 'Peter'
                    },
                        {
                            name: '子项目2',
                            id: '6',
                            /!*dependency: 'passed_inspection',*!/
                            parent: '4',
                            owner: 'Josh'
                        }, {
                            name: '前期任务',
                            id: '61',
                            parent: '6',
                            start: today + 2 * day,
                            end: today + 6 * day,
                            owner: 'Mark'
                        }, {
                            name: '中期任务',
                            id:"62",
                            parent: '6',
                            start: today + 6 * day,
                            end: today + 9 * day,
                            owner: 'Anne'
                        }, {
                            name: '后期任务',
                            id:"63",
                            parent: '6',
                            start: today + 9 * day,
                            end: today + 11 * day
                        }, {
                            name: '结果测试',
                            id:"63",
                            parent: '6',
                            start: today + 11 * day,
                            end: today + 14 * day
                        }]
                }/!*,{
                name: 'Product',
                data: [{
                    name: 'New product launch',
                    id: 'new_product',
                    owner: 'Peter'
                }, {
                    name: 'Development',
                    id: 'development',
                    parent: 'new_product',
                    start: today - day,
                    end: today + (11 * day),
                    completed: {
                        amount: 0.6,
                        fill: '#e80'
                    },
                    owner: 'Susan'
                }, {
                    name: 'Beta',
                    id: 'beta',
                    dependency: 'development',
                    parent: 'new_product',
                    start: today + 12.5 * day,
                    milestone: true,
                    owner: 'Peter'
                }, {
                    name: 'Final development',
                    id: 'finalize',
                    dependency: 'beta',
                    parent: 'new_product',
                    start: today + 13 * day,
                    end: today + 17 * day
                }, {
                    name: 'Launch',
                    dependency: 'finalize',
                    parent: 'new_product',
                    start: today + 17.5 * day,
                    milestone: true,
                    owner: 'Peter'
                }]
            }*!/],
            tooltip: {
                pointFormatter: function () {
                    var point = this,
                        format = '%e. %b',
                        options = point.options,
                        completed = options.completed,
                        amount = isObject(completed) ? completed.amount : completed,
                        status = ((amount || 0) * 100) + '%',
                        lines;
                    lines = [{
                        value: point.name,
                        style: 'font-weight: bold;'
                    }, {
                        title: 'Start',
                        value: dateFormat(format, point.start)
                    }, {
                        visible: !options.milestone,
                        title: 'End',
                        value: dateFormat(format, point.end)
                    }, {
                        title: 'Completed',
                        value: status
                    }, {
                        title: 'Owner',
                        value: options.owner || 'unassigned'
                    }];
                    return reduce(lines, function (str, line) {
                        var s = '',
                            style = (
                                defined(line.style) ? line.style : 'font-size: 0.8em;'
                            );
                        if (line.visible !== false) {
                            s = (
                                '<span style="' + style + '">' +
                                (defined(line.title) ? line.title + ': ' : '') +
                                (defined(line.value) ? line.value : '') +
                                '</span><br/>'
                            );
                        }
                        return str + s;
                    }, '');
                }
            },
            title: {
                text: '甘特图测试'
            },
            xAxis: {
                /!*currentDateIndicator: {
                    width: 1,
                    dashStyle: 'dot',
                    color: 'red',
                    label: {
                        format: '%Y-%M-%d, %H:%M'
                    }
                }*!/
                currentDateIndicator:true,
                labels:{
                  format:'{value:%e}'
                },
                min: today - 3 * day,
                max: today + 18 * day
            }
        });*/
        $.ajax({
            url:"/getGanttY",
            data:{"id":${id}},
            success:function (result) {
                var ganttTitle ="${pName}";
                var today = new Date(),
                    day = 1000 * 60 * 60 * 24,
                    // Utility functions
                    dateFormat = Highcharts.dateFormat,
                    defined = Highcharts.defined,
                    isObject = Highcharts.isObject,
                    reduce = Highcharts.reduce;
// Set to 00:00:00:000 today
                today.setUTCHours(0);
                today.setUTCMinutes(0);
                today.setUTCSeconds(0);
                today.setUTCMilliseconds(0);
                today = today.getTime();
                var json = eval("(" + result + ")");
                var data =[];
                data = json.list;
                data[0].parent="";
                console.log(new Date(data[0].start))
                var  startT = data[0].start-1*day;
                var endT = data[0].end+2*day;
               var chart= Highcharts.ganttChart('container', {
                    series: [{
                        name: '项目',
                        data: [
                            ]
                    }],
                    tooltip: {
                        pointFormatter: function () {
                            var point = this,
                                format = '%m. %e',
                                options = point.options,
                                completed = options.completed,
                                amount = isObject(completed) ? completed.amount : completed,
                                status = ((amount || 0) * 100) + '%',
                                lines;
                            lines = [{
                                value: point.name,
                                style: 'font-weight: bold;'
                            }, {
                                title: 'Start',
                                value: dateFormat(format, point.start)
                            }, {
                                visible: !options.milestone,
                                title: 'End',
                                value: dateFormat(format, point.end)
                            }, /*{
                                title: 'Completed',
                                value: status
                            },*/ {
                                title: 'Owner',
                                value: options.owner || 'unassigned'
                            }];
                            return reduce(lines, function (str, line) {
                                var s = '',
                                    style = (
                                        defined(line.style) ? line.style : 'font-size: 0.8em;'
                                    );
                                if (line.visible !== false) {
                                    s = (
                                        '<span style="' + style + '">' +
                                        (defined(line.title) ? line.title + ': ' : '') +
                                        (defined(line.value) ? line.value : '') +
                                        '</span><br/>'
                                    );
                                }
                                return str + s;
                            }, '');
                        }
                    },
                    title: {
                        text:ganttTitle
                    },
                    xAxis: {
                        /*currentDateIndicator: {
                            width: 1,
                            dashStyle: 'dot',
                            color: 'red',
                            label: {
                                format: '%Y-%M-%d, %H:%M'
                            }
                        }*/
                        currentDateIndicator:true,
                        /*labels:{
                            format:'{value:%e}'
                        },*/
                        dateTimeLabelFormats:{
                            millisecond: '%H:%M:%S.%L',
                            second: '%H:%M:%S',
                            minute: '%H:%M',
                            hour: '%H:%M',
                            day: '%e',
                            week: '%m. %e',
                            month: '%y \'%m',
                            year: '%Y'
                        },
                        min: startT,
                        max: endT
                    }
                });


                chart.series[0].setData(data);
            }
        });
        /*展开上级菜单*/
        var active= $(".subNavBox").children(':eq(2)').children(':eq(0)');
        var active1 = $(".subNavBox").children(':eq(2)').children(':eq(0)').children(':eq(0)');
        $('.navContent:eq(2)').show();
        active1.removeClass("glyphicon-chevron-up");
        active1.addClass("glyphicon-chevron-down");
        active.removeClass("sublist-up");
        active.addClass("sublist-down");
        /*根据权限展示页面*/
        $.ajax({
            url:"/authorityControl",
            success:function (result) {
                if (result!=1){
                    $("#kpiSetControl").show();
                    $("#kpiMemberControl").show();
                }
            }
        });

        /*显示登陆的账户名*/
        if($.cookie("userName")!=null){
            $("#showUser").prepend($.cookie("userName"));
        }else if ($.session.get("userName")!=null){
            $("#showUser").prepend($.session.get("userName"));
        }else {
        }
        setInterval(function () {
            $("#xq").text("星期"+newDate.getDay());
            $("#n").text(newDate.getFullYear());
            $("#yr").text("年"+(newDate.getMonth()+1)>9?(newDate.getMonth()+1):("0"+(newDate.getMonth()+1))+"月"+newDate.getDate()+"日");
            $("#sf").text(newDate.getHours()+":"+newDate.getMinutes());
        },1000);
        /*左侧导航栏显示隐藏功能*/
        $(".subNav").click(function(){
            /*显示*/
            if($(this).find("span:first-child").attr('class')=="title-icon glyphicon glyphicon-chevron-down")
            {
                $(this).find("span:first-child").removeClass("glyphicon-chevron-down");
                $(this).find("span:first-child").addClass("glyphicon-chevron-up");
                $(this).removeClass("sublist-down");
                $(this).addClass("sublist-up");
            }
            /*隐藏*/
            else
            {
                $(this).find("span:first-child").removeClass("glyphicon-chevron-up");
                $(this).find("span:first-child").addClass("glyphicon-chevron-down");
                $(this).removeClass("sublist-up");
                $(this).addClass("sublist-down");
            }
            // 修改数字控制速度， slideUp(500)控制卷起速度
            $(this).next(".navContent").slideToggle(300).siblings(".navContent").slideUp(300);
        })
        /*左侧导航栏缩进功能*/
        $(".left-main .sidebar-fold").click(function(){

            if($(this).parent().attr('class')=="left-main left-full")
            {
                $(this).parent().removeClass("left-full");
                $(this).parent().addClass("left-off");

                $(this).parent().parent().find(".right-product").removeClass("right-full");
                $(this).parent().parent().find(".right-product").addClass("right-off");

            }
            else
            {
                $(this).parent().removeClass("left-off");
                $(this).parent().addClass("left-full");

                $(this).parent().parent().find(".right-product").removeClass("right-off");
                $(this).parent().parent().find(".right-product").addClass("right-full");

            }
        })

        /*左侧鼠标移入提示功能*/
        $(".sBox ul li").mouseenter(function(){
            if($(this).find("span:last-child").css("display")=="none")
            {$(this).find("div").show();}
        }).mouseleave(function(){$(this).find("div").hide();})
    })
    $("#quit").click(function () {
        $.cookie("userName",null,{
            expires:0
        });
        $.cookie(("password",null),{
            expires:0
        })
    });
</script>
</body>
</html>





