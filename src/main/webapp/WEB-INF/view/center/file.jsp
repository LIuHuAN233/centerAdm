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
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <script src="/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="/js/jquery.session.js" type="text/javascript"></script>
    <script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
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
                <div class="subNav sublist-down"><span class="title-icon glyphicon glyphicon-chevron-down"></span><span class="sublist-title">绩效考评</span>
                </div>
                <ul class="navContent" style="display:block">
                    <li style="display: none" id="kpiSetControl">
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />考评设置</div>
                        <a href="/kpiSet"><span class="sublist-icon glyphicon glyphicon-user"></span><span class="sub-title">考评设置</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />绩效考评</div>
                        <a id="assessOpen"><span class="sublist-icon glyphicon glyphicon-envelope"></span><span class="sub-title">绩效考评</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />绩效查询</div>
                        <a href="/kpiSelect"><span class="sublist-icon glyphicon glyphicon-bullhorn"></span><span class="sub-title">绩效查询</span></a></li>
                    <li style="display: none" id="kpiMemberControl">
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />成员管理</div>
                        <a href="/member"><span class="sublist-icon glyphicon glyphicon-credit-card"></span><span class="sub-title">成员管理</span></a></li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />账户设置</div>
                        <a href="/account"><span class="sublist-icon glyphicon glyphicon-credit-card"></span><span class="sub-title">账户设置</span></a></li>
                </ul>
            </div>
            <div class="sBox">
                <div class="subNav sublist-up"><span class="title-icon glyphicon glyphicon-chevron-up"></span><span class="sublist-title">博客</span>
                </div>
                <ul class="navContent" style="display:none">
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />浏览文章</div>
                        <a href="/browseBlog"><span class="sublist-icon glyphicon glyphicon-list-alt"></span><span class="sub-title">浏览文章</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />上传文章</div>
                        <a href="/addNewBlog"><span class="sublist-icon glyphicon glyphicon-envelope"></span><span class="sub-title">上传文章</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />管理文章</div>
                        <a href="/kpiSelect"><span class="sublist-icon glyphicon glyphicon-bullhorn"></span><span class="sub-title">管理文章</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="right-product my-index right-full">
        <div class="container-fluid">
            <div class="info-center">

                <!---title----->
                <div class="info-title">
                    <div class="pull-left">
                        <h4><strong></strong></h4>
                        <p>欢迎登录公共安全中心综合管理系统！ </p>
                    </div>
                    <div class="time-title pull-right" id="showDate">
                        <div class="year-month pull-left">
                            <p id="xq"></p>
                            <p id="yr"><span id="n"></span></p>
                        </div>
                        <div class="hour-minute pull-right">
                            <strong id="sf"></strong>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!----content-list---->
                <div class="content-list">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="content">
                                <div class="w30 left-icon pull-left">
                                    <span class="glyphicon glyphicon-file blue"></span>
                                </div>
                                <div class="w70 right-title pull-right">
                                    <div class="title-content">
                                        <p>模块**</p>
                                        <h3 class="number">**</h3>
                                        <button class="btn btn-default">****<span style="color:red;">**</span></button>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="content">
                                <div class="w30 left-icon pull-left">
                                    <span class="glyphicon glyphicon-file violet"></span>
                                </div>
                                <div class="w70 right-title pull-right">
                                    <div class="title-content">
                                        <p>模块**</p>
                                        <h3 class="number">**</h3>
                                        <button class="btn btn-default">****<span style="color:red;">**</span></button>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <%--<div class="col-md-3">
                            <div class="content">
                                <div class="w30 left-icon pull-left">
                                    <span class="glyphicon glyphicon-file violet"></span>
                                </div>
                                <div class="w70 right-title pull-right">
                                    <div class="title-content">
                                        <p>待办事项</p>
                                        <h3 class="number">90</h3>
                                        <button class="btn btn-default">待我处理<span style="color:red;">12</span></button>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="content">
                                <div class="w30 left-icon pull-left">
                                    <span class="glyphicon glyphicon-file orange"></span>
                                </div>
                                <div class="w70 right-title pull-right">
                                    <div class="title-content">
                                        <p>待办事项</p>
                                        <h3 class="number">90</h3>
                                        <button class="btn btn-default">待我处理<span style="color:red;">12</span></button>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="content">
                                <div class="w30 left-icon pull-left">
                                    <span class="glyphicon glyphicon-file green"></span>
                                </div>
                                <div class="w70 right-title pull-right">
                                    <div class="title-content">
                                        <p>待办事项</p>
                                        <h3 class="number">90</h3>
                                        <button class="btn btn-default">待我处理<span style="color:red;">12</span></button>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>--%>
                    </div>
                    <!-------信息列表------->
                    <div class="row newslist" style="margin-top:20px;">
                        <div class="col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    系统消息<div class="caret"></div>
                                    <a href="#" class="pull-right"><span class="glyphicon glyphicon-refresh"></span></a>
                                </div>
                                <div class="panel-body">
                                    <div class="w15 pull-left">
                                        <img src="/img/noavatar_middle.gif" width="25" height="25" alt="图片" class="img-circle">
                                        admin
                                    </div>
                                    <div class="w55 pull-left">绩效系统测试</div>
                                    <div class="w20 pull-left text-center">2019年09月24日</div>
                                    <div class="w10 pull-left text-center"><span>处理中</span></div>
                                </div>

                                <div class="panel-body">
                                    <div class="w15 pull-left">
                                        <img src="/img/noavatar_middle.gif" width="25" height="25" alt="图片" class="img-circle">
                                        admin
                                    </div>
                                    <div class="w55 pull-left">绩效系统测试完毕</div>
                                    <div class="w20 pull-left text-center">2019年09月</div>
                                    <div class="w10 pull-left text-center"><span class="text-green-main">处理完成</span></div>
                                </div>

                                <%--<div class="panel-body">
                                    <div class="w15 pull-left">
                                        <img src="/img/noavatar_middle.gif" width="25" height="25" alt="图片" class="img-circle">
                                        安妮
                                    </div>
                                    <div class="w55 pull-left">系统需要升级</div>
                                    <div class="w20 pull-left text-center">2016年8月23日</div>
                                    <div class="w10 pull-left text-center"><span class="text-gray">已关闭</span></div>
                                </div>

                                <div class="panel-body">
                                    <div class="w15 pull-left">
                                        <img src="/img/noavatar_middle.gif" width="25" height="25" alt="图片" class="img-circle">
                                        安妮
                                    </div>
                                    <div class="w55 pull-left">系统需要升级</div>
                                    <div class="w20 pull-left text-center">2016年8月23日</div>
                                    <div class="w10 pull-left text-center"><span>处理中</span></div>
                                </div>
                                <div class="panel-body">
                                    <div class="w15 pull-left">
                                        <img src="/img/noavatar_middle.gif" width="25" height="25" alt="图片" class="img-circle">
                                        安妮
                                    </div>
                                    <div class="w55 pull-left">系统需要升级</div>
                                    <div class="w20 pull-left text-center">2016年8月23日</div>
                                    <div class="w10 pull-left text-center"><span>处理中</span></div>
                                </div>
                                <div class="panel-body">
                                    <div class="w15 pull-left">
                                        <img src="/img/noavatar_middle.gif" width="25" height="25" alt="图片" class="img-circle">
                                        安妮
                                    </div>
                                    <div class="w55 pull-left">系统需要升级</div>
                                    <div class="w20 pull-left text-center">2016年8月23日</div>
                                    <div class="w10 pull-left text-center"><span>处理中</span></div>
                                </div>--%>

                                <div class="panel-body text-center">
                                    <a href="#" style="color:#5297d6;">查看全部</a>
                                </div>

                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    我的消息
                                    <a href="#" class="pull-right"><span class="glyphicon glyphicon-refresh"></span></a>
                                </div>
                                <div class="panel-body">

                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
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
    $(function(){

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


