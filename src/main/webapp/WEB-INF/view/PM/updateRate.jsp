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
    <link href="/css/webuploader.css" type="text/css" rel="stylesheet"/>
    <%--<link href="/resource/icon/iconfont.css" rel="stylesheet" type="text/css">--%>
    <link href="//at.alicdn.com/t/font_1463763_xy3yhbtz3u.css" rel="stylesheet" type="text/css">
    <!--include ueditor--->
    <link rel="stylesheet" href="/editor/style.css" />
    <link rel="stylesheet" href="/css/editormd.css" />
    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />
    <!--引入js文件-->
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <%--<script src="/js/marked.min.js"></script>
    <script src="/js/prettify.min.js"></script>
    <script src="/js/raphael.min.js"></script>
    <script src="/js/underscore.min.js"></script>
    <script src="/js/sequence-diagram.min.js"></script>
    <script src="/js/flowchart.min.js"></script>
    <script src="/js/jquery.flowchart.min.js"></script>--%>
    <script type="text/javascript" src="/js/webuploader.js"></script>
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
                        <a href="/MyProject"><span class="sublist-icon glyphicon glyphicon glyphicon-tasks"></span><span class="sub-title">我的文档</span></a></li>
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
            <div class="page-header">
                <img src="/img/logo.jpg" alt=""/>
                <h1 class="h1" style="font-family:Lantinghei SC;font-weight: lighter" id="blogTitle"></h1>

                <div style="color:#8B8B7A;height: 30px;width: 100%;line-height: 30px">
                    <span>开始时间：<span class="time" id="createDate"></span></span>
                    <span style="margin-left: 30px;">截至时间：<span class="time" id="endDate"></span></span>

                    <span style="margin-left: 500px" id="users">
                    </span>
                </div>

            </div>
        </div>
        <div class="col-md-5 col-md-offset-2" id="content">
            <textarea id="onePCode" style="display: none"></textarea>
        </div>
        <%--<div class="col-md-9 col-md-offset-2" id="projectRates">
            <div class="page-header" >
                <h1 class="h4" style="font-family:Lantinghei SC;font-weight: normal">项目任务</h1>
            </div>
        </div>--%>
        <div class="col-md-9 col-md-offset-2" id="projectRates">
            <div class="page-header" >
                <h1 class="h4" style="font-family:Lantinghei SC;font-weight: normal">提交进度</h1>
            </div>
            <div id="ratesDiv" class="wu-example col-sm-12" style="margin-top: 15px;">
                <%--<form class="form-horizontal" role="form">
                    <fieldset>
                        <legend>新建项目</legend>
                        <div class="form-group" style="margin-bottom: 30px;margin-top: 30px;">
                            <label class="col-sm-2 control-label" for="ds_host" style="padding-left: 10px;">项目名</label>
                            <div class="col-sm-10">
                                <input class="form-control" id="ds_host" type="text"/>
                            </div>

                        </div>
                        <div class="form-group" style="margin-bottom: 30px" id="userGroup" style="text-align: center">
                            <label class="col-sm-2 control-label" for="1" style="padding-left: 10px;">参与成员</label>
                            <div id="1"></div>
                            <div class="col-sm-10"  id="userGroup1">
                                <button class="btn btn-success" style="" type ="button" id="addOneUser" data-toggle="modal" data-target="#myModalAddUser">
                                    添加
                                </button>
                            </div>
                        </div>
                        <div class="form-group" style="margin-bottom: 30px;">
                            <label class="col-sm-2 control-label" for="beginTime" style="padding-left: 10px;">开始时间</label>
                            <div class="col-sm-4">
                                <input class="form-control" id="beginTime" type="date"/>
                            </div>
                            &lt;%&ndash;<div class="col-sm-1">
                                <input class="form-control" id="beginTimeHour" type="date"/>
                            </div>&ndash;%&gt;
                            <label class="col-sm-2 control-label" for="stopTime" style="padding-left: 10px;">完成时间</label>
                            <div class="col-sm-4">
                                <input class="form-control" id="stopTime" type="date"/>
                            </div>
                        </div>
                        <div class="form-group" style="margin-bottom: 30px;">
                            <label class="col-sm-2 control-label" for="test-editormd" style="padding-left: 10px;">项目内容</label>
                            <div class="col-sm-12" id="test-editormd" style="margin-top: 30px">
                            <textarea style="display:none;" id="myCode">
