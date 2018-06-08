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
                    <span class="hidden-md-down">${admin.name}</span>
                    <img src="${pageContext.request.contextPath}/img/avatars/6.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
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
                <li class="breadcrumb-item">个人信息编辑</li>
            </ol>

			<!-- 开始改 -->
			<div class="container">  
			    <form id="formAdmin" action="${pageContext.request.contextPath}/AdminController?op=infoEdit&id=${admin.id}" method="post">
					<div class="card">
			      	 <div class="card-block">
			             <%-- <!-- 头像 -->     
			             <div class="form-group row">
			                  <label class="col-md-3 form-control-label">头像</label>
			                  <div class="col-md-9">
			                      <input type="file" id="image" name="image" value="${admin.image}">
			                  </div>
			              </div> --%>
			              <!-- 账号 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label">账号</label>
			                  <div class="formControls col-md-8">
			                      <input type="text" name="name" id="name" class="input-text valid" value="${admin.name}" placeholder="账号">
			                  </div>
			              </div>
			              <!-- 性别 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label">性别</label>
			                  <div class="col-md-8">
			                  	<c:if test="${admin.sex=='男'}">
									<label>
			                          <input type="radio" id="inline-radio1" name="sex" value="男" checked>男
			                     	</label>
			                      	<label>
			                          <input type="radio" id="inline-radio2" name="sex" value="女">女
			                      	</label>
								</c:if>
								<c:if test="${admin.sex=='女'}">
									<label>
			                          <input type="radio" id="inline-radio1" name="sex" value="男">男
			                     	</label>
			                      	<label>
			                          <input type="radio" id="inline-radio2" name="sex" value="女" checked>女
			                      	</label>
								</c:if>	                     
			                  </div>
			              </div>
			              <!-- 邮箱 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label">邮箱</label>
			                  <div class="col-md-8">
			                      <input type="text" name="email" id="email" value="${admin.email}" class="input-text valid" placeholder="邮箱">
			                  </div>
			              </div>
			              <!-- 手机 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label">手机</label>
			                  <div class="col-md-8">
			                      <input type="text" name="mobile" id="mobile" value="${admin.mobile}" class="input-text valid" placeholder="手机号码">
			                  </div>
			              </div>	              	          
				      </div>
				      <div class="card-footer" style="text-align:center;">
				          <button type="submit" class="editAdmin btn btn-sm btn-primary" value="${admin.id}"><i class="fa fa-dot-circle-o"></i> 保存</button>
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
    
	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
	<script type="text/javascript">
	$(function(){		
		$("#formAdmin").validate({
			rules:{
				name:{
					required:true,
					minlength:3,
					maxlength:16
				},
				sex:{
					required:true,
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
				$(form).ajaxSubmit();
				var index = parent.layer.getFrameIndex(window.name);
				parent.$('.btn-refresh').click();
				parent.layer.close(index);
			}
		}); 
	});
	</script>
</body>
</html>