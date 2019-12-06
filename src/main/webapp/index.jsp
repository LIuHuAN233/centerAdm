
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/9/9
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>login</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
    <style type="text/css">

        body{
            font-family: "Microsoft YaHei", Helvetica, Arial, Lucida Grande, Tahoma, sans-serif;
            background-image: url(/img/loginBG3.jpg);
            width:100%;
            height:100%;
        }
        #loginFormCenter{
            width: 400px;
            height: 300px;
            position: relative;
            top:80px;
            margin: 0 auto;
            border-radius: 3px;
            background-color:#E0EEEE;
            border: 1px solid #F8F8FF;
            font-size: 15px;

        }

        #webName{
            font-family: Microsoft YaHei;
            font-size: 45px;
            letter-spacing: 10px;
        }
        #loginHead{
            background-image: url("/img/white.jpg");
        }
    </style>
</head>
<body>

<div class="row" id="loginHead">
    <div class="col-md-offset-1 col-md-1"><img src="/img/logo.jpg"></div>
    <div class="col-md-offset-1 col-md-6" style="margin-top: 60px"><span id="webName">公共安全中心综合管理平台</span></div>
</div>



<div id="loginFormCenter">
    <div id="loginUserLoad" style="margin-top: 30px;margin-left: 62px;font-size: 30px;">
        <span>用户登录</span>
    </div>

    <form class="form-horizontal" method="post" id="loginForm">
        <div class="form-group" style="margin-top: 20px;margin-left: 20px">
            <label for="username" class="col-sm-3 control-label">用户名</label>
            <div class="col-sm-7">
                <input type="text" name="username" id="username"  placeholder="username" autocomplete="off" class="form-control ">
            </div>
        </div>
        <br>
        <div class="form-group" style="margin-left: 20px">
            <label for="password" class="col-sm-3 control-label">密&nbsp;&nbsp;&nbsp;码</label>
            <div class="col-sm-7">
                <input type="password" name="password" id="password"  placeholder="password" autocomplete="off" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-3 col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" id="remember_password" name="remember_password" value="2"> 记住密码
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-4 col-sm-10">
                <button type="button" class="btn btn-primary" id="submit_login">    登    陆    </button>
            </div>
        </div>
    </form>
</div>
<script src="/js/jquery.min.js"></script>
<script src="/js/jquery.cookie.js"></script>
<script src="/js/jquery.session.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    $(function () {
        $("#username").val();
        $("#password").val();
        $("#remember_password").removeAttr("checked");
        if ($.cookie("userName")!="" ||$.cookie("userName")!=null){
            if ($.cookie("rememberP")=="1"){
                $("#username").val($.cookie("userName"));
                $("#password").val($.cookie("password"));
                $("#remember_password").attr("checked","checked");
            }

        }
    });
    <%--登录验证--%>
    $("#submit_login").click(function () {
        var user = $("#username").val();
        var password = $("#password").val();
        var remember="0"
        if ($("#remember_password").is(":checked")){
            remember=1;
        }

        if(user=="") {
            alert("用户名不可为空!");
        } else if(password==""){
            alert("密码不可为空!");
        } else {
            $.ajax({
                /* async: false,*///同步，待请求完毕后再执行后面的代码
                type: "POST",
                url: '/loginHome',
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                data:{"username":user,"password":password,"remember":remember},
                dataType: "json",
                success: function (data) {
                    if(data.code==0) {
                        alert(data.msg);
                    }else {

                        window.location.href="./home";
                    }
                },
                error: function () {
                    alert("数据获取失败")
                }
            })
        }
    });

</script>

</body>
</html>


