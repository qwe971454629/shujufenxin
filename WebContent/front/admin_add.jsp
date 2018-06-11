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

<body class="app flex-row align-items-center">   
	<!-- 开始改 -->
    <div class="container">  
	    <form id="formAdminAdd" enctype="multipart/form-data">
			<div class="card">
	      	 <div class="card-block">
	      	 	<div style="visibility:hidden;">s</div>
	      	 	 <!-- 预览 --> 
	      	 	 <%-- <div class="form-group row">
	                  <label class="col-md-3 form-control-label">预览</label>
	                  <div class="col-md-9">
	      	 				<img id="previewImg" src="${pageContext.request.contextPath}/imag/preview.jpg" width="80" height="80" />
	      	 		  </div>
	             </div>
	             <!-- 头像 -->     
	             <div class="form-group row">
	                  <label class="col-md-3 form-control-label">头像</label>
	                  <div class="col-md-9">
	                      <input type="file" id="image" name="image" onchange="showPreview(this)">
	                  </div>
	              </div> --%>
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
	              <!-- 若登录者为超级管理员 -->
                  <c:if test="${admin.status==1}">
		              <div class="form-group row">
		                  <label class="col-md-3 form-control-label" for="status">权限</label>
		                  <div class="col-md-8">
		                      <select name="status" id="status">
		                          <option value="0">普通管理员</option>
		                          <option value="1">超级管理员</option>
		                      </select>
		                  </div>
		              </div>
		           </c:if>			                         	          
		      </div>
		      <div class="card-footer" style="text-align:center;">
		          <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-dot-circle-o"></i> 确定</button>
		          <button type="reset" class="btn btn-sm btn-danger"><i class="fa fa-ban"></i> 重置</button>
		      </div>
	      </div>
	      </form>
	  </div>
	<!-- 改完了-->

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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-form.js"></script>
	 
	<script type="text/javascript">
	$(function(){
		$("#formAdminAdd").validate({
			rules:{
				name:{
					required:true,
					minlength:2,
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
				ajaxSubmit();
			}
		}); 		
		function ajaxSubmit() {
            $.ajax({
                async : false,
                cache : false,
                type : 'POST',
                data : $("#formAdminAdd").serialize(),
                url : "${pageContext.request.contextPath}/AdminController?op=addAdmin",//请求的action路径             
                success : function(data) { //请求成功后处理函数
                    layer.msg('添加成功!',{icon: 1,time:2000},function(){	
		        		parent.location.reload();//刷新父窗口    
		        	    parent.layer.closeAll();//关闭所有layer窗口
		        		location.href = "${pageContext.request.contextPath}/AdminController?op=queryAdmin";
					});
                },
                error : function() {//请求失败处理函数  
                	layer.msg('添加失败', {icon: 2});
                }
            });
        }

		//使用js实现文件上传图片的预览	
		$("#image").change(function(){
			var file=this.files[0];
			var reader=new FileReader();
			reader.readAsDataURL(file);
			reader.onload=function(e){
				$("#previewImg").attr("src",e.target.result);
			}				
		});	
		function showPreview(obj){
			var str = obj.value;
			document.getElementById("previewImg").innerHTML = 
				"<img src = '" + str + "' />";
		}		
	});
	</script>
</body>
</html>