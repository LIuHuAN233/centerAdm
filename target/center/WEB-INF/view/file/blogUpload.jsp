<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/10/30
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/10/16
  Time: 10:43
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
   <%-- <link href="/css/blog/common.css" rel="stylesheet" type="text/css"/>--%>
    <link title="blue" href="/css/center/dermadefault.css" rel="stylesheet" type="text/css"/>
    <link title="green" href="/css/center/dermagreen.css" rel="stylesheet" type="text/css" disabled="disabled"/>
    <link title="orange" href="/css/center/dermaorange.css" rel="stylesheet" type="text/css" disabled="disabled"/>
    <link href="/css/center/templatecss.css" rel="stylesheet" title="" type="text/css" />
    <%--<link href="/css/webuploader.css" type="text/css" rel="stylesheet"/>--%>
    <%--<link href="/resource/icon/iconfont.css" rel="stylesheet" type="text/css">--%>
    <%--<link href="//at.alicdn.com/t/font_1463763_xy3yhbtz3u.css" rel="stylesheet" type="text/css">--%>
    <link rel="stylesheet" href="/editor/style.css" />
    <link rel="stylesheet" href="/css/editormd.css" />
    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/webuploader.js"></script>
    <script src="/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="/js/jquery.session.js" type="text/javascript"></script>
    <script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/js/editormd.js"></script>
    <script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="/ckeditor/config.js"></script>
    <script type="text/javascript" src="/ckeditor/adapters/jquery.js"></script>
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
    <div class="row" style="margin-top: 50px;">
        <div class="col-md-9 col-md-offset-2" style="background-color: #ffffff;padding: 20px 40px;">
            <form class="form-horizontal" role="form">
                <fieldset>
                    <legend>编辑博客</legend>
                    <div class="form-group" style="margin-bottom: 30px;margin-top: 30px;">
                        <label class="col-sm-1 control-label" for="ds_host" style="padding-left: 10px;">博客名</label>
                        <div class="col-sm-3">
                            <input class="form-control" id="ds_host" type="text"/>
                        </div>
                        <label class="col-sm-1 control-label" for="1" style="padding-left: 10px;">标签：</label>
                        <div id="1"></div>
                        <div class="col-sm-7"  id="userGroup1">
                            <button class="btn btn-success" style="" type ="button" id="addOneUser" data-toggle="modal" data-target="#myModalAddUser">
                                添加
                            </button>
                        </div>
                        <%--<label class="control-label col-sm-1"><span class="text-red">*</span>标签:</label>
                        <div id="tagList" class="col-sm-6" style="padding-top: 5px;">
                            &nbsp;&nbsp;&nbsp;
                            <label>
                                <input type="checkbox"/><span>Python</span>
                            </label>
                            <label>
                                <input type="checkbox"/><span>算法</span>
                            </label>
                            <label>
                                <input type="checkbox"/><span>学习资料</span>
                            </label>
                            <label>
                                <input type="checkbox"/><span>Java</span>
                            </label>
                            <label>
                                <input type="checkbox"/><span>C++</span>
                            </label>
                            <label>
                                <input type="checkbox"/><span>Linux</span>
                            </label>

                            <button class="btn btn-link">其他</button>

                            <input type="text" name="tags" id="tags" value="" style="display: none"/>
                    </div>
                    <div class="form-group" style="margin-bottom: 30px" id="userGroup" style="text-align: center">


                            &lt;%&ndash;<input type="text" class="form-control" id="releaseTime" name="insertDatetime">&ndash;%&gt;
                        </div>--%>
                    </div>
                    <div class="form-group" style="margin-bottom: 30px;margin-top: 30px;">
                        <label class="col-sm-1 control-label" for="about" style="padding-left: 10px;">简介：</label>
                        <div class="col-sm-5">
                            <textarea rows="3" cols="" class="form-control" id="about" maxlengh="200"></textarea>
                        </div>


                    </div>
                    <%--<textarea class="ckeditor" id="ckeditor" name="editor1"></textarea>--%>
                    <div class="form-group" style="margin-bottom: 30px;">
                        <div class="col-sm-12" id="test-editormd" style="margin-top: 30px;">
                            <textarea style="display:none;" id="myCode"></textarea>
                        </div>
                    </div>



                    <%--<a  id="addOneUser" data-toggle="modal" data-target="#myModalAddUser"><span class="iconfont icon-jiahao1" style="margin-top: 0px;margin-left: 20px;"></span></a>--%>




                </fieldset>


                <fieldset id="shangchuan" >
                    <legend>上传</legend>
                    <div class="form-group" style="text-align: center;margin-top: 30px;">
                        <button type="button" class="btn btn-primary" id="submit">提交</button>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>

