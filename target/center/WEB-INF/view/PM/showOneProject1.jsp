<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/10/24
  Time: 16:34
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
    <link title="green" href="/css/center/dermagreen.css" rel="stylesheet" type="text/css" disabled="disabled"/>
    <link title="orange" href="/css/center/dermaorange.css" rel="stylesheet" type="text/css" disabled="disabled"/>
    <link href="/css/center/templatecss.css" rel="stylesheet" title="" type="text/css" />
    <link href="/css/blog/common.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/UEditor/third-party/SyntaxHighlighter/shCoreDefault.css"/>

    <!--include ueditor--->
    <link rel="stylesheet" href="/css/editormd.preview.css" />

    <!--引入js文件-->
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <script src="/js/marked.min.js"></script>
    <script src="/js/prettify.min.js"></script>
    <script src="/js/raphael.min.js"></script>
    <script src="/js/underscore.min.js"></script>
    <script src="/js/sequence-diagram.min.js"></script>
    <script src="/js/flowchart.min.js"></script>
    <script src="/js/jquery.flowchart.min.js"></script>
    <script src="/js/editormd.js"></script>
    <script type="text/javascript" src="/UEditor/third-party/SyntaxHighlighter/shCore.js"></script>
    <script src="/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="/js/jquery.session.js" type="text/javascript"></script>
    <script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    <style>
        .editormd-html-preview {
            width: 60%;
            margin-left: 16.33%;
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
        <div class="header-nav" >
            <ul class="header-nav-list clearfix">
                <li class="nav-one"><a href="/pedestrianRecognition" class="nav-tit">****</a> </li>
                <li class="nav-one"><a href="/" class="nav-tit">****</a></li>
                <li class="nav-one"><a href="/" class="nav-tit">****</a> </li>
                <li class="nav-one"><a href="/" class="nav-tit">****</a> </li>
            </ul>
        </div>
        <div class="col-md-9 col-md-offset-2">
            <div class="page-header" >

                <h1 class="h1" style="font-family:Lantinghei SC;font-weight: lighter" id="blogTitle"></h1>

                <div style="color:#8B8B7A;height: 30px;width: 100%;line-height: 30px">
                    <span>开始时间：<span class="time" id="createDate"></span></span>
                    <span style="margin-left: 30px;">截至时间：<span class="time" id="endDate"></span></span>


                </div>
                <div style="color:#8B8B7A;height: 30px;width: 100%;line-height: 30px">
                    <span style="" id="users">
                    </span>
                </div>

            </div>
        </div>
        <div class="col-md-5 col-md-offset-2" id="content">
            <textarea id="onePCode" style="display: none"></textarea>
        </div>
        <div class="col-md-9 col-md-offset-2" id="pr">
            <div class="page-header" >
                <h1 class="h4" style="font-family:Lantinghei SC;font-weight: normal">项目相关</h1>
            </div>
            <div class="col-sm-12" id="projectF">
                <h5 class="h5">父项目</h5>

            </div>
            <div class="col-sm-12" id="projectS">
                <h5 class="h5">子项目</h5>
            </div>
        </div>
        <div class="col-md-9 col-md-offset-2"id="downLoad" >
            <div class="page-header">
                <h1 class="h4" style="font-family:Lantinghei SC;font-weight: normal">附件下载</h1>
            </div>
            <div class="col-sm-6" style="margin-top: 20px;" id="files">
            </div>
        </div>

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
        var rateId = 0;


        /*显示文章*/
        $.ajax({
            url:"/getOneProjectById",
            data:{"id":"${pmId}"},
            success:function (result) {
                result = eval(result);
                var result1 = result[0];

                var time = new Date(result1.pStartTime);
                var day = ("0" + time.getDate()).slice(-2);
                var month = ("0" + (time.getMonth() + 1)).slice(-2);
                var bdate = time.getFullYear() + "-" + (month) + "-" + (day);

                var startDate = new Date(result1.pStartTime.time);
                var date1 = startDate.getFullYear()+"-"+((startDate.getMonth()+1)<10?"0"+(startDate.getMonth()+1):(startDate.getMonth()+1))+"-"+startDate.getDate();
                var endDate = new Date(result1.pEndTime.time);
                var date2 = endDate.getFullYear()+"-"+((endDate.getMonth()+1)<10?"0"+(endDate.getMonth()+1):(endDate.getMonth()+1))+"-"+endDate.getDate();
                $("#createDate").append(date1);
                $("#endDate").append(date2);
                $("#blogTitle").append(result1.pName);

                $("#users").append("成员：");
                var users = (result1.pUserName).split(",");
                for (var i=0;i<users.length;i++){
                    $("#users").append(users[i]+"  ");
                }

                $("#onePCode").val(result1.pCode);
                //转换开始,第一个参数是上面的div的id
                editormd.markdownToHTML("content", {
                    htmlDecode: "style,script,iframe", //可以过滤标签解码
                    emoji: true,
                    taskList:true,
                    tex: true,               // 默认不解析
                    flowChart:true,         // 默认不解析
                    sequenceDiagram:true,  // 默认不解析
                });


                if(result1.pFatherId!=0){

                    $("#content").after('<div class="col-md-9 col-md-offset-2" id="projectRates">\n' +
                        '            <div class="page-header" >\n' +
                        '                <h1 class="h4" style="font-family:Lantinghei SC;font-weight: normal">项目任务</h1>\n' +
                        '            </div>\n' +
                        '        </div>');
                    $("#projectF").append('<div class="col-sm-4">\n' +
                        '                    <a class="btn btn-link" href="/gotoShowOneProject/'+result1.pFatherId+'">'+result1.pFatherName+'</a>\n' +
                        '                </div>');
                    if (result1.pTaskName!=""){
                        var taskNames = (result1.pTaskName).split(",");
                        var taskCodes = (result1.pTaskCode).split(",");
                        var taskBegin = (result1.pTaskBegin).split(",");
                        var taskEnd = (result1.pTaskEnd).split(",");
                        for (var i=0;i<taskNames.length;i++){
                            $("#projectRates").append('<div class="col-sm-6" style="">\n' +
                                '                <h5 class="h4">'+taskNames[i]+'</h5>\n' +
                                '                    <span>'+taskCodes[i]+'</span>\n' +
                                '                <div style="color:#8B8B7A;height: 30px;width: 100%;line-height: 30px">\n' +
                                '                    <span>开始时间：<span class="time" >'+taskBegin[i]+'</span></span>\n' +
                                '                    <span style="margin-left: 30px;">截至时间：<span class="time">'+taskEnd[i]+'</span></span>\n' +
                                '                </div>\n' +
                                '            </div>');
                        }
                    }


                }else {
                    $("#projectF").append('<div class="col-sm-4">\n' +
                        '<span>无</span>\n' +
                        '                </div>');
                }
                if (result1.pmRateList.length>0){
                    $("#content").after('<div class="col-md-9 col-md-offset-2" id="projectRates1">\n' +
                        '            <div class="page-header" >\n' +
                        '                <h1 class="h4" style="font-family:Lantinghei SC;font-weight: normal">进度提交记录</h1>\n' +
                        '            </div>\n' +
                        '        </div>');
                    for (var i =0;i<result1.pmRateList.length;i++){
                        rateId++;

                        $("#projectRates1").append('<div class="col-sm-12" id = "rateBody'+rateId+'">\n' +
                            '                <h4 class="h4"id="blogTitle'+rateId+'"></h4>\n' +
                            '<input type="hidden" id="rateId'+rateId+'" value="'+result1.pmRateList[i].rId+'"/>'+
                            '                <div style="color:#8B8B7A;height: 30px;line-height: 30px" class="col-sm-4">\n' +
                            '                    <span>上传时间：<span class="time" id="createDate'+rateId+'"></span></span>\n' +
                            '                </div>\n' +
                            '                <div style="color:#8B8B7A;height: 30px;line-height: 30px" class="col-sm-4">\n' +
                            '                    <span>上传人：<span class="" id="raUser'+rateId+'"></span></span>\n' +
                            '                </div>\n' +
                            '                <div class="col-sm-12   " id="content'+rateId+'">\n' +
                            '                    <textarea id="onePCode'+rateId+'" style="display: none"></textarea>\n' +
                            '                </div>\n' +
                            '                <div class="col-sm-6" style="margin-top: 20px;" id="files'+rateId+'">\n' +
                            '                </div>\n' +
                            '            </div>');

                        $("#blogTitle"+rateId).text(result1.pmRateList[i].rName);
                        var RDate = new Date((result1.pmRateList[i].rDate).time);
                        $("#createDate"+rateId).text(RDate.getFullYear()+"-"+((RDate.getMonth()+1)<10?"0"+(RDate.getMonth()+1):(RDate.getMonth()+1))+"-"+RDate.getDate()
                            +" "+RDate.getHours()+":"+RDate.getMinutes()+":"+RDate.getSeconds());
                        $("#onePCode"+rateId).val(result1.pmRateList[i].rRate);
                        $("#raUser"+rateId).text(result1.pmRateList[i].ruName);
                        //转换开始,第一个参数是上面的div的id
                        editormd.markdownToHTML("content"+rateId, {
                            htmlDecode: "style,script,iframe", //可以过滤标签解码
                            emoji: true,
                            taskList:true,
                            tex: true,               // 默认不解析
                            flowChart:true,         // 默认不解析
                            sequenceDiagram:true,  // 默认不解析
                        });

                        if (result1.pmRateList[i].rFileName!=""){
                            var fileName = (result1.pmRateList[i].rFileName).split(",");
                            var filePath = (result1.pmRateList[i].rFilePath).split(",");
                            for (var j = 0;j<fileName.length;j++){
                                $("#files"+rateId).append(
                                    '<a style="margin-bottom: 5px;" class="btn btn-link" href="/PMFile/'+filePath[j]+'" download="'+fileName[j]+'">'+fileName[j]+'</a><br><br>\n'
                                );
                            }

                        }
                    }
                }
                /*$("#projectRates").after();*/

            }

        });
        $.ajax({
            url:"/selectAllSon",
            data:{"fatherId":"${pmId}"},
            success:function (result) {
                result=eval(result);
                if (result.length==0){
                    $("#projectS").append('<div class="col-sm-4">\n' +
                        '<span>无</span>\n' +
                        '                </div>');
                }else {
                    for (var i=0;i<result.length;i++){
                        $("#projectS").append('<div class="col-sm-4">\n' +
                            '                    <a class="btn btn-link" href="/gotoShowOneProject/'+result[i].id+'">'+result[i].pName+'</a>\n' +
                            '                </div>');
                    }
                }

            }
        });
        $.ajax({
            url:"/getAllFileThisProject",
            data:{"id":"${pmId}"},
            success:function (result) {
                result = eval(result);
                for (var i=result.length-1;i>=0;i--){
                    if (result[i].pFileName!=""){
                        var fileName = (result[i].pFileName).split(",");
                        var filePath = (result[i].pFilePath).split(",");
                        for (var j = 0;j<fileName.length;j++){
                            $("#files").append(
                                '<a style="margin-bottom: 5px;" class="btn btn-link" href="/PMFile/'+filePath[j]+'" download="'+fileName[j]+'">'+fileName[j]+'</a><br><br>\n'
                            );
                        }

                    }
                }
                /*$("div #files a").click(function () {
                    $.ajax({
                        url:"/downloadPFile",
                        data:{"path":$(this).attr('name'),"name":$(this).text()},
                        success:function (result) {

                        }
                    });
                });*/
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
        /*$('#showDate').html("<div class=\"year-month pull-left\">\n" +
            "<p>"+newDate.getDay()+"</p>\n" +
            "<p><span>"+newDate.getFullYear()+"</span>年" +
             (newDate.getMonth()+1)>9?(newDate.getMonth()+1):("0"+(newDate.getMonth()+1))+"月"+newDate.getDate()+"日</p>\n" +
            "</div>\n" +
            "<div class=\"hour-minute pull-right\">\n" +
            "<strong>"+newDate.getHours()+":"+newDate.getMinutes()+"</strong>\n" +
            "</div>\n");*/

        /* $("#quit").click(function () {
             $.cookie("userName",null,{
                 expires:0
             });
             $.cookie("password",null,{
                 expires:0
             })
         });*/

        /*换肤*/
        $(".dropdown .changecolor li").click(function(){
            var style = $(this).attr("id");
            $("link[title!='']").attr("disabled","disabled");
            $("link[title='"+style+"']").removeAttr("disabled");

            $.cookie('mystyle', style, { expires: 7 }); // 存储一个带7天期限的 cookie
        })
        var cookie_style = $.cookie("mystyle");
        if(cookie_style!=null){
            $("link[title!='']").attr("disabled","disabled");
            $("link[title='"+cookie_style+"']").removeAttr("disabled");
        }
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