</textarea>
                            </div>
                        </div>



                        &lt;%&ndash;<a  id="addOneUser" data-toggle="modal" data-target="#myModalAddUser"><span class="iconfont icon-jiahao1" style="margin-top: 0px;margin-left: 20px;"></span></a>&ndash;%&gt;




                    </fieldset>
                    <fieldset id="chl" style="margin-bottom: 30px;">
                        <legend>添加附件</legend>
                        <div id="uploader" class="wu-example" style="margin-top: 30px;">
                            <!--用来存放文件信息-->
                            <div id="thelist" class="uploader-list"></div>
                            <div class="btns">
                                <div id="picker" style="margin-bottom: 30px;">选择文件</div>
                                <button id="ctlBtn" class="btn btn-default" type="button">开始上传</button>

                            </div>
                            <input type="hidden" id="files"/>
                        </div>
                    </fieldset>

                    <fieldset id="shangchuan" >
                        <legend>上传</legend>
                        <div class="form-group" style="text-align: center;margin-top: 30px;">
                            <button type="button" class="btn btn-primary" id="submit">提交</button>
                        </div>
                    </fieldset>
                </form>--%>
                <%--<button type="button" class="btn btn-link" style="margin-bottom: 15px;" id="addRate">添加</button>--%>

            </div>
        </div>

        <div class="col-md-9 col-md-offset-2"id="downLoad" >
            <div class="page-header">
                <h1 class="h4" style="font-family:Lantinghei SC;font-weight: normal">上传</h1>
            </div>
            <div style="width: 100%;text-align: center"> <button type="button" class="btn btn-primary" id="submit">确认上传</button></div>
        </div>
    </div>
</div>
<!-------信息列表------->

<script type="text/javascript">
    var newDate = new Date();
    var projectId = "";
    $("#submit").click(function () {
        var rqs = new Array();
        rqs[0] = projectId;
        rqs[1] = $("#taskName").val();
        rqs[2] = $("#myCode").val();
        var fileNames ="";
        var filePaths = "";
        $("div #thelist h4").each(function () {
            if ($(this).next().text()=="已上传"){
                fileNames=fileNames+$(this).text()+",";
                filePaths=filePaths+$(this).next().next().val()+",";
            }
        });
        filePaths = filePaths.substr(0,filePaths.length-1);
        fileNames=fileNames.substr(0,fileNames.length-1);
        rqs[3] = filePaths;
        rqs[4] = fileNames;
        $.ajax({
            url:"/addOneRate",
            data:{"rqs":rqs},
            traditional:true,
            success:function (result) {
                if (result=="success"){
                    alert("上传成功");
                    window.location.href="/showAllProject";
                }else if (result=="isExsit"){
                    alert("此项目已有同名进度上传，请确认是否为重复上传");
                }
            }
        });
    });
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
    });
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
        $("#ratesDiv").append('<form class="form-horizontal" role="form">\n' +
            '                <div class="form-group" style="margin-bottom: 30px;margin-top: 15px;">\n' +
            '                    <label class="col-sm-2 control-label" for="taskName" style="padding-left: 10px;">进度名</label>\n' +
            '                    <div class="col-sm-4">\n' +
            '                        <input class="form-control" name="taskName" id="taskName" type="text"/>\n' +
            '                    </div>\n' +
            '                </div>\n' +
            '<div class="form-group" style="margin-bottom: 30px;">\n' +
            '                            <label class="col-sm-2 control-label" for="test-editormd" style="padding-left: 10px;">进度描述</label>\n' +
            '                            <div class="col-sm-12" id="test-editormd" style="margin-top: 30px">\n' +
            '                            <textarea style="display:none;" id="myCode">\n' +
            '</textarea>\n' +
            '                            </div>\n' +
            '                        </div>'+
            '<div id="uploader" class="wu-example" style="margin-top: 30px;">\n' +
            '                        <!--用来存放文件信息-->\n' +
            '                        <div id="thelist" class="uploader-list"></div>\n' +
            '                        <div class="btns">\n' +
            '                            <div id="picker" style="margin-bottom: 30px;">选择文件</div>\n' +
            '                            <button id="ctlBtn" class="btn btn-default" type="button">开始上传</button>\n' +
            '\n' +
            '                        </div>\n' +
            '                    </div>'+

            '            </form>');
        var testEditor;
        testEditor = editormd("test-editormd", {
            /*width   : "90%",*/
            height  : 640,
            syncScrolling : "single",
            path    : "/editor/lib/",

            /**上传图片相关配置如下*/
            imageUpload : true,
            imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL : "/editorImg",//注意你后端的上传图片服务地址
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
            $("#"+file.id+"btn").click(function () {


                var bcc = $(this);
                $.ajax({
                    url:"/deleteOnePMFile",
                    data:{"filePath":$(this).prev().val()},
                    success:function (result) {
                        bcc.parent().remove();

                    }
                });
            });
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

        /*显示文章*/
        $.ajax({
            url:"/getOneProjectById",
            data:{"id":"${pmId}"},
            success:function (result) {
                result = eval(result);
                var result1 = result[0];
                projectId = result1.id;
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

                    $("#content").after('<div class="col-md-9 col-md-offset-2" id="projectRates">\n' +
                        '            <div class="page-header" >\n' +
                        '                <h1 class="h4" style="font-family:Lantinghei SC;font-weight: normal">项目任务</h1>\n' +
                        '            </div>\n' +
                        '        </div>');
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

            }
        });
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
        /*展开上级菜单*/
        var active= $(".subNavBox").children(':eq(2)').children(':eq(0)');
        var active1 = $(".subNavBox").children(':eq(2)').children(':eq(0)').children(':eq(0)');
        $('.navContent:eq(2)').show();
        active1.removeClass("glyphicon-chevron-up");
        active1.addClass("glyphicon-chevron-down");
        active.removeClass("sublist-up");
        active.addClass("sublist-down");

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