<div id="myModalAddUser" class="modal fade"  role="dialog"     style="overflow: scroll" aria-hidden=true data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">
                    <i class="icon-pencil"></i>
                    <span id="ralation1" style="font-weight:bold">添加标签</span>
                </h4>
            </div>
            <div class="modal-body" style="text-align:center;">
                <div id="pickExam">
                </div>

            </div>

            <div class="modal-footer">
                <input type="hidden" id="newRelationId" name="ID" />
                <button type="submit" class="btn btn-primary"  onclick =addUser()>确定</button>
                <button type="button" class="btn " data-dismiss="modal" id="cancelNew">取消</button>
            </div>

        </div>

    </div>
</div>
<div id="myModalDelete" class="modal fade"  role="dialog"     style="overflow: scroll" aria-hidden=true data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">
                    <i class="icon-pencil"></i>
                    <span id="deleteList" style="font-weight:bold">删除标签</span>
                </h4>
            </div>
            <div class="modal-body" style="text-align:center;">
                <div id="pickExam1">
                </div>

            </div>
            <div class="modal-footer">
                <input type="hidden" id="newRelationId1" name="ID" />
                <button type="submit" class="btn btn-primary"  onclick =deleteUser()>确定</button>
                <button type="button" class="btn green" data-dismiss="modal" id="cancelNew1">取消</button>
            </div>

        </div>

    </div>
