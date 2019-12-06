<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/10/10
  Time: 15:06
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
    <link href="/css/fileinput.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="/UEditor/themes/default/css/ueditor.css">
    <%--<link rel="stylesheet" type="text/css" href="/css/tomorrow-night-eighties.css"/>--%>
    <link rel="stylesheet" href="/UEditor/third-party/SyntaxHighlighter/shCoreDefault.css"/>

    <!--include ueditor--->
    <script type="text/javascript" src="/UEditor/third-party/SyntaxHighlighter/shCore.js"></script>
    <%--<script type="text/javascript" src="/js/highlight.pack.js"></script>--%>
    <script src="/UEditor/ueditor.config.js"></script>
    <script src="/UEditor/ueditor.all.js"></script>
    <script src="/UEditor/lang/zh-cn/zh-cn.js"></script>
    <script src="/UEditor/ueditor.parse.js"></script>
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <script src="/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="/js/jquery.session.js" type="text/javascript"></script>
    <script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/fileinput.min.js"></script>
    <script src="/js/zh.js" type="text/javascript"></script>
    <script type="text/javascript">
        SyntaxHighlighter.all();
    </script>
    <%--<script src="/js/layer.js" type="text/javascript"></script>--%>
    <%--<script type="text/javascript">

        hljs.initHighlightingOnLoad()


    </script>--%>

    <style>
        .control-label {
            text-align: left;
            padding-left: 118px;
            padding-top: 7px;
        }

        @media screen and (max-width: 1560px) {
            .control-label {
                padding-left: 80px;
            }
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
                        <a href="/showAllProject"><span class="sublist-icon glyphicon glyphicon-th-list"></span><span class="sub-title">项目总览</span></a> </li>
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
                        <a><span class="sublist-icon glyphicon glyphicon-list-alt"></span><span class="sub-title">规章制度</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />中心事务</div>
                        <a><span class="sublist-icon glyphicon glyphicon-comment"></span><span class="sub-title">中心事务</span></a> </li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />系统通知</div>
                        <a><span class="sublist-icon glyphicon glyphicon glyphicon-menu-hamburger"></span><span class="sub-title">系统通知</span></a></li>
                    <li>
                        <div class="showtitle" style="width:100px;"><img src="/img/leftimg.png" />其他通知</div>
                        <a><span class="sublist-icon glyphicon glyphicon-cog"></span><span class="sub-title">其他通知</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="row">
        <%--<div class="header-nav" >
            <ul class="header-nav-list clearfix">
                <li class="nav-one"><a href="/pedestrianRecognition" class="nav-tit">行人崇识别</a> </li>
                <li class="nav-one"><a href="/" class="nav-tit">****</a></li>
                <li class="nav-one"><a href="/" class="nav-tit">****</a> </li>
                <li class="nav-one"><a href="/" class="nav-tit">****</a> </li>
            </ul>
        </div>--%>
            <div class="col-md-9 col-md-offset-1">
                <div style="height: 30px;"></div>
                <form id="announcForm" name="announcForm" enctype="multipart/form-data">
                    <div class="form-group clearfix">
                        <label class="control-label col-md-3 inline"><span class="text-red">*</span>标题:</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="subject" name="title">
                        </div>
                    </div>
                    <div class="form-group clearfix">
                        <label class="control-label col-md-3 inline"><span class="text-red">*</span>添加标签:</label>
                        <div id="tagList">
                            &nbsp;&nbsp;&nbsp;
                            <label>
                                <input type="checkbox"/><span>OIM</span>
                            </label>
                            <label>
                                <input type="checkbox"/><span>课件</span>
                            </label>
                            <label>
                                <input type="checkbox"/><span>python</span>
                            </label>
                            <input type="text" name="tags" id="tags" value="" style="display: none"/>

                            <%--<input type="text" class="form-control" id="releaseTime" name="insertDatetime">--%>
                        </div>

                        <%--<label class="control-label col-md-3 inline"><span class="text-red">*</span>有效期:</label>
                        <div class="col-md-3">
                            <input type="text" class="form-control" id="useLife" name="expiryDatetime">
                        </div>--%>
                    </div>
                    <div class="form-group clearfix">
                        <label class="control-label col-md-3 inline"><span class="text-red">*</span>内容:</label>
                        <div class="col-md-9">
                            <!--style给定宽度可以影响编辑器的最终宽度-->
                            <script type="text/plain" id="myEditor" style="width:100%;height:400px;" name="content">

                            </script>
                        </div>
                    </div>
                    <div class="form-group clearfix" style="text-align: center">
                        <label class="control-label col-md-3 inline"></label>
                        <div class="col-md-9">
                            <a class="btn btn-primary" id="submit">发布</a>
                            <a class="btn btn-primary" id="back">返回</a>
                        </div>
                    </div>
                </form>
                <form class="form-horizontal" role="form">
                    <fieldset>
                        <legend>新建项目</legend>
                        <div class="form-group" style="margin-bottom: 30px;">
                            <label class="col-sm-2 control-label" for="ds_host" style="padding-left: 10px;">项目名</label>
                            <div class="col-sm-10">
                                <input class="form-control" id="ds_host" type="text" placeholder="192.168.1.161"/>
                            </div>

                        </div>
                        <div class="form-group" style="margin-bottom: 30px;">
                            <label class="col-sm-2 control-label" for="pValue" style="padding-left: 10px;">项目内容</label>
                            <div class="col-sm-10">
                                <textarea rows="4" cols="" class="form-control" id="pValue"></textarea>
                            </div>
                        </div>
                        <div class="form-group" style="margin-bottom: 30px;">
                            <label class="col-sm-2 control-label" for="ds_password" style="padding-left: 10px;">开始时间</label>
                            <div class="col-sm-4">
                                <input class="form-control" id="ds_password" type="date"/>
                            </div>
                            <label class="col-sm-2 control-label" for="stopTime" style="padding-left: 10px;">完成时间</label>
                            <div class="col-sm-4">
                                <input class="form-control" id="stopTime" type="date"/>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>选择相关表</legend>
                        <div class="form-group">
                            <label for="disabledSelect"  class="col-sm-2 control-label">表名</label>
                            <div class="col-sm-10">
                                <select id="111" class="form-control">
                                    <option>1</option>
                                    <option>1</option>
                                </select>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>字段名</legend>
                        <div class="form-group">
                            <label for="disabledSelect"  class="col-sm-2 control-label">表名</label>
                            <div class="col-sm-10">
                                <select id="disabledSelect" class="form-control">
                                    <option>1</option>
                                    <option>1</option>
                                </select>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>

    </div>
</div>
<!-------信息列表------->

<script type="text/javascript">



    var ue = UE.getEditor('myEditor');

    //请求自己的接口上传文件
    UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
    UE.Editor.prototype.getActionUrl = function (action) {
        if (action == 'uploadimage' || action == 'uploadscrawl' || action == 'uploadvideo') {
            return '/attach/uploadFile';
        } else {

            return this._bkGetActionUrl.call(this, action);
        }
    };
    $('#submit').on('click', function () {
        // 用户点击发布按钮后首先禁用按钮，避免用户重复发布
        $("pre").each(function (index,item) {

            $(this).append("</code>");
            $(this).prepend("<code id=\"mycode\">");

        });
        $("#submit").attr({"disabled": "disabled"});
        var tag="";
        $(":checkbox:checked").each(function () {

            tag+=$(this).next().text()+",";

        })
        tag = tag.substr(0,tag.length-1);
        $("#tags").val(tag);
        var content = UE.getEditor('myEditor').getContent();
        content = content.split("\n")[0] + "</p>";
        alert(content)
        var isContentEmpty; // 公告内容是否为空
        if (content == "" || content == "<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></p>" || content == null) {
            isContentEmpty = false;
            Common.bs.alert("请填写内容！");
        } else {
            isContentEmpty = true;
        }
        if (isContentEmpty) {
            $.ajax({
                url: '/attach/addBlog',
                type:'post',
                data: $("#announcForm").serialize(),
                success: function (result) {
                    // 保存成功后仍停留在新增界面
                    if (result==1) {  // 保存成功
                        alert("保存成功，请到公告列表查看！");
                    } else {  // 保存失败的话提示失败信息
                        alert(result.message);
                    }
                },
                error: function () {
                    Common.bs.alert('服务器错误！');
                }
            });
        }
    });
    /*// 控制日期控件的行为
    $(document).ready(function () {
        var start = {
            elem: '#releaseTime',
            format: 'YYYY-MM-DD',
            min: laydate.now(), //设定最小日期为当前日期
            max: '2099-06-16', //最大日期
            istime: true,
            istoday: false,
            choose: function (datas) {
                end.min = datas; //开始日选好后，重置结束日的最小日期
                end.start = datas //将结束日的初始值设定为开始日
            }
        };
        var end = {
            elem: '#useLife',
            format: 'YYYY-MM-DD',
            min: laydate.now(),
            max: '2099-06-16',
            istime: true,
            istoday: false,
            choose: function (datas) {
                start.max = datas; //结束日选好后，重置开始日的最大日期
            }
        };
        laydate(start);
        laydate(end);
    });*/
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

    function initFileInput(ctrlName) {
        var control = $('#' + ctrlName);
        var tag = "";
        control.fileinput({
            language: 'zh', //设置语言
            uploadUrl: "/fileUploadRqs", //上传的地址
            allowedFileExtensions: null,//接收的文件后缀
            //uploadExtraData:{"id": 1, "fileName":'123.mp3'},
            uploadExtraData:function(){

                return {"tag":tag,"fileType":$("option:selected").val(),"fileName":$("#fileName").val(),"fileNotes":$("#fileNotes").val()};
            },
            uploadAsync: true, //默认异步上传
            showUpload: true, //是否显示上传按钮
            showRemove : true, //显示移除按钮
            showPreview : true, //是否显示预览
            showCaption: false,//是否显示标题
            browseClass: "btn btn-primary", //按钮样式
            maxFileCount: 5, //允许同时上传的最大文件个数
            enctype: 'multipart/form-data',
            validateInitialCount:true,
            msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",

        }).on('filepreupload', function(event, data, previewId, index) {     //上传中
            console.log('文件正在上传');
        }).on("fileuploaded", function (event, data, previewId, index) {    //一个文件上传成功
            var form = data.form, files = data.files, extra = data.extra,
                response = data.response, reader = data.reader;
            console.log(response);//打印出返回的json
            console.log(response.status);//打印出路径
        }).on('fileerror', function(event, data, msg) {  //一个文件上传失败
            console.log('文件上传失败！'+data.status);
        }).on('filebatchpreupload',function () {
            $(":checkbox:checked").each(function () {

                tag+=$(this).next().text()+",";

            })
            alert(tag)
            tag = tag.substr(0,tag.length-1);
            alert(tag);
        })
    }

    $(function(){

        /*初始化上传控件*/
        initFileInput("input-id");



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




