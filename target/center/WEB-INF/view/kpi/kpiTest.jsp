<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/9/11
  Time: 9:10
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
    <link href="/css/bootstrap-table.min.css" rel="stylesheet" type="text/css"/>
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <script src="/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="/js/jquery.session.js" type="text/javascript"></script>
    <script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/js/bootstrap-table.min.js" type="text/javascript"></script>
    <script src="/js/bootstrap-table-zh-CN.min.js" type="text/javascript"></script>
    <%-- <script src="/js/bootstrap-editable.min.js" type="text/javascript"></script>--%>
    <script src="/js/bootstrap-table-editable.js" type="text/javascript"></script>
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
    <div class="row">

        <div class="col-md-2 col-md-offset-2" >
            <h3>绩效测评</h3>
            <div style="margin-top: 30px">
                <h4>本次需要评审的人员名单如下</h4>
                <textarea id="assessPerson" style="width: 240px;height: 200px;
            border: 1px solid #000000;border-radius: 4px;
            margin-top: 30px;font-family: 'microsoft yahei';font-size: 15px" readonly="readonly"></textarea>
            </div>
            <br>
            <br>

            <select  id="select1" >
                <%--<option value ="volvo">Volvo</option>
                <option value ="saab">Saab</option>
                <option value="opel">Opel</option>
                <option value="audi">Audi</option>--%>
            </select>
            <br>
            <br>
            <input type="number" id="gradeSelect" name="gradeSelect">
            <br>
            <br>
            <button id="submitSelect">确认提交</button>
            <div style="width: 50px;height: 50px" id="YouResult"></div>

        </div>

        <div class="col-md-offset-1 col-md-6" style="margin-top: 100px;">
            <div id="selectResult">
                <button id="selectThisTime"><h4>查询个人本次打分记录</h4></button>
                <table class="table table-hover" style="table-layout: fixed;word-break: break-all;display: table;word-wrap: break-word" id="table_group"></table>

            </div>
        </div>


    </div>


</div>
<script type="text/javascript">
    $("#quit").click(function () {
        $.cookie("userName",null,{
            expires:0
        });
        $.cookie(("password",null),{
            expires:0
        })
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
    $(document).ready(function () {
        $.ajax({
            url:"/authorityControl",
            success:function (result) {
                if (result!=1){
                    $("#kpiSetControl").show();
                    $("#kpiMemberControl").show();
                }
            }
        });
        $.ajax({
            method:"post",
            contentType:'application/json;charset=utf-8',
            dataType:'json',
            url:"/getAllAssessPerson",
            success:function (result) {

                var assess = eval(result);


                /*var assess =new Array();
                assess = result.split(" ");*/
                var newText;
                var i= 0;
                $("#select1").html(""); //绑定模号下拉菜单
                $("#select1").append($("<option value=\"0\">请选择id</option>"));
                $.each(assess,function (index,item) {

                    var person = item.uSid+"    "+item.uName+"\n";
                    newText= document.getElementById("assessPerson").value+=person;
                    i++;
                    var test= $("#select1").append($("<option value=\"" + i+ "\">" + item.uSid+" "+item.uName+ "</option>"));


                })/*alert(item.name);*/
                document.getElementById("assessPerson").value= newText;
            }
        })
    })
    $("#submitSelect").click(function () {
        var bsIdStr = $("#select1 option:selected").text();
        var bsId = bsIdStr.split(" ")[0];
        $.ajax({
            url:"/insertOneThisTime",
            type:"POST",
            data:{grade:$("#gradeSelect").val(),bSid:bsId},
            success:function (result) {
                if (result==1){
                    $("#YouResult").html("成功");
                }else if(result==0){
                    $("#YouResult").html("失败，请确认是否重复打分");
                }if(result==2){
                    alert("打分失败,请重新在你的打分范围内打分!");
                }else if(result==3){
                    alert("修改成功");
                }else  if (result==4){
                    alert("修改失败")
                }else if(result==5){
                    alert("评审已结束！")
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

    $("#selectThisTime").click(function () {
        window.location.href="./kpiTest";
    });
    $('#table_group').bootstrapTable("destroy");
    $("#table_group").bootstrapTable({
        ajax:function(request){                    //使用ajax请求
            $.ajax({
                type:"GET",
                url:'/selectAllThisTimeMe',
                contentType:'application/json;charset=utf-8',
                dataType:'json',
                data:request.data,
                success:function (res) {
                    request.success({
                        row:res,
                    });
                    $('#table_group').bootstrapTable('load', res);
                },
                error:function(error){
                    console.log(error);
                }
            })
        },
        toolbar: '#toolbar',                //工具按钮用哪个容器
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                   //是否显示分页（*）
        sortable: true,                     //是否启用排序
        sortOrder: "asc",                   //排序方式
        queryParams: function (params) { // 请求服务器数据时发送的参数，可以在这里添加额外的查询参数，返回false则终止请求

            return {
                pageSize: params.limit, // 每页要显示的数据条数
                offset: params.offset, // 每页显示数据的开始行号
                sort: params.sort, // 要排序的字段
                sortOrder: params.order, // 排序规则
            }
        },         //传递参数（*）
        sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber:1,                       //初始化加载第一页，默认第一页
        pageSize: 5,                       //每页的记录行数（*）
        pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
        smartDisplay:false,
        search: false,                      //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
        strictSearch: true,
        showColumns: false,                 //是否显示所有的列
        showRefresh: false,                 //是否显示刷新按钮
        minimumCountColumns: 2,             //最少允许的列数
        clickToSelect: true,                //是否启用点击选中行
                                            //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
        uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
        showToggle:false,                   //是否显示详细视图和列表视图的切换按钮
        cardView: false,                    //是否显示详细视图
        detailView: false,                   //是否显示父子表
        columns: [

            {
                field:'uName',
                title:'被评审人',
                width:100,
                align:"center",
                valign:"middle",
                formatter:function (value,row,index) {
                    return row.user.uName;
                }
            },{
                field:'value',
                title:'成绩',
                width:100,
                align:"center",
                valign:"middle",
            },{
                field:'updateTime',
                title:'评审时间',
                width:100,
                align:"center",
                valign:"middle",
                formatter:function (value,row,index) {

                    if (row.updateTime!=null){
                        var date = new Date(row.updateTime.time);
                        var date1 = date.getFullYear()+"-"+((date.getMonth()+1)<10?"0"+(date.getMonth()+1):(date.getMonth()+1))+"-"+date.getDate();
                        return date1;
                    }else {
                        return "";
                    }

                }
            },{
                field:'kpiNumber',
                title:'考评月次',
                width:100,
                align:"center",
                valign:"middle",
                formatter:function (value,row,index) {
                    if (row.kpiNumber!=""){
                       return  row.kpiNumber;
                    }else {
                        return "";
                    }
                }
            }

            //自定义表格内容，字符串内是方法名称

        ],
        onLoadSuccess: function(){  //加载成功时执行
            //alert("加载成功");
            $("#table_group th").css("text-align","center");  //设置表头内容居中
        },
        onLoadError: function(){  //加载失败时执行
            alert("加载数据失败");
        },

    });
</script>
<script type="text/javascript">

    $(function(){

        /*展开上级目录*/
        var active= $(".subNavBox").children(':eq(0)').children(':eq(0)');
        var active1 = $(".subNavBox").children(':eq(0)').children(':eq(0)').children(':eq(0)');
        $('.navContent:eq(0)').show();
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
</script>
</body>
</html>


