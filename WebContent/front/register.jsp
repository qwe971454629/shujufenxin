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
    <!-- <link rel="shortcut icon" href="assets/ico/favicon.png"> -->

    <title></title>

    <!-- Icons -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/simple-line-icons.css" rel="stylesheet">

    <!-- Main styles for this application -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <style type="text/css">
    	.Validform_error, input.error, select.error, textarea.error {
		    background-color: #fbe2e2;
		    border-color: #c66161;
		    color: #c00;
		}
		.input-text, .textarea {
		    box-sizing: border-box;
		    border: solid 1px #ddd;
		    width: 100%;
		    left: 18px;
		    -webkit-transition: all .2s linear 0s;
		    -moz-transition: all .2s linear 0s;
		    -o-transition: all .2s linear 0s;
		    transition: all .2s linear 0s;
		}
		
		.input-text, .btn, .input-text.size-M, .btn.size-M {
		    font-size: 14px;
		    height: 35px;
		    line-height: 1.42857;
		    padding: 4px;
		}
		
		label.error {
		    position: absolute;
		    right: 18px;
		    top: 8px;
		    color: #ef392b;
		    font-size: 12px;
		}
    </style>
</head>

<body class="app flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card mx-2">
                	<form id="form-verify-add">
                    <div class="card-block p-2">
                        <h1>注册</h1>
                        <p class="text-muted">Create your account</p>                  	
                        <div class="input-group mb-1">
                            <span class="input-group-addon"><i class="icon-user"></i></span>
                            <input type="text" name="name" id="name" class="input-text valid" placeholder="账号">
                        </div>
				
						<div class="input-group mb-1">
                            <span class="input-group-addon"><i class="icon-lock"></i></span>
                            <input type="password" name="password" id="password" class="input-text valid" placeholder="密码">
                        </div>
                        
                        <div class="input-group mb-1">
                            <span class="input-group-addon"><i class="icon-lock"></i>
                            </span>
                            <input type="password" name="password2" id="password2" class="input-text valid" placeholder="确认密码">
                        </div>
                        
                        <div class="input-group mb-1">
                            <span class="input-group-addon">@</span>
                            <input type="text" name="email" id="email" class="input-text valid" placeholder="邮箱">
                        </div>

                        <div class="input-group mb-1">
                            <span class="input-group-addon"><i class="icon-phone"></i></span>
                            <input type="text" name="mobile" id="mobile" class="input-text valid" placeholder="手机号">
                        </div>

                        <button type="submit" class="btn btn-block btn-success">注册</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap and necessary plugins -->
	<script src="${pageContext.request.contextPath}/assets/js/libs/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/libs/tether.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/libs/bootstrap.min.js"></script>
	
	<!-- layer的使用  开始-->
	<script src="${pageContext.request.contextPath}/front/layer.js"></script>
	
	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
	<script type="text/javascript">
	$(function(){		
		$("#form-verify-add").validate({
			rules:{
				name:{
					required:true,
					minlength:2,
					maxlength:16
				},
				password:{
					required:true,
					minlength:3,
					maxlength:16
				},
				password2:{
					required:true,
					equalTo: "#password"
				},
				mobile:{
					required:true,
					isPhone:true,
				},
				email:{
					required:true,
					email:true,
				},
			},
			onkeyup:false,
			focusCleanup:true,
			success:"valid",
			submitHandler:function(form){
				ajaxSubmit();
			}
		});
		function ajaxSubmit() {
            $.ajax({
                async : false,
                cache : false,
                type : 'POST',
                data : $("#form-verify-add").serialize(),
                url : "${pageContext.request.contextPath}/AdminController?op=register",//请求的action路径             
                success : function(data) { //请求成功后处理函数
                    layer.msg('注册成功!请进行登录',{icon: 1,time:2000},function(){	
		        		location.href = "${pageContext.request.contextPath}/front/login.jsp";
					});
                },
                error : function() {//请求失败处理函数  
                	layer.msg('注册失败', {icon: 2});
                }
            });
        }
	});
	</script>
</body>

</html>