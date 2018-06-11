package com.etc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.entity.Admin;
import com.etc.entity.Verify;
import com.etc.service.AdminService;
import com.etc.service.impl.AdminServiceImpl;
import com.etc.util.PageData;
import com.google.gson.Gson;


/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// 创建Service对象
	AdminService as = new AdminServiceImpl(); 
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 设置请求的编码 ,位置应该在request.getParameter之前
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String op = "login";
		int page = 1;
		int pageSize = 5;
		String vNameLike = "";
		if(null!=request.getParameter("op")){
			//获取op的值
			op = request.getParameter("op");
		}
		
		/*注册*/
		if ("register".equals(op)) {
			// 注册账号
			String name = request.getParameter("name");
			// 注册密码
			String password = request.getParameter("password");
			// 邮箱
			String email = request.getParameter("email");
			// 手机号
			String mobile = request.getParameter("mobile");
			// 创建对象
			Verify verify = new Verify(name, password,email,mobile);
			// 调用方法
			as.register(verify);
			// 跳转
			//response.sendRedirect("front/login.jsp");
		}
		
		/*登录*/
		if ("login".equals(op)) {
			// 得到用户输入的用户名和密码
			String name = request.getParameter("name");
			String pwd = request.getParameter("pwd");
			// 调用adminService的方法
			Admin admin = as.login(name, pwd);
			if (null != admin) {
				// 用户名和密码正确
				HttpSession session = request.getSession();
				// 将管理员信息存储在session对象中
				session.setAttribute("admin", admin);
				// 跳转到前台 front/index.jsp页面
				request.getRequestDispatcher("AdminController?op=queryAdmin").forward(request, response);
			}else {
				request.getRequestDispatcher("front/login.jsp").forward(request, response);
			}
		}
		
		/*退出系统*/
		if("exit".equals(op)){
			//将普通用户的session中的信息删除
			request.getSession().removeAttribute("admin");			
			response.sendRedirect("front/login.jsp");	
		}
		
		/*待审核列表*/
		if("queryVerify".equals(op)){
			//判断查询注册申请是否是管理员操作？
			//加入session的判断
			HttpSession session=request.getSession();
			Object obj=session.getAttribute("admin");
			if(null!=obj) {
			//获取page pageSize enameLike
			if(null!=request.getParameter("page")){
				page =Integer.parseInt(request.getParameter("page"));
			}
			if(null!=request.getParameter("pageSize")){
				pageSize =Integer.parseInt(request.getParameter("pageSize"));
			}
			if(null!=request.getParameter("vNameLike")){
				vNameLike = request.getParameter("vNameLike");
				//此时需要对中文进行转换
				vNameLike = new String(vNameLike.getBytes("ISO-8859-1"),"utf-8");
			}
			PageData<Verify> pd=as.queryVerify(page, pageSize, vNameLike);			
			//将pd对象存储到请求范围内
			request.setAttribute("pd", pd);			
			//转发到verify.jsp页面
			request.getRequestDispatcher("front/verify.jsp").forward(request, response);	
			}else {
				response.sendRedirect("front/login.jsp");
			}
		}
			
		/*审核注册的用户*/
		if("verify".equals(op)){		
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				boolean flag=as.verify(id);
				response.getWriter().print(flag==true?"ok":"");
			}				
		}
		
		/*删除注册申请信息*/
		if("delVerify".equals(op)){
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				boolean flag=as.delVerify(id);
				response.getWriter().print(flag==true?"ok":"");
			}			
		}
		
		/*管理员列表*/
		if("queryAdmin".equals(op)){
			//判断查询管理员是否是管理员操作？
			//加入session的判断
			HttpSession session=request.getSession();
			Admin admin=(Admin) session.getAttribute("admin");
			if(null!=admin) {
				//查询所有员工信息
				//获取page pageSize vNameLike
				if(null!=request.getParameter("page")){
					// 获取page的值
					page =Integer.parseInt(request.getParameter("page"));
				}
				if(null!=request.getParameter("pageSize")){
					// 获取pageSize的值
					pageSize =Integer.parseInt(request.getParameter("pageSize"));
				}
				if(null!=request.getParameter("vNameLike")){
					// 获取vNameLike的值
					vNameLike = request.getParameter("vNameLike");
					vNameLike = new String(vNameLike.getBytes("ISO-8859-1"),"utf-8");
				}
				PageData<Admin> pd=as.queryAdmin(page, pageSize, vNameLike);			
				// 将pd对象存储到请求范围内
				request.setAttribute("pd", pd);
				// 跳转到admin_list.jsp页面
				request.getRequestDispatcher("front/admin_list.jsp").forward(request, response);
			}else {
				// 跳转到login.jsp页面
				response.sendRedirect("front/login.jsp");
			}
		}
		
		/*删除管理员*/
		if("delAdmin".equals(op)){
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				// 调用方法
				as.delAdmin(id);
			}			
		}
		
		/*新增管理员*/
		if("addAdmin".equals(op)) {
			String name=request.getParameter("name");
			String pwd=request.getParameter("pwd");
			String sex=request.getParameter("sex");
			String email=request.getParameter("email");
			String mobile=request.getParameter("mobile");
			String image=request.getParameter("image");
			int status=0;
			if(null!=request.getParameter("status")) 
				status=Integer.parseInt(request.getParameter("status"));			
			// 创建对象
			Admin admin=new Admin(name,pwd,sex,email,mobile,image,status);			
			// 调用方法
			as.addAdmin(admin);				
		}
		
		/*超级管理员点击修改按钮*/
		if("queryAdminUI".equals(op)) {  
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				Admin admin_one=as.queryAdminOne(id);
				request.setAttribute("admin_one", admin_one);	
				//跳转到editAdmin.jsp页面
				request.getRequestDispatcher("front/admin_edit.jsp").forward(request, response);
			}					
		}
		
		/*查看管理员信息*/
		if("queryAdminShow".equals(op)) {  
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				Admin admin_one=as.queryAdminOne(id);
				request.setAttribute("admin_one", admin_one);	
				//跳转到admin_show.jsp页面
				request.getRequestDispatcher("front/admin_show.jsp").forward(request, response);
			}					
		}
		
		/*超级管理员修改管理员信息*/
		if("editAdmin".equals(op)) {
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				String name=request.getParameter("name");
				String pwd=request.getParameter("pwd");
				String sex=request.getParameter("sex");
				String email=request.getParameter("email");
				String mobile=request.getParameter("mobile");
				String image=request.getParameter("image");
				int status=Integer.parseInt(request.getParameter("status"));			
				Admin admin=new Admin(id,name,pwd,sex,email,mobile,image,status);
				//调用方法
				as.editAdmin(admin);
			}					
		}
		
		/*修改个人信息*/
		if("infoEdit".equals(op)) {
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				String name=request.getParameter("name");
				String sex=request.getParameter("sex");
				String email=request.getParameter("email");
				String mobile=request.getParameter("mobile");
				String image=request.getParameter("image");			
				Admin admin=new Admin(id,name,sex,email,mobile,image);
				//调用方法
				as.infoEdit(admin);
			}					
		}
		
		/*修改密码*/
		if("pwdEdit".equals(op)) {
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				String pwd=request.getParameter("pwd");		
				Admin admin=new Admin(id,pwd);
				//调用方法
				as.pwdEdit(admin);
			}					
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
