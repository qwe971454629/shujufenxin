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
		
		label {
		    text-align:right;
		    font-size:15px;
		    margin-bottom: 0rem;
		}
    </style>
</head>

<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
	<header class="app-header navbar">
        <button class="navbar-toggler mobile-sidebar-toggler hidden-lg-up" type="button">☰</button>
        <a class="navbar-brand" href="#"></a>
        
        <!-- waitwait --> 
        <ul class="nav navbar-nav hidden-md-down">
            <li class="nav-item">
                <a class="nav-link navbar-toggler sidebar-toggler" href="#">☰</a>
            </li>
        </ul>      
        <ul class="nav navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">                   
                    <span style="color:black;"><b>${admin.name}</b>&nbsp;&nbsp;&nbsp;</span>
                    <%-- <img src="${pageContext.request.contextPath}/img/avatars/6.jpg" class="img-avatar" alt="admin@bootstrapmaster.com"> --%>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <div class="dropdown-header text-center">
                        <strong>设置</strong>
                    </div>

                    <a class="dropdown-item" href="${pageContext.request.contextPath}/front/info_edit.jsp"><i class="fa fa-user"></i> 个人信息</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/front/pwd_edit.jsp"><i class="fa fa-wrench"></i> 修改密码</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/AdminController?op=exit""><i class="fa fa-usd"></i> 退出</a>
                    <div class="divider"></div>
                    
                </div>
            </li>
        </ul>
    </header>

    <div class="app-body">
        <div class="sidebar">
            <nav class="sidebar-nav">
                <ul class="nav">
	                <!--wait 
	                <li class="nav-item">
	                        <a class="nav-link" href="index.html"><i class="icon-speedometer"></i> Dashboard <span class="badge badge-info">☆</span></a>
	                </li> -->                   
                    <li class="nav-title"> 爬虫数据</li>                   
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle"></i>数据存盘</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="icons-font-awesome.html"><i class="icon-puzzle"></i>商店信息</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="icons-simple-line-icons.html"><i class="icon-puzzle"></i> 销售额</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-star"></i>数据分析</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="icons-font-awesome.html"><i class="icon-star"></i>商店信息</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="icons-simple-line-icons.html"><i class="icon-star"></i> 销售额</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-calculator"></i>数据管理</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="icons-font-awesome.html"><i class="icon-calculator"></i>商店信息</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="icons-simple-line-icons.html"><i class="icon-calculator"></i> 销售额</a>
                            </li>
                        </ul>
                    </li>

                    <li class="divider"></li>
                    <li class="nav-title">
                    	<!--  -->
                    	管理员管理
                    </li>
                     <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle"></i> 管理员管理</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/AdminController?op=queryVerify"><i class="icon-puzzle"></i> 待审核名单</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/AdminController?op=queryAdmin"><i class="icon-puzzle"></i> 管理员列表</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-star"></i>。。。。。 </a>                      
                    </li>
                </ul>
            </nav>
        </div>

        <!-- Main content -->
        <main class="main">            
            <!-- Breadcrumb -->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">个人信息</li>
                <li class="breadcrumb-item">修改密码</li>
            </ol>

			<!-- 开始改 -->
		    <div class="container">  
			    <form id="formAdmin">
					<div class="card">
			      	 <div class="card-block">
			              <!-- 原密码 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label">原密码:</label>
			                  <div class="col-md-8">
			                      <input type="password" class="input-text valid" value="${admin.pwd}" placeholder="原密码" readonly="readonly">
			                  </div>
			              </div>
			              <!-- 新密码 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label">新密码:</label>
			                  <div class="col-md-8">
			                      <input type="password" name="pwd" id="pwd" class="input-text valid" placeholder="新密码">
			                  </div>
			              </div>
			              <!-- 确认密码 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label" for="password-input">确认密码:</label>
			                  <div class="col-md-8">
			                      <input type="password" id="pwd2" name="pwd2" class="input-text valid" placeholder="确认密码">
			                  </div>
			              </div>                    	          
				      </div>
				      <div class="card-footer" style="text-align:center;">
				          <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> 确定</button>
				          <button type="reset" class="btn btn-sm btn-danger"><i class="fa fa-ban"></i> 重置</button>
				      </div>
			      </div>
			      </form>
			  </div>
			  <!-- 改完了-->
		</main>
    </div>

    <footer class="app-footer">
    	Copyright &copy; 2018.Company name All rights reserved.
    </footer>

	<!-- Bootstrap and necessary plugins -->
	<script src="${pageContext.request.contextPath}/assets/js/libs/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/libs/tether.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/libs/bootstrap.min.js"></script>
	
	<!-- Plugins and scripts required by all views -->
	<script src="${pageContext.request.contextPath}/assets/js/libs/Chart.min.js"></script>
    <!-- GenesisUI main scripts -->
    <script src="${pageContext.request.contextPath}/js/app.js"></script>
    
    <!-- layer的使用  开始-->
	<script src="${pageContext.request.contextPath}/front/layer.js"></script>
	
	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
	<script type="text/javascript">
	$(function(){		
		$("#formAdmin").validate({
			rules:{
				password:{
					required:true,
					equalTo: "${admin.pwd}"
				},
				pwd:{
					required:true,
					minlength:3,
					maxlength:16
				},
				pwd2:{
					required:true,
					equalTo: "#pwd"
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
                data : $("#formAdmin").serialize(),
                url :'${pageContext.request.contextPath}/AdminController?op=pwdEdit&id='+${admin.id},//请求的action路径             
                success : function(data) { //请求成功后处理函数
                    layer.msg('保存成功!请重新登录',{icon: 1,time:2000},function(){
		        		location.href = "${pageContext.request.contextPath}/AdminController?op=exit";
					});
                },
                error : function(e) {//请求失败处理函数  
                	layer.msg('保存失败', {icon: 2});
                }
            });
        }		
	});
	</script>
</body>
</html>