</div>
<script type="text/javascript">

    $("#submit").click(function () {
        var rqs = new Array(8);
        rqs[0] =$("#ds_host").val();
        rqs[1] =new Array();
        $("div #userGroup1 span").each(function () {
            rqs[1].push($(this).text());
        });
        rqs[2] = $("#about").val();
        rqs[3] = $("#myCode").text();
        if (rqs[0]!="" && rqs[1]!="" &&rqs[2]!="" &&rqs[3]!="" ){
            $.ajax({
                url:"/attach/addBlog",
                data:{"rqs":rqs},
                method:"POST",
                traditional:true,
                success:function (result) {
                    window.location.href="/browseFile";
                }
            });
        }else {
            alert("必填项不能为空");
        }


    });


    $("#myModalAddUser").on("show.bs.modal",function (event) {

        $.ajax({
            type:"POST",
            url:"/selectAllTag",
            success:function (result) {
                var re = eval(result);
                $.each(re,function (index,item) {
                    $("#pickExam").append($("<label><input style='color: #4F4F4F' type=\"checkbox\"> <label>" +item.tagName+ "</label></label>"));
                })
            }


        });
    })
    $("#myModalAddUser").on("hide.bs.modal",function (event) {
        $("#pickExam").html("");
    });
    $("#myModalDelete").on("show.bs.modal",function (event) {

        $("div #userGroup1 span").each(function (i,dom) {

            $("#pickExam1").append($("<label><input style='color: #4F4F4F' type=\"checkbox\" > <label>" +$(this).text()+ "</label></label>"))
        });
    })
    $("#myModalDelete").on("hide.bs.modal",function (event) {
        $("#pickExam1").html("");
    });
    function deleteUser() {

        $("div #pickExam1 input:checkbox:checked").each(function (i, dom) {

            var a = $(this);

            $("div #userGroup1 span").each(function () {

                if ($(this).text() == a.next().text()) {
                    $(this).remove();

                }
            });
        });
        if ($("div #userGroup1 span").length==0){
            $("#delete").remove();
        }
        $("#myModalDelete").modal("hide");
    }

    function addUser(){
        $("#delete").remove();
        $("div #pickExam input:checkbox:checked").each(function (i,dom) {
            $("#addOneUser").after("<span class=\"span\" style=\"margin-top: 0px;\">"+$(this).next().text()+"</span>"+"  ");

        });
        $("#userGroup1").append("<button class=\"btn btn-warning\" style=\"\" type=\"button\" id=\"delete\" data-toggle=\"modal\" data-target=\"#myModalDelete\">删除</button>");
        $("#myModalAddUser").modal("hide");
    }

    $("#addOneChl").click(function () {
        $("#chl").append("<div class=\"form-group\" style=\"margin-bottom: 30px;\">\n" +
            "                        <label class=\"col-sm-2 control-label\" for=\"ds_host\" style=\"padding-left: 10px;\">项目名</label>\n" +
            "                        <div class=\"col-sm-10\">\n" +
            "                            <input class=\"form-control\" id=\"ds_host\" type=\"text\"/>\n" +
            "                        </div>\n" +
            "\n" +
            "                    </div>");
    });
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
                if (result!=1){
                    window.location.href="/kpiSelect";
                }else {
                    window.location.href = "/kpiSelectNormal";
                }
            }
        });
    });
    var testEditor;
    $(function(){

            $('textarea#editor1').ckeditor();

        testEditor = editormd("test-editormd", {
            /*width   : "90%",*/
            height  : 640,
            syncScrolling : "single",
            path    : "/editor/lib/"
        });

        var $btn = $("#ctlBtn");
        var state = 'pending'; // 上传文件初始化
        var $list = $("#thelist");

        var uploader = WebUploader.create({

            // swf文件路径
            swf: '/js/Uploader.swf',

            // 文件接收服务端。
            server: '/fileUploadRqs',

            // 选择文件的按钮。可选。
            // 内部根据当前运行是创建，可能是input元素，也可能是flash.
            pick: '#picker',

            // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
            resize: false
        });
        // 当有文件被添加进队列的时候
        uploader.on( 'fileQueued', function( file ) {
            $list.append( '<div id="' + file.id + '" class="item">' +
                '<h4 class="info">' + file.name + '</h4>' +
                '<p class="state">等待上传...</p>' +
                '<input type="hidden" class="files"/>'+
                '<button class="btn btn-link" style="display: none" id="'+file.id+'btn'+'" type="button">删除</button>'+
                '</div>' );
        });
        // 文件上传过程中创建进度条实时显示。
        uploader.on( 'uploadProgress', function( file, percentage ) {
            var $li = $( '#'+file.id ),
                $percent = $li.find('.progress .progress-bar');

            // 避免重复创建
            if ( !$percent.length ) {
                $percent = $('<div class="progress progress-striped active">' +
                    '<div class="progress-bar" role="progressbar" style="width: 0%">' +
                    '</div>' +
                    '</div>').appendTo( $li ).find('.progress-bar');
            }

            $li.find('p.state').text('上传中');

            $percent.css( 'width', percentage * 100 + '%' );
        });
        uploader.on( 'uploadSuccess', function( file,response) {
            $( '#'+file.id ).find('p.state').text('已上传');
            $( '#'+file.id ).find('input.files').val(response.path);
            $( '#'+file.id ).find('button.btn-link').show();
            $("#files").val($("#files").val()+response.path+",");

        });

        uploader.on( 'uploadError', function( file ) {
            $( '#'+file.id ).find('p.state').text('上传出错');
        });

        uploader.on( 'uploadComplete', function( file ) {
            $( '#'+file.id ).find('.progress').fadeOut();
        });
        $btn.on('click', function() {
            if (state === 'uploading') {
                uploader.stop();
            } else {
                uploader.upload();

            }
        });


        /*根据权限展示页面*/
        /*展开上级目录*/
        var active= $(".subNavBox").children(':eq(1)').children(':eq(0)');
        var active1 = $(".subNavBox").children(':eq(1)').children(':eq(0)').children(':eq(0)');
        $('.navContent:eq(1)').show();
        active1.removeClass("glyphicon-chevron-up");
        active1.addClass("glyphicon-chevron-down");
        active.removeClass("sublist-up");
        active.addClass("sublist-down");
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



