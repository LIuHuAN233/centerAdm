<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/9/27
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/9/27
  Time: 9:52
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
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <script src="/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="/js/jquery.session.js" type="text/javascript"></script>
    <script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <style type="text/css">
        h2{
            font-size: 18px;
            font-weight: bold;
            line-height: 30px;
            height: 30px;
            margin-bottom: 4px;
            overflow: hidden;
            white-space: nowrap;
        }
        .about{
            margin-bottom: 4px;
            color: #8a8a8a;
            font-size: 14px;
            line-height: 30px;
            font-family: PingFang SC,Hiragino Sans GB,Arial,Microsoft YaHei,Verdana,Roboto,Noto,Helvetica Neue,sans-serif !important;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
        .tagBorder{
            background-color: #f1f8ff;
            border-radius: 3px;
            margin-bottom: 15px;
        }
        .blogUser{

            height: 30px;line-height: 30px;
            padding-left: 0px;

        }
        .blogUser a:hover{
            color: #337ab7;
        }
        .borderC{
            border-bottom: 1px solid #f4f4f4;
        }


    </style>
</head>

<body style="height: 100%">
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
                    <li><a href="../index.jsp" id="quit">退出</a></li>
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
                        <a href="/simple"><span class="sublist-icon glyphicon glyphicon glyphicon-tasks"></span><span class="sub-title">我的文档</span></a></li>
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
    <div class="row" id="test2">
        <div class="header-nav" >
            <ul class="header-nav-list clearfix" id="tagList">
                <%--<li class="nav-one"><a href="/pedestrianRecognition" class="nav-tit">行人崇识别</a> </li>
                <li class="nav-one"><a href="/" class="nav-tit">****</a></li>
                <li class="nav-one"><a href="/" class="nav-tit">****</a> </li>
                <li class="nav-one"><a href="/" class="nav-tit">****</a> </li>--%>
            </ul>
        </div>
        <div class="row newslist" style="margin-left: 200px;">
            <div class="col-md-8">
                <div class="panel-heading">
                    <a class="btn btn-link" href="/browseFile">最新更新</a> <a class="btn btn-link" href="/attach/showBlog">aaaa</a>
                    <a href="#" class="pull-right"><span class="glyphicon glyphicon-refresh"></span></a>
                </div>
                <div class="panel panel-default col-sm-12" id="newBlogList">
                    <%--<div class="borderC col-sm-12">
                    <h2 style="cursor: pointer"><a>这是一次测试,This is a test</a></h2>
                    <div class="about">这是这次测试的简介，这个简介目的是为了测试长度超出一行时是否省略。
                        This is an introduction to this test. The purpose of this introduction is to test whether it is omitted when the length exceeds one line.
                    </div>
                    <div class="blogUser col-sm-2">作者:<a style="cursor: pointer">刘春晖</a>

                    </div>
                    <div style="height: 30px;line-height: 30px" class="col-sm-2 col-sm-offset-8">
                        2019-12-05
                    </div>
                    <div class="col-sm-12"><a class="btn btn-link tagBorder">Python</a>
                        <a class="btn btn-link tagBorder">学习资料</a>
                        <a class="btn btn-link tagBorder">Java</a>
                        <a class="btn btn-link tagBorder">算法</a>
                        <a class="btn btn-link tagBorder">其他</a>
                    </div>

                </div>--%>
                </div>
                <div class="col-sm-12">
                    <!--分页文字信息-->
                    <div class="col-sm-3" id="emp_nav_info">

                    </div>
                    <!--分页条信息-->
                    <div class="col-md-5 col-sm-offset-4" id="emp_nav_data">

                    </div>
                </div>
            </div>
            <div class="col-md-2 col-md-offset-1">
                <ul class="list-group" id="tagLists"></ul>
            </div>
        </div>


    </div>
</div>
<!-------信息列表------->

<script type="text/javascript">

    /* $("#kpiTest").click(function () {
         $.ajax({
             url:"/keiTest",
             success:function (result) {
                 if (result==0){
                     alert("评审尚未开始，请联系管理员")
                 } else if(result==1){
                     window.location.href='/home';
                 }
             }
         })*/
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


    //解析数据填充表格
    function build_emp_table(result) {
        $("#grade_table tbody").empty();
        var i=1;
        var grade = result.extend.pageInfo.list;
        $.each(grade,function (index,item) {
            var gradeIdTd = $("<td></td>").append(item.sId);
            var gradeNameTd = $("<td></td>").append(item.user.username);
            var gradeGradeTd = $("<td></td>").append(item.grade);
            var gradeUpdatetimeTd = $("<td></td>").append(item.updateTime);
            var rank =$("<td></td>").append(i);
            i++;


            $("<tr></tr>")
                .append(gradeIdTd)
                .append(gradeNameTd)
                .append(gradeGradeTd)
                .append(gradeUpdatetimeTd)
                .append(rank)
                .appendTo("#grade_table tbody");


        })/*alert(item.name);*/


    }

    //解析分页文字信息
    function build_emp_info(result) {
        $("#emp_nav_info").empty();
        $("#emp_nav_info").append("当前"+result.extend.pageInfo.pageNum+
            "页,共"+result.extend.pageInfo.pages+"页,总共"+result.extend.pageInfo.total+"条记录");
    }
    //解析分页条信息
    function build_emp_nav(result) {
        $("#emp_nav_data").empty();
        var ul1 = $("<ul></rl>").addClass("pagination");
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if(result.extend.pageInfo.hasPreviousPage ==false){
            firstPageLi.addClass("disabled");
        }
        if(result.extend.pageInfo.isFirstPage==true){
            prePageLi.addClass("disabled");
        }else {
            firstPageLi.click(function () {
                to_page(1);
            });
        }

        prePageLi.click(function () {
            if(result.extend.pageInfo.pageNum>1) {
                to_page(result.extend.pageInfo.pageNum - 1);
            }
        });
        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("尾页").attr("href","#"));
        if(result.extend.pageInfo.hasNextPage==false){
            lastPageLi.addClass("disabled");
        }
        if(result.extend.pageInfo.isLastPage){
            nextPageLi.addClass("disabled");
        }else {
            lastPageLi.click(function(){
                to_page(result.extend.pageInfo.pages);
            });
        }
        nextPageLi.click(function () {
            if(result.extend.pageInfo.pageNum<result.extend.pageInfo.pages) {
                to_page(result.extend.pageInfo.pageNum +1);
            }
        });

        ul1.append(firstPageLi).append(prePageLi);
        $.each(result.extend.pageInfo.navigatepageNums,function (index,item) {
            var numLi = $("<li></li>").append($("<a></a>").append(item));
            numLi.click(function () {
                to_page(item);
            });
            if (result.extend.pageInfo.pageNum==item){
                numLi.addClass("active");
            }
            ul1.append(numLi);
        });
        ul1.append(nextPageLi).append(lastPageLi);

        var nav1 = $("<nav></nav>").append(ul1);
        nav1.appendTo("#emp_nav_data");
    }

    function to_page(pn){
        $("#newBlogList").empty();
        $("#emp_nav_info").empty();
        $("#emp_nav_data").empty();
        $.ajax({
            url:"/selectAllBlog",
            /*data:{"tagType":tagType,"blogName":blogName,"createName":createName},*/
            data:{"pn":pn},
            success:function (result) {
                build_emp_info(result);
                build_emp_nav(result);

                $("#emp_nav_data ul").css("margin-top","0px");
                $("#emp_nav_info").css("margin-top","10px");
                result = eval(result);
                result = result.extend.pageInfo.list
                $.each(result,function (index,item) {

                    var time = new Date(item.createDate);
                    var day = ("0" + time.getDate()).slice(-2);
                    var month = ("0" + (time.getMonth() + 1)).slice(-2);
                    var bdate = time.getFullYear() + "-" + (month) + "-" + (day);
                    var tags = (item.tags).split(",");

                    var tagStr='';
                    for (let i=0; i<tags.length; i++){
                        tagStr+='<a class="btn btn-link tagBorder">'+tags[i]+'</a>\n';

                    }
                    var b='<div class="col-sm-12"><a class="btn btn-link tagBorder">Python</a>\n' +
                        '                        <a class="btn btn-link tagBorder">学习资料</a>\n' +
                        '                        <a class="btn btn-link tagBorder">Java</a>\n' +
                        '                        <a class="btn btn-link tagBorder">算法</a>\n' +
                        '                        <a class="btn btn-link tagBorder">其他</a>\n' +
                        '                    </div>';

                    var a = '<div class="borderC col-sm-12">\n' +
                        '                    <h2 style="cursor: pointer"><a>'+item.title+'</a></h2>\n' +
                        '                    <div class="about">'+item.about+
                        '                    </div>\n' +
                        '                    <div class="blogUser col-sm-2">作者:<a style="cursor: pointer">'+item.createName+'</a>\n' +
                        '\n' +
                        '                    </div>\n' +
                        '                    <div style="height: 30px;line-height: 30px" class="col-sm-2 col-sm-offset-8">\n' +
                        bdate+
                        '                    </div>\n' +
                        '                    <div class="col-sm-12">'+tagStr+'</div>\n' +
                        '\n' +
                        '                </div>';

                    $("#newBlogList").append(a);
                });

            }

        });
    }

    $(function(){

        /*展开上级目录*/
        var active= $(".subNavBox").children(':eq(1)').children(':eq(0)');
        var active1 = $(".subNavBox").children(':eq(1)').children(':eq(0)').children(':eq(0)');
        $('.navContent:eq(1)').show();
        active1.removeClass("glyphicon-chevron-up");
        active1.addClass("glyphicon-chevron-down");
        active.removeClass("sublist-up");
        active.addClass("sublist-down");

        /*根据权限展示页面*/
        $.ajax({
            url:"/attach/allTag",
            success:function (result) {
                result = eval(result);
                $.each(result,function (index,item) {
                    if (index<3){

                        $("#tagList").append("<li class=\"nav-one\"><a href="+item.tagRqs+" class=\"nav-tit\">"+item.tag+"</a> </li>");
                        $("#tagLists").append("<li class=\"list-group-item-info\"><a href="+item.tagRqs+" class=\"nav-tit\">"+item.tag+"</a> </li>");

                    }
                    else if (index==3){
                        $("#tagList").append("<li class=\"nav-one\"><a href=\"/\" class=\"nav-tit\">其他</a></li>");
                        $("#selectTag").append("<a href="+item.tagRqs+">"+item.tag+"</a>");
                        $("#tagLists").append("<li class=\"list-group-item-info\"><a href="+item.tagRqs+" class=\"nav-tit\">"+item.tag+"</a> </li>");
                    }else {
                        $("#selectTag").append("<a href="+item.tagRqs+">"+item.tag+"</a>");
                        $("#tagLists").append("<li class=\"list-group-item-info\"><a href="+item.tagRqs+" class=\"nav-tit\">"+item.tag+"</a> </li>");
                    }
                });
            }

        });
        var tagType = "";
        var blogName = "";
        var createName = "";
        tagType ="${tagType}";

        blogName = "${blogName}";
        createName ="${createName}";

        $.ajax({
            url:"/selectAllBlog",
            data:{"pn":1},
            /*data:{"tagType":tagType,"blogName":blogName,"createName":createName},*/
            success:function (result) {
                build_emp_info(result);
                build_emp_nav(result);

                $("#emp_nav_data ul").css("margin-top","0px");
                $("#emp_nav_info").css("margin-top","10px");
                result = eval(result);
                result = result.extend.pageInfo.list
                $.each(result,function (index,item) {

                    var time = new Date(item.createDate);
                    var day = ("0" + time.getDate()).slice(-2);
                    var month = ("0" + (time.getMonth() + 1)).slice(-2);
                    var bdate = time.getFullYear() + "-" + (month) + "-" + (day);
                    var tags = (item.tags).split(",");

                    var tagStr='';
                    for (let i=0; i<tags.length; i++){
                        tagStr+='<a class="btn btn-link tagBorder">'+tags[i]+'</a>\n';

                    }
                    var b='<div class="col-sm-12"><a class="btn btn-link tagBorder">Python</a>\n' +
                        '                        <a class="btn btn-link tagBorder">学习资料</a>\n' +
                        '                        <a class="btn btn-link tagBorder">Java</a>\n' +
                        '                        <a class="btn btn-link tagBorder">算法</a>\n' +
                        '                        <a class="btn btn-link tagBorder">其他</a>\n' +
                        '                    </div>';

                    var a = '<div class="borderC col-sm-12">\n' +
                        '                    <h2 style="cursor: pointer"><a>'+item.title+'</a></h2>\n' +
                        '                    <div class="about">'+item.about+
                        '                    </div>\n' +
                        '                    <div class="blogUser col-sm-2">作者:<a style="cursor: pointer">'+item.createName+'</a>\n' +
                        '\n' +
                        '                    </div>\n' +
                        '                    <div style="height: 30px;line-height: 30px" class="col-sm-2 col-sm-offset-8">\n' +
                                            bdate+
                        '                    </div>\n' +
                        '                    <div class="col-sm-12">'+tagStr+'</div>\n' +
                        '\n' +
                        '                </div>';

                    $("#newBlogList").append(a);
                });

            }

        });

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


