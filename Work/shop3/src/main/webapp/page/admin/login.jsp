<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>admin登录</title>
    <jsp:include page="/page/includes/head.jsp"/>
    <style>
        #body{
            border: #0f0f0f solid 1px;
            width:500px;
            padding:50px;
            margin:100px auto;
            border-radius: 10px;
        }
    </style>
</head>
<body>
<div class="container" id="body">
    <div class="row">
        <h1 class="text-center">欢迎管理员登录</h1>
    </div>
    <div class="row">
        <c:if test="${message!=null}">
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert"
                        aria-hidden="true">
                    &times;
                </button>
                    ${message}
            </div>
        </c:if>
    </div>
    <form class="form-horizontal" role="form" action="/admin/login" method="post">
        <div class="form-group">
            <label for="name" class="col-sm-3 control-label">账号</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="name" name="name" placeholder="请输入用户名">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-3 control-label">密码</label>
            <div class="col-sm-8">
                <input type="password" class="form-control" id="password" name="pwd" placeholder="请输入密码">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-2">
                <a type="button" href="/" class="btn btn-default">返回首页</a>
            </div>
            <div class="col-sm-offset-4 col-sm-2">
                <button type="submit" class="btn btn-info">登录</button>
            </div>
            <div class=" col-sm-2">
                <a type="button" href="" class="btn btn-default">注册</a>
            </div>
        </div>
    </form>
</div>
</body>
</html>