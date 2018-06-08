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
                    <li class="nav-title">管理员管理
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
                <li class="breadcrumb-item">管理员管理</li>
                <li class="breadcrumb-item">新增管理员</li>
            </ol>

			<!-- 开始改 -->
		    <div class="container">  
			    <form id="formAdminAdd" action="${pageContext.request.contextPath}/AdminController?op=addAdmin" method="post">
					<div class="card">
			      	 <div class="card-block">	
			             <!-- 头像 -->     
			             <!-- <div class="form-group row">
			                  <label class="col-md-3 form-control-label">头像</label>
			                  <div class="col-md-9">
			                      <input type="file" id="image" name="image">
			                  </div>
			              </div> -->
			              <!-- 账号 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label">账号</label>
			                  <div class="formControls col-md-8">
			                      <input type="text" name="name" id="name" class="input-text valid" placeholder="账号">
			                  </div>
			              </div>
			              <!-- 初始密码 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label">初始密码</label>
			                  <div class="col-md-8">
			                      <input type="password" name="pwd" id="pwd" class="input-text valid" placeholder="初始密码">
			                  </div>
			              </div>
			              <!-- 确认密码 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label" for="password-input">确认密码</label>
			                  <div class="col-md-8">
			                      <input type="password" id="pwd2" name="pwd2" class="input-text valid" placeholder="确认密码">
			                  </div>
			              </div>
			              <!-- 性别 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label">性别</label>
			                  <div class="col-md-8">
			                      <label>
			                          <input type="radio" id="inline-radio1" name="sex" value="男" checked>男
			                      </label>
			                      <label>
			                          <input type="radio" id="inline-radio2" name="sex" value="女">女
			                      </label>
			                  </div>
			              </div>
			              <!-- 邮箱 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label">邮箱</label>
			                  <div class="col-md-8">
			                      <input type="text" name="email" id="email" class="input-text valid" placeholder="邮箱">
			                  </div>
			              </div>
			              <!-- 手机 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label">手机号</label>
			                  <div class="col-md-8">
			                      <input type="text" name="mobile" id="mobile" class="input-text valid" placeholder="手机号码">
			                  </div>
			              </div>
			              <!-- 权限 -->
			              <div class="form-group row">
			                  <label class="col-md-3 form-control-label" for="status">权限</label>
			                  <div class="col-md-8">
			                      <select name="status" id="status">
			                          <option value="0">普通管理员</option>
			                          <option value="1">超级管理员</option>
			                      </select>
			                  </div>
			              </div>	              	          
				      </div>
				      <div class="card-footer" style="text-align:center;">
				          <button type="submit" class="addAdmin btn btn-sm btn-primary" onclick="addAdmin()"><i class="fa fa-dot-circle-o"></i> 确定</button>
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
		$("#formAdminAdd").validate({
			rules:{
				name:{
					required:true,
					minlength:3,
					maxlength:16
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
				status:{
					required:true,
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
	
    	/* $(".addAdmin").click(function(){
    		layer.msg('调用成功', {icon: 2});
	    		$.post("${pageContext.request.contextPath}/AdminController?op=addAdmin",function(data,status){ 
	    			layer.msg('跳转成功', {icon: 2});
    				//尝试获取status data
    				console.log("status:"+status+",data :"+data);    				
    				if(data=="ok"){ 
    					layer.msg('添加成功!',{icon: 6,time:1000},function(){
    						 var index=parent.layer.getFrameIndex(window.name);
	    					  parent.layer.close(index);
							  //重新刷新页面
	    					  window.parent.location.reload(); 
	    					 
						});
    				}else{
				    	layer.msg('添加失败', {icon: 1});
					}
				}); 
    	}); */
    	
	});
	</script>
</body>
</html>