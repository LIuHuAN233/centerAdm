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
    <link     />
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <script src="/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="/js/jquery.session.js" type="text/javascript"></script>
    <script src="/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/js/bootstrap-table.min.js" type="text/javascript"></script>
    <script src="/js/bootstrap-table-zh-CN.min.js" type="text/javascript"></script>
   <%-- <script src="/js/bootstrap-editable.min.js" type="text/javascript"></script>--%>
    <script src="/js/bootstrap-table-editable.js" type="text/javascript"></script>

    <style type="text/css">
        .dropdown-menu {
            width: 500px;
            height: 170px;
            padding: 0;
        }

        .dropdown-menu .all {
            width: 100%;
            height: 44px;
            background-color: #f9f9fa;
            line-height: 44px;
            padding-left: 10px;
            font-size: 23px;
        }
        #pickExam label{
             font-size: 23px;
             vertical-align: middle;
         }
        #pickAssess label{
            font-size: 23px;
            vertical-align: middle;
        }
        .dropdown-menu input[type="checkbox"] {
            margin-left: 20px;
            zoom: 200%;
        }

        label.checkbox {
            display: inline-block;
        }

        .choose_bank label {
            margin-bottom: 16px;
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
<div class="down-main row">
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
        <div class="col-md-1 col-md-offset-2">
            <h3>设置</h3>
            <br>
            <br>
                <button type="button" id="startPerformance" class=""></button>



        </div>
        <div class="col-md-3 " id="tes1">
            <h3>分组设置</h3>
            <br>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalGroup">添加</button>
            <table class="table table-hover" style="table-layout: fixed;word-break: break-all;display: table;word-wrap: break-word" id="table_group"></table>

        </div>
        <div class="col-md-3">
            <h3>组关系设置</h3>
            <br>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalAddNewRelation" id="addNewRelationBtn">添加</button>
            <table class="table table-hover" style="table-layout: fixed;word-break: break-all;display: table;word-wrap: break-word" id="table_group_relation"></table>
        </div>
        <div class="col-md-3">
            <h3>所有用户</h3>
            <br>
            <br>
            <br>

            <table class="table table-hover table-responsive" style="table-layout: fixed;word-break: break-all;display: table;word-wrap: break-word" id="table_show_allUser"></table>
        </div>
    </div>

</div>

<!-- 添加的模态对话框 -->
<div id="myModalGroup" class="modal fade"  role="dialog"   aria-hidden=true data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">
                    <i class="icon-pencil"></i>
                    <span id="lblAddTitle" style="font-weight:bold">添加</span>
                </h4>
            </div>
            <div class="modal-body" style="text-align:center;">
                <form  id ='searchForm' class="bs-example bs-example-form" role = "form">
                    <div class = "input-group" >
                        <span class="input-group-addon text-center"><i class="icon-th"></i></span>
                        <input type = "text" class=" form-control" name="newGroupName"
                               id="newGroupName" placeholder="分组名">
                    </div>
                    <div class="modal-body" style="text-align:left;">
                        <div id="pickExamAddUser">
                            <span  id="h1">博：</span><br/><br/>
                            <span  id="h2">研3：</span><br/><br/>
                            <span  id="h3">研2：</span><br/><br/>
                            <span  id="h4">研1：</span><br/><br/>
                            <span  id="h5">其他：</span>
                        </div>
                    </div>


                </form>
                <div class="modal-footer">
                    <input type="hidden" id="ID" name="ID" />
                    <button type="submit" class="btn btn-primary"  onclick =newGroup()>确定</button>
                    <button type="button" class="btn green" data-dismiss="modal">取消</button>
                </div>

            </div>
        </div>
    </div>
</div>
<div id="myModalUpdate" class="modal fade"  role="dialog"   aria-hidden=true data-backdrop="static">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">
                    <i class="icon-pencil"></i>
                    <span id="groupUpdate" style="font-weight:bold">修改</span>
                </h4>
            </div>
            <div class="modal-body" style="text-align:center;">
                <form  id ='updateForm' class="bs-example bs-example-form" role = "form">
                    <div class = "input-group" >
                        <span class="input-group-addon text-center"><i class="icon-th"></i></span>
                        <input type = "text" class=" form-control" name="newGroupName"
                               id="updateGroupName" placeholder="分组名">
                    </div>
                    <div class="modal-body" style="text-align:center;">
                        <div id="pickExamUpdateGroup">
                        </div>

                    </div>


                </form>
                <div class="modal-footer">
                    <input type="hidden" id="updateId" name="ID" />
                    <button type="submit" class="btn btn-primary"  onclick =updateGroup()>确定</button>
                    <button type="button" class="btn green" data-dismiss="modal">取消</button>
                </div>

            </div>
        </div>
    </div>
</div>
<%--<div id="myModalAddUser" class="modal fade"  role="dialog"     style="overflow: scroll" aria-hidden=true data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">
                    <i class="icon-pencil"></i>
                    <span id="ralation1" style="font-weight:bold">添加成员</span>
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
                    <span id="deleteList" style="font-weight:bold">删除成员</span>
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
</div>--%>
<div id="myModalAddNewRelation" class="modal fade"  role="dialog"   aria-hidden=true data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">
                    <i class="icon-pencil"></i>
                    <span id="ralation1" style="font-weight:bold">添加组关系</span>
                </h4>
            </div>
            <div class="modal-body" style="text-align:center;">
                <form  id ='newRF' class="bs-example bs-example-form" role = "form">
                <div class="btn-group choose_bank" style="height: 22px;">

                    <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown" style="height: 22px">
                       <label>评价人列表</label>
                        <span class="caret"></span>
                    </button>
                    <div class="dropdown-menu" id="pickExam">
                    </div>
                </div>
                <br>
                <br>
                <h5></h5>
                <div class="btn-group choose_bank" style="height: 22px;">

                    <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown" style="height: 22px">
                        <label>被评选人列表</label>
                        <span class="caret"></span>
                    </button>
                    <div class="dropdown-menu" id="pickAssess">
                    </div>
                </div>
                    <br>
                    <br>

                        <label style="font-size: 18px;vertical-align: middle"><input type="checkbox"  id="newUse" style="zoom:200%"/>启用</label>

                </form>
            </div>

            <div class="modal-footer">
                <input type="hidden" id="newRelationId" name="ID" />
                <button type="submit" class="btn btn-primary"  onclick =addNewRelation()>确定</button>
                <button type="button" class="btn green" data-dismiss="modal" id="cancelNew">取消</button>
            </div>
        </div>

    </div>
</div>
<div id="myModalAddUpdateRelation" class="modal fade"  role="dialog"   aria-hidden=true data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">
                    <i class="icon-pencil"></i>
                    <span id="updateRelation1" style="font-weight:bold">修改组关系</span>
                </h4>
            </div>
            <div class="modal-body" style="text-align:center;">
                <form  id ='upF' class="bs-example bs-example-form" role = "form">
                    <div class="btn-group choose_bank" style="height: 22px;">
                        <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown" style="height: 22px;vertical-align: middle;text-align: center">

                                <label>评选人列表</label>
                                <span class="caret"></span>

                        </button>
                        <div class="dropdown-menu" id="updateExam">

                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="btn-group choose_bank" style="height: 22px;">
                        <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown" style="height: 22px">
                            <label>被评选人列表</label>
                            <span class="caret"></span>
                        </button>
                        <div class="dropdown-menu" id="updateAssess">
                        </div>
                    </div>
                    <br>
                    <br>

                    <label style="font-size: 18px;vertical-align: middle"><input type="checkbox"  id="updateUse" style="zoom:200%"/>启用</label>

                </form>
            </div>

            <div class="modal-footer">
                <input type="hidden" id="updateRelationId" name="ID" />
                <button type="submit" class="btn btn-primary" id="upRe" onclick =updateRelation()>修改</button>
                <button type="button" class="btn green" data-dismiss="modal" id="cancelUpdate">取消</button>
            </div>
        </div>

    </div>
</div>
<script type="text/javascript" charset="UTF-8">
    /*$("#myModalAddUpdateRelation").modal({
        backdrop: false,//点击空白处不关闭对话框
    });*/

    $("#myModalGroup").on("show.bs.modal",function (event) {

        $.ajax({
            type:"POST",
            url:"/selectAllUserWithG",
            success:function (result) {
                var re = eval(result);
                $.each(re,function (index,item) {
                    if (item.userG.grade=="研3"){
                        $("#h2").after($("<label><input style='color: #4F4F4F' type=\"checkbox\" name="+item.uSid+"> <label>" +item.uName+ "</label></label>"));
                    }else if (item.userG.grade=="研2"){
                        $("#h3").after($("<label><input style='color: #4F4F4F' type=\"checkbox\" name="+item.uSid+"> <label>" +item.uName+ "</label></label>"));
                    }else if (item.userG.grade=="研1"){
                        $("#h4").after($("<label><input style='color: #4F4F4F' type=\"checkbox\" name="+item.uSid+"> <label>" +item.uName+ "</label></label>"));
                    }else if ((item.userG.grade).indexOf("博")!=-1){
                        $("#h1").after($("<label><input style='color: #4F4F4F' type=\"checkbox\" name="+item.uSid+"> <label>" +item.uName+ "</label></label>"));
                    }else {
                        $("#h5").after($("<label><input style='color: #4F4F4F' type=\"checkbox\" name="+item.uSid+"> <label>" +item.uName+ "</label></label>"));
                    }
                })
            }


        });
    })
    $("#myModalGroup").on("hide.bs.modal",function (event) {
        $("#pickExamAddUser").html("");
    });
    $("#myModalUpdate").on("hide.bs.modal",function (event) {
        $("#pickExamUpdateGroup").html("");
    });
    $("#quit").click(function () {
        $.cookie("userName",null,{
            expires:0
        });
        $.cookie(("password",null),{
            expires:0
        })
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
    $("#cancelUpdate").click(function () {
        $("#cancelUpdate").parent().prev().find("div .dropdown-menu").empty();
    });
    $("#cancelNew").click(function () {
        $("#cancelNew").parent().prev().find("div .dropdown-menu").empty();
    });
    function newGroup()
    {
        var newGroupId = "";
        var newGroup = "";
        $("div #pickExamAddUser input:checkbox:checked").each(function (i,dom) {
            newGroupId =newGroupId+$(this).attr("name")+",";
            newGroup = newGroup+$(this).next().text()+",";

        });
        newGroup=newGroup.substr(0,newGroup.length-1);
        newGroupId=newGroupId.substr(0,newGroupId.length-1);
        $.ajax({
            url:"/addNewGroup",
            method:"post",
            data:{"newGroupName":$("#newGroupName").val(),"newGroup":newGroup,"newGroupId":newGroupId},
            success:function (result) {
                if (result=="a"){
                    window.location.href="./kpiSet";
                }
            },
            error:function () {
                alert("添加失败！");
            }
        });


    }

    function addNewRelation(){
        var pickExam = "";
        $("div #pickExam input:checkbox:checked").each(function (i,dom) {
           pickExam+= $(this).next().text()+",";
        });
        pickExam = pickExam.substr(0,pickExam.length-1);
        var pickAssess = "";
        $("div #pickAssess input:checkbox:checked").each(function (i,dom) {
            pickAssess+= $(this).next().text()+",";
        });
        pickAssess = pickAssess.substr(0,pickAssess.length-1);
        var newUse = 0;
        if($("#newUse").is(":checked")){
            newUse =1;
        }
        $.ajax({
            url:"/addNewGroupRelation",
            method:"post",
            data:{"pickExam":pickExam,"pickAssess":pickAssess,"newUse":newUse},
            success:function (result) {
                window.location.href="./kpiSet"
            }
        });
    }
    $("#addNewRelationBtn").click(function () {
        $.ajax({
            url:"/selectAllGroupName",
            contentType:'application/json;charset=utf-8',
            dataType:'json',
            success:function (result) {
                $.each(result,function (index,item) {
                    $("#pickExam").append($("<label><input type=\"checkbox\"> <label>" +item.kGroupName+ "</label></label>"));
                    $("#pickAssess").append($("<label><input type=\"checkbox\"><label>" +item.kGroupName+ "</label></label>"));
                })
            }
        });
    });
    function updateGroup(){
        var updateGroupId = "";
        var updateGroup = "";
        $("div #pickExamUpdateGroup input:checkbox:checked").each(function (i,dom) {
            updateGroupId =updateGroupId+$(this).attr("name")+",";
            updateGroup = updateGroup+$(this).next().text()+",";

        });
        updateGroup=updateGroup.substr(0,updateGroup.length-1);
        updateGroupId=updateGroupId.substr(0,updateGroupId.length-1);
        $.ajax({
            url:"/updateGroup",
            method:"post",
            data:{"updateGroupName":$("#updateGroupName").val(),"updateGroup":updateGroup,"updateGroupId":updateGroupId},
            success:function (result) {
                window.location.href="./kpiSet";
            },
            error:function () {
                alert("操作失败！")
            }
        });
    }
    function updateRelation(){
        var newUse = 0;
        if($("#upRe").is(":checked")){
            newUse =1;
        }
        $.ajax({
            url:"/updateRelation",
            method:"post",
            data:{"updateExam":$("#updateExam").val(),"updateAssess":$("#updateAssess").val(),"updateUse":newUse},
            success:function (result) {
                window.location.href="./kpiSet";
            },
            error:function () {
                alert("操作失败！")
            }
        });
    }
    window.operateEvents = {
        'click .like': function (e, value, row, index) {
            alert('You click like icon, row: ' + JSON.stringify(row));
            console.log(value, row, index);
        },
        'click .edit': function (e, value, row, index) {
            $("#updateGroupName").val(row.kGroupName);
            $.ajax({
                type:"POST",
                url:"/selectAllUser",
                success:function (result) {
                    var re = eval(result);
                    $.each(re,function (index,item) {
                        $("#pickExamUpdateGroup").append($("<label><input style='color: #4F4F4F' type=\"checkbox\" name="+item.uSid+"> <label>" +item.uName+ "</label></label>"));

                    })
                    var groupUsers = (row.kGroup).split(",");
                    $("div #pickExamUpdateGroup input:checkbox").each(function (i,dom) {
                        var th = $(this);
                        for (var i=0;i<groupUsers.length;i++){
                            if (groupUsers[i]===th.next().text()){
                                th.prop("checked",true);
                            }
                        }
                    });
                    $("#myModalUpdate").modal("show");
                }


            });



        },
        'click .remove': function (e, value, row, index) {
            //alert('You click remove icon, row: ' + JSON.stringify(row));
            /*var delid=$("[data-index="+index+"]").find('td').eq(0).children().first().val();
            alert(delid);*/
            var delName = row.kGroupName;
            if (confirm("确定删除该条记录吗？" + delName)) {
                $.ajax({
                    url: "/deleteOneGroup",
                    data: {"delName": delName},
                    success: function (result) {
                        window.location.href = "./kpiSet";
                    }
                });
            }
        }
    }
    window.operateEvents1 = {
        'click .like': function (e, value, row, index) {
            alert('You click like icon, row: ' + JSON.stringify(row));
            console.log(value, row, index);
        },
        'click .edit': function (e, value, row, index) {

            $.ajax({
                url:"/selectAllGroupName",
                contentType:'application/json;charset=utf-8',
                dataType:'json',
                success:function (result) {
                    $.each(result,function (index,item) {
                        $("#updateExam").append($("<label><input type=\"checkbox\"> <label>" +item.kGroupName+ "</label></label>"));
                        $("#updateAssess").append($("<label><input type=\"checkbox\"><label>" +item.kGroupName+ "</label></label>"));

                    })
                    var kExam1 = new Array();
                    kExam1=(row.kExam).split(",");
                    $.each(kExam1,function (i,item) {
                        $("div #updateExam input:checkbox").each(function (i,dom) {

                            if($(this).next().text()==item){
                                $(this).attr("checked","true");
                            };
                        });
                    })
                    var kAssess1 = new Array();
                    kAssess1=(row.kAssess).split(",");
                    $.each(kAssess1,function (i,item) {
                        $("div #updateAssess input:checkbox").each(function (i,dom) {

                            if($(this).next().text()==item){
                                $(this).attr("checked","true");
                            };
                        });
                    })

                    if (row.isUse=="已启用"){
                        $("#updateUse").attr("checked","true");
                    }
                    /*for( j = 0,j<kExam.length; j++) {
                        alert(j)
                        $("div #updateExam input:checkbox").each(function (i,dom) {

                            if($(this).next().text()==kExam[j]){
                                alert(1)
                                $(this).attr("checked","true");
                            };
                        });
                    }*/

                    var kAssess = new Array();
                    kAssess=(row.kAssess).split(",");
                    var kRelaName = new Array();
                    kRelaName = (row.kRelaName).split(",");
                    var isUse = new Array();
                    isUse= (row.isUse).split(",");

                }
            });


            /*$("#updateGroupName").val(row.kGroupName);
            $("#updateGroup").val(row.kGroup);
            $("#myModalUpdate").modal("show");*/

        },
        'click .remove': function (e, value, row, index) {
            //alert('You click remove icon, row: ' + JSON.stringify(row));
            /*var delid=$("[data-index="+index+"]").find('td').eq(0).children().first().val();
            alert(delid);*/
            var delName = row.kRelaName;
            if (confirm("确定删除该条记录吗？" + delName)) {
                $.ajax({
                    url: "/deleteOneGroupRelation",
                    method:"post",
                    data: {"delName": delName},
                    success: function (result) {
                        window.location.href = "./kpiSet";
                    }
                });
            }
        }
    }
    $('#table_show_allUser').bootstrapTable("destroy");
    $("#table_show_allUser").bootstrapTable({
        ajax:function(request){                    //使用ajax请求
            $.ajax({
                type:"GET",
                url:'/selectAllUser',
                contentType:'application/json;charset=utf-8',
                dataType:'json',
                data:request.data,
                success:function (res) {
                    request.success({
                        row:res,
                    });
                    $('#table_show_allUser').bootstrapTable('load', res);
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
        pageSize: 10,                       //每页的记录行数（*）
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
                field:'uSid',
                title:'用户名',
                width:100,
                align:"center",
                valign:"middle"

            },{
                field:'uName',
                title:'姓名',
                width:200,
                align:"center",
                valign:"middle"
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
    $('#table_group').bootstrapTable("destroy");
    $("#table_group").bootstrapTable({
        ajax:function(request){                    //使用ajax请求
            $.ajax({
                type:"GET",
                url:'/showAllGroup',
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
                field:'kGroupName',
                title:'分组名',
                width:100,
                align:"center",
                valign:"middle"

            },{
                field:'kGroup',
                title:'分组成员',
                width:200,
            },{
                field:'action',
                title:'操作',
                align:"center",
                valign:"middle",
                formatter: operateFormatter,
                events:operateEvents
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
    $('#table_group_relation').bootstrapTable("destroy");
    $("#table_group_relation").bootstrapTable({
        ajax:function(request){                    //使用ajax请求
            $.ajax({
                type:"GET",
                url:'/showAllGroupRelation',
                contentType:'application/json;charset=utf-8',
                dataType:'json',
                data:request.data,
                success:function (res) {
                    request.success({
                        row:res,
                    });
                    $('#table_group_relation').bootstrapTable('load', res);
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
                field:'kExam',
                title:'评选组',

                align:"center",
                valign:"middle"

            },{
                field:'kAssess',
                title:'被评选组',
                align:"center",
                valign:"middle"
            },
            {
                field:'kRelaName',
                title:'组间关系名',
                align:"center",
                valign:"middle"
            }
            ,
            {
                field:'isUse',
                title:'是否启用',
                align:"center",
                valign:"middle"
            }
            ,{
                field:'action',
                title:'操作',
                align:"center",
                valign:"middle",
                formatter: operateFormatter1,
                events:operateEvents1
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
    function operateFormatter(value, row, index) {
        return [
            '<a class="edit ml10" style="color:black;" href="javascript:void(0)" title="编辑">',
            '<span class="glyphicon glyphicon-edit"></span>',
            '</a>&emsp;',
            '<a class="remove ml10" style="color:black;" href="javascript:void(0)" title="删除">',
            '<i class="glyphicon glyphicon-remove"></i>',
            '</a>'
        ].join('');
    }

    function operateFormatter1(value, row, index) {
        return [
            '<a class="edit ml10" data-toggle="modal" data-target="#myModalAddUpdateRelation" style="color:black;" title="编辑">',
            '<span class="glyphicon glyphicon-edit"></span>',
            '</a>&emsp;',
            '<a class="remove ml10" style="color:black;" href="javascript:void(0)" title="删除">',
            '<i class="glyphicon glyphicon-remove"></i>',
            '</a>'
        ].join('');
    }

//列设置
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
    $("#kpiTest").click(function () {
        $.ajax({
            url:"/checkStatus",
            success:function (result) {
                if (result==0){
                    alert("评审尚未开始，请联系管理员")
                } else if(result==1){
                    window.location.href='/kpiTest';
                }
            }
        })
    });
    $("#startPerformance").click(function () {
        if ($("#startPerformance").html()=="关闭测评"){
            var status = 0;
            $.ajax({
                url:"/changeStatus",
                data:{status:status},
                success:function (result) {
                     if(result!=0){
                         $('#startPerformance').removeClass("btn-primary btn-warning");
                         $('#startPerformance').html('');
                         $('#startPerformance').addClass("btn btn-primary");
                         $('#startPerformance').html("开启测评");
                     }
                },
                error:function () {
                    alert("数据获取失败");
                }
            });
        }else {
            var status = 1;
            $.ajax({
                url:"/changeStatus",
                data:{status:status},
                success:function (result) {
                    if(result!=0){

                        if (result==5){
                            alert("本月考评已结束!");
                        }else{
                            $('#startPerformance').removeClass("btn-primary btn-warning");
                            $('#startPerformance').html('');
                            $('#startPerformance').addClass("btn btn-warning");
                            $('#startPerformance').html("关闭测评");
                        }
                    }
                },
                error:function () {
                    alert("数据获取失败");
                }
            });
        }
    });
    $(function(){
        /*展开上级目录*/
        var active= $(".subNavBox").children(':eq(0)').children(':eq(0)');
        var active1 = $(".subNavBox").children(':eq(0)').children(':eq(0)').children(':eq(0)');
        $('.navContent:eq(0)').show();
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

        $.ajax({
            type:"POST",
            url:"/checkStatus",
            traditional: true,
            success:function (result) {
                if(result==1){
                    $('#startPerformance').removeClass("btn-primary btn-warning");
                    $('#startPerformance').html('');
                    $('#startPerformance').addClass("btn btn-warning");
                    $('#startPerformance').html("关闭测评");

                }else  if(result==0){
                    $('#startPerformance').removeClass("btn-primary btn-warning");
                    $('#startPerformance').html('');
                    $('#startPerformance').addClass("btn btn-primary");
                    $('#startPerformance').html("开启测评");
                }
            }
        })
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


