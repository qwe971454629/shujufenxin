<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png">

    <title></title>

    <!-- Icons -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/simple-line-icons.css" rel="stylesheet">

    <!-- Main styles for this application -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
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
                <li class="breadcrumb-item">管理员管理</li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/AdminController?op=queryVerify">待审核名单</a></li>
            </ol>
			
            <div class="container-fluid">
                <div class="animated fadeIn">                                      
                    <div class="row">
                        <div class="col-lg-12">
                        	
                            <div class="card">
                                <div class="card-header">
                                    <i class="fa fa-align-justify"></i> 待审核名单
                                </div>
                                
                                <div class="card-block">
                                	<!-- <span>显示 <select name="pageSize" id="pageSize" class="pageSize">
                                          <option value="5">5</option>
                                          <option value="10">10</option>
                                          <option value="15">15</option>
                                      </select> 条记录</span> -->
                                	<span class="col-lg-4 input-group" style="float:right;margin:0em 0em 1em 0em;padding:0">
		                        		<input type="search" id="vNameLike" name="input2-group2" class="form-control" placeholder="search">
		                                <span class="input-group-btn">
		                                    <button type="button" id="btnSearch" class="btn btn-primary">搜索</button>
		                                </span>
                        			</span>
                        			<br/>
                                    <table class="table table-bordered table-striped table-condensed">
                                        <thead>
                                            <tr>
                                                <th>账号</th>
                                                <th>邮箱</th>
                                                <th>手机号</th>
                                                <th>注册日期</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<!-- 循环开始 -->
                                        	<c:if test="${pd.data!=null}">
												<c:forEach items="${pd.data}" var="verify">
		                                            <tr>
		                                                <td>${verify.name}</td>
		                                                <td>${verify.email}</td>
		                                                <td>${verify.mobile}</td>
		                                                <td>
		                                                	<fmt:parseDate value="${verify.addtime}" pattern="yyyy-MM-dd HH:mm:ss" var="myDate" /> 
		                                                	<fmt:formatDate value="${myDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
		                                                <td>
		                                                    <button class="btn btn-outline-success btnVerify" style="border:0;font-size:15px" value="${verify.id}"><i class="fa fa-magic"></i>&nbsp;审核</button>
		                                                    <button class="btn btn-outline-danger delVerify" style="border:0;font-size:15px" value="${verify.id}"><i class="fa fa-rss"></i>&nbsp;删除</button>
		                                                </td>
		                                            </tr>
		                                        </c:forEach>
											</c:if>
                                            <!-- 循环结束 -->
                                        </tbody>
                                    </table>
                                    <nav>
                                        <ul class="pagination">
                                            <li class="page-item"><a class="page-link" href="javascript:void(0)" id="prePage">上一页</a></li>
                                            <%--注意这里   begin="1" 从1开始  end="${pd.totalPage}" 到几结束    var="index" 变量的值 --%>
                                            <c:forEach begin="1" end="${pd.totalPage}" var="index">
												<%--激活当前页码显示效果 --%>
												<c:if test="${index == pd.page}">
		                                            <li class="page-item active">
		                                                <a class="page-link pageNo" href="javascript:void(0)">${index}</a>
		                                            </li>
	                                            </c:if>
												<c:if test="${index != pd.page}">
		                                            <li class="page-item"><a class="page-link pageNo" href="javascript:void(0)">${index}</a>
		                                            </li>
		                                        </c:if>
											</c:forEach>
                                            <li class="page-item"><a class="page-link" href="javascript:void(0)" id="nextPage">下一页</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <!--/.col-->
                    </div>
                    <!--/.row-->
                </div>

            </div>
            <!-- /.conainer-fluid -->
        </main>
               
    </div>

    <footer class="app-footer">
    	Copyright &copy; 2018.Company name All rights reserved.
    </footer>

    <!-- Bootstrap and necessary plugins -->
	<script src="${pageContext.request.contextPath}/assets/js/libs/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/libs/tether.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/libs/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/libs/pace.min.js"></script>
	<!-- Plugins and scripts required by all views -->
	<script src="${pageContext.request.contextPath}/assets/js/libs/Chart.min.js"></script>

    <!-- GenesisUI main scripts -->
    <script src="${pageContext.request.contextPath}/js/app.js"></script>
    
    <!-- layer的使用  开始-->
	<script src="${pageContext.request.contextPath}/front/layer.js"></script>
    
    <script type="text/javascript">
	   $(function(){
		   /* $.get("${pageContext.request.contextPath}/AdminController?op=queryVerify",function(data,status){
			   console.log(data);
			   array=JSON.parse(data);
			   $.each(array,function(index,verify){
				   console.log(verify.id+","+verify.name)
			   });
		   }); */
		   //如果当前页 已经是最后一页了
		   if(${pd.page >= pd.totalPage}){
			   //下一页 样式设置
			   $("#nextPage").css("color","gray");
			   //pointer-events 不能点击了 ,没有测试所有的浏览器
			   $("#nextPage").css("pointer-events","none");
		   }		   
		   //如果当前页 已经是第一页了
		   if(${pd.page <= 1}){
			   //上一页 样式设置
			   $("#prePage").css("color","gray");
			   $("#prePage").css("pointer-events","none");
		   }		   		   
		   //分页页码点击
		   $(".pageNo").click(function(){
			   location.href = "${pageContext.request.contextPath}/AdminController?op=queryVerify&page=" + $(this).text()+"&vNameLike="+$("#vNameLike").val();
		   });		   
		   //下一页
		   $("#nextPage").click(function(){			   
			   location.href = "${pageContext.request.contextPath}/AdminController?op=queryVerify&page=" + ${pd.page+1}+"&vNameLike="+$("#vNameLike").val();
		   });		   
		   //上一页
		   $("#prePage").click(function(){
			   location.href = "${pageContext.request.contextPath}/AdminController?op=queryVerify&page=" + ${pd.page-1}+"&vNameLike="+$("#vNameLike").val();
		   });		   		  		   
		   //处理模糊检索
		   $("#btnSearch").click(function(){			   
			   //得到用户输入在文本框中的值
			   var vNameLike = $("#vNameLike").val();			   
			   location.href = "${pageContext.request.contextPath}/AdminController?op=queryVerify&vNameLike="+vNameLike;			   			   
		   });		   
	   });
	</script>
    <script type="text/javascript">
    $(function(){
    	$(".btnVerify").click(function(){
    		var btn = $(this);
	    	layer.confirm('确认要通过审核吗？',{
  			  btn: ['确定','取消'] //按钮
			}, function(){
	    		$.post("${pageContext.request.contextPath}/AdminController",{"op":"verify","id":$(btn).val()},function(data,status){   				
    				//尝试获取status data
    				console.log("status:"+status+",data :"+data);    				
    				if(data=="ok"){ 
    					layer.msg('审核通过!',{icon: 6,time:1000},function(){							  
							  //重新刷新页面
	    					  location.reload(); 
						});
    				}else{
				    	layer.msg('审核失败', {icon: 1});
					}
				}); 
	    	});
    	});
    	$(".delVerify").click(function(){
    		var btn = $(this);
	    	layer.confirm('确认要删除申请吗？',{
  			  btn: ['确定','取消'] //按钮
			}, function(){
	    		$.post("${pageContext.request.contextPath}/AdminController",{"op":"delVerify","id":$(btn).val()},function(data,status){   				
    				//尝试获取status data
    				console.log("status:"+status+",data :"+data);    				
    				if(data=="ok"){ 
    					layer.msg('删除成功!',{icon: 6,time:1000},function(){							  
							  //重新刷新页面
	    					  location.reload(); 
						});
    				}else{
				    	layer.msg('删除失败', {icon: 2});
					}
				}); 
	    	});
    	});
	});
	</script>
	
</body>
</html>