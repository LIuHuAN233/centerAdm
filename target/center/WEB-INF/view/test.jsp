<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/10/12
  Time: 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/js/jquery.min.js" type="text/javascript"></script>
</head>
<body>
<form class="form-horizontal" role="form">
        <div class="form-group" style="margin-bottom: 30px;margin-top: 15px;">
            <label class="col-sm-1 control-label" for="taskName1" style="padding-left: 10px;">任务名</label>
            <div class="col-sm-5">
                <input class="form-control" name="taskName" id="taskName1" type="text"/>
            </div>

        </div>
        <div class="form-group" style="margin-bottom: 15px;">
            <label class="col-sm-2 control-label" for="beginTime1" style="padding-left: 10px;">开始时间</label>
            <div class="col-sm-4">
                <input class="form-control" id="beginTime1" type="date"/>
                <input type="hidden" id="startTimeF"/>
            </div>
            <%--<div class="col-sm-1">
                <input class="form-control" id="beginTimeHour" type="date"/>
            </div>--%>
            <label class="col-sm-2 control-label" for="stopTime1" style="padding-left: 10px;">完成时间</label>
            <div class="col-sm-4">
                <input class="form-control" id="stopTime1" type="date"/>
                <input type="hidden" id="stopTimeF"/>
            </div>

        </div>
        <div class="form-group" style="margin-bottom: 15px;">
            <label class="col-sm-2 control-label" for="test-editormd1" style="padding-left: 10px;">项目内容</label>
            <div class="col-sm-10" id="test-editormd1" style="margin-top: 30px">
                <textarea rows="3"></textarea>
                <button type="button" class="btn btn-link" id="deletetask1"></button>
            </div>
        </div>

</form>

    <script>
        $(function () {
           alert("111");
           alert("${type}");

        });
        function getQueryString(name){
            var reg = new RegExp("(^|&)"+name+"=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if(r!=null){
                return decodeURIComponent(r[2]);
            }
            return '';

        }

    </script>
</body>
</html>
