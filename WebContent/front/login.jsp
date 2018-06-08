<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="CoreUI Bootstrap 4 Admin Template">
    <meta name="author" content="Lukasz Holeczek">
    <meta name="keyword" content="CoreUI Bootstrap 4 Admin Template">

    <title></title>

    <!-- Icons -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/simple-line-icons.css" rel="stylesheet">

    <!-- Main styles for this application -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
</head>

<body class="app flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card-group mb-0">
                    <div class="card p-2">
                    	<form action="${pageContext.request.contextPath}/AdminController?op=login" method="post">
	                        <div class="card-block">
	                            <h1>登录</h1>
	                            <p class="text-muted">How do you do?</p>
	                            <div class="input-group mb-1">
	                                <span class="input-group-addon"><i class="icon-user"></i>
	                                </span>
	                                <input type="text" class="form-control" name="name" placeholder="账号">
	                            </div>
	                            <div class="input-group mb-2">
	                                <span class="input-group-addon"><i class="icon-lock"></i>
	                                </span>
	                                <input type="password" class="form-control" name="pwd" placeholder="密码">
	                            </div>
	                            <div class="row">
	                                <div class="col-6">
	                                    <button type="submit" class="btn btn-primary px-2">登录</button>
	                                </div>
	                                <div class="col-6 text-right">
	                                    <button type="button" class="btn btn-link px-0" onclick="window.location.href='register.jsp'">》》重新注册吧！</button>
	                                </div>
	                            </div>
	                        </div>
	                     </form>
                    </div>
                    <div class="card card-inverse card-primary py-3 hidden-md-down" style="width:44%">
                        <div class="card-block text-center">
                            <div>
                                <h2>尚未注册？</h2>
                                <h5><br/><br/>长的帅的都注册了<br/>长的丑的还在犹豫<br/><br/></h5>
                                <input type="button" class="btn btn-primary active mt-1" onclick="window.location.href='register.jsp'" value="注册">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap and necessary plugins -->
	<script src="${pageContext.request.contextPath}/assets/js/libs/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/libs/tether.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/libs/bootstrap.min.js"></script>
</body>
</html>