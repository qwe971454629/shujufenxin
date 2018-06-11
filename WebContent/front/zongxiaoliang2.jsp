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
                <li class="breadcrumb-item">总销售额</li>
                <li class="breadcrumb-item"><a href="zongxiaoliang.jsp">显卡</a></li>
            </ol>
               
			<!-- 开始改 -->
            <div class="container-fluid">
                <div class="animated fadeIn">                                      
                    <div class="row">
                        <div class="col-lg-12">
                        	
                             <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="height:400px "></div>
    
     <!-- ECharts单文件引入 -->
    <script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
    
    <!-- 模块加载器配置echarts和所需图表的路径 -->
    <script type="text/javascript">
        // 路径配置
           
        require.config({
            paths: {
                echarts: 'http://echarts.baidu.com/build/dist'
            }
        });
        require(
            [
                'echarts',
                'echarts/chart/line',   // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
                'echarts/chart/bar'
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('main')); 
                
                var names =[];//列名               
                var datas =[];//显示的数据值
                
                //定义一个数组
                ////从controller中得到数据 ajax
                
                //$.get $.post $.ajax...
                
                $.get("${pageContext.request.contextPath}/ptj2",function(data,status){
    		
    		data =JSON.parse(data);
    		$.each(data,function(index,p){
    			names.push(p.name);
    			datas.push(p.shuliang);
    			
    		});
    		
    		var option = {
    		        title : {
    		            text: '内存条各品牌销售量',
    		            subtext: '京东网提供'
    		        },
    		        tooltip : {
    		            trigger: 'axis'
    		        },
    		        legend: {
    		            data:['销售量']
    		        },
    		        toolbox: {
    		            show : true,
    		            feature : {
    		                mark : {show: true},
    		                dataView : {show: true, readOnly: false},
    		                magicType : {show: true, type: ['line', 'bar']},
    		                restore : {show: true},
    		                saveAsImage : {show: true}
    		            }
    		        },
    		        calculable : true,
    		        xAxis : [
    		            {
    		                type : 'category',
    		                boundaryGap : false,
    		                data : names//['周一','周二','周三','周四','周五','周六','周日']
    		            }
    		        ],
    		        yAxis : [
    		            {
    		                type : 'value',
    		                axisLabel : {
    		                    formatter: '{value}'
    		                }
    		            }
    		        ],
    		        series : [
    		            {
    		                name:'销售量',
    		                type:'line',
    		                data:datas//[11, 11, 15, 13, 12, 13, 10],

    		            },
    		            
    		        ]
    		        
    		    };
                 
                         // 为echarts对象加载数据 
                         myChart.setOption(option); 
                	
                	
                	
                });
   
            }
            
        );
        
    </script>
                            
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