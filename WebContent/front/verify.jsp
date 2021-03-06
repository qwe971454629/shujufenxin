<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	                <!--wait 
	                <li class="nav-item">
	                        <a class="nav-link" href="index.html"><i class="icon-speedometer"></i> Dashboard <span class="badge badge-info">☆</span></a>
	                </li> -->                   
                    <li class="nav-title"> 爬虫数据</li>                   
                    
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-star"></i>总销售额</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="zongxiaoliang.jsp"><i class="icon-star"></i>内存条</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="zongxiaoliang2.jsp"><i class="icon-star"></i> 显卡</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-calculator"></i>数据管理</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item nav-dropdown">
                                <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-calculator"></i>影驰内存条</a>
                            
	                            <ul class="nav-dropdown-items">
	                                <a class="nav-link" href="yingchimonth.jsp"><i class="icon-calculator"></i>年销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="yingchiquarter.jsp"><i class="icon-calculator"></i>季销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="yingchiyear.jsp"><i class="icon-calculator"></i>月销量</a>
	                            </ul> 
                            </li>
                                                        <li class="nav-item nav-dropdown">
                                <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-calculator"></i>影驰显卡</a>
                            
	                            <ul class="nav-dropdown-items">
	                                <a class="nav-link" href="yingchimonth2.jsp"><i class="icon-calculator"></i>年销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="yingchiquarter2.jsp"><i class="icon-calculator"></i>季销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="yingchiyear2.jsp"><i class="icon-calculator"></i>月销量</a>
	                            </ul> 
                            </li>
                            <li class="nav-item nav-dropdown">
                                <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-calculator"></i>索泰</a>
                            <ul class="nav-dropdown-items">
	                                <a class="nav-link" href="suotaimonth.jsp"><i class="icon-calculator"></i>年销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="suotaiquarter.jsp"><i class="icon-calculator"></i>季销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="suotaiyear.jsp"><i class="icon-calculator"></i>月销量</a>
	                            </ul> 
                            </li>
                            
                            <li class="nav-item nav-dropdown">
                                <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-calculator"></i>七彩虹</a>
                            <ul class="nav-dropdown-items">
	                                <a class="nav-link" href="qchmonth.jsp"><i class="icon-calculator"></i>年销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="qchquarter.jsp"><i class="icon-calculator"></i>季销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="qchquarter.jsp"><i class="icon-calculator"></i>月销量</a>
	                            </ul> 
                            </li>
                            
                            <li class="nav-item nav-dropdown">
                                <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-calculator"></i>微星</a>
                            <ul class="nav-dropdown-items">
	                                <a class="nav-link" href="wxm.jsp"><i class="icon-calculator"></i>年销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="wxq.jsp"><i class="icon-calculator"></i>季销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="wxy.jsp"><i class="icon-calculator"></i>月销量</a>
	                            </ul> 
                            </li>
                            
                            <li class="nav-item nav-dropdown">
                                <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-calculator"></i>光威</a>
                           <ul class="nav-dropdown-items">
	                                <a class="nav-link" href="gwm.jsp"><i class="icon-calculator"></i>年销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="gwq.jsp"><i class="icon-calculator"></i>季销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="gwy.jsp"><i class="icon-calculator"></i>月销量</a>
	                            </ul> 
                            </li>
                           
                            <li class="nav-item nav-dropdown">
                                <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-calculator"></i>金士顿</a>
                            <ul class="nav-dropdown-items">
	                                <a class="nav-link" href="jsdm.jsp"><i class="icon-calculator"></i>年销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="jsdq.jsp"><i class="icon-calculator"></i>季销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="jsdy.jsp"><i class="icon-calculator"></i>月销量</a>
	                            </ul> 
                            </li>
                            
                            <li class="nav-item nav-dropdown">
                                <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-calculator"></i>海盗船</a>
                           <ul class="nav-dropdown-items">
	                                <a class="nav-link" href="hdcm.jsp"><i class="icon-calculator"></i>年销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="hdcq.jsp"><i class="icon-calculator"></i>季销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="hdcy.jsp"><i class="icon-calculator"></i>月销量</a>
	                            </ul> 
                            </li>
                            
                             
                            <li class="nav-item nav-dropdown">
                                <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-calculator"></i>技嘉</a>
                           <ul class="nav-dropdown-items">
	                                <a class="nav-link" href="jjm.jsp"><i class="icon-calculator"></i>年销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="jjq.jsp"><i class="icon-calculator"></i>季销量</a>
	                            </ul>
	                            <ul class="nav-item">
	                                <a class="nav-link" href="jjy.jsp"><i class="icon-calculator"></i>月销量</a>
	                            </ul> 
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
                        <a class="nav-link nav-dropdown-toggle" href="eyes.jsp"><i class="icon-star"></i>。。。。。 </a>                      
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
			
               
			<!-- 开始改 -->
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
            <!-- 改完了哈哈哈哈 -->
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
    
    
	<!-- <script type="text/javascript">
		/*管理员-增加*/
		function admin_add(){
			layer.open({
		      type: 2,
		      title: '添加管理员',
		      shadeClose: true,
		      shade: false,
		      /*  maxmin: true, //开启最大化最小化按钮 */
		      area: ['800px', '80%'],
		      content: '${pageContext.request.contextPath}/front/admin_add.jsp',
	    	  end: function () {
	    	        location.reload();
	    	  }
			});
		};
	</script> -->
</body>
</html>