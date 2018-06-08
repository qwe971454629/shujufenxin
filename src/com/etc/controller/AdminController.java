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
	// ����Service����
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
		// ��������ı��� ,λ��Ӧ����request.getParameter֮ǰ
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String op = "login";
		int page = 1;
		int pageSize = 5;
		String vNameLike = "";
		if(null!=request.getParameter("op")){
			//��ȡop��ֵ
			op = request.getParameter("op");
		}
		
		/*ע��*/
		if ("register".equals(op)) {
			// ע���˺�
			String name = request.getParameter("name");
			// ע������
			String password = request.getParameter("password");
			// ����
			String email = request.getParameter("email");
			// �ֻ���
			String mobile = request.getParameter("mobile");
			// ��������
			Verify verify = new Verify(name, password,email,mobile);
			// ���÷���
			boolean flag = as.register(verify);
			if(flag==true) System.out.println("ע��ɹ�");
			// ��ת
			response.sendRedirect("front/login.jsp");
		}
		
		/*��¼*/
		if ("login".equals(op)) {
			// �õ��û�������û���������
			String name = request.getParameter("name");
			String pwd = request.getParameter("pwd");
			// ����adminService�ķ���
			Admin admin = as.login(name, pwd);
			System.out.println(admin);
			if (null != admin) {
				// �û�����������ȷ
				HttpSession session = request.getSession();
				// ������Ա��Ϣ�洢��session������
				session.setAttribute("admin", admin);
				// ��ת��ǰ̨ front/index.jspҳ��
				request.getRequestDispatcher("AdminController?op=queryAdmin").forward(request, response);
			}else {
				// �û�������������� ,��ת����¼ҳ��ȥ // 1 ת�� // 2�ض���
				response.sendRedirect("front/login.jsp");
			}
		}
		
		/*�˳�ϵͳ*/
		if("exit".equals(op)){
			//����ͨ�û���session�е���Ϣɾ��
			request.getSession().removeAttribute("admin");			
			response.sendRedirect("front/login.jsp");	
		}
		
		/*������б�*/
		if("queryVerify".equals(op)){
			//�жϲ�ѯע�������Ƿ��ǹ���Ա������
			//����session���ж�
			HttpSession session=request.getSession();
			Object obj=session.getAttribute("admin");
			if(null!=obj) {
			System.out.println("pageSize:"+request.getParameter("pageSize"));
			//��ȡpage pageSize enameLike
			if(null!=request.getParameter("page")){
				page =Integer.parseInt(request.getParameter("page"));
			}
			if(null!=request.getParameter("pageSize")){
				pageSize =Integer.parseInt(request.getParameter("pageSize"));
			}
			if(null!=request.getParameter("vNameLike")){
				vNameLike = request.getParameter("vNameLike");
				//��ʱ��Ҫ�����Ľ���ת��
				vNameLike = new String(vNameLike.getBytes("ISO-8859-1"),"utf-8");
				System.out.println("vNameLike:"+vNameLike);
			}
			PageData<Verify> pd=as.queryVerify(page, pageSize, vNameLike);			
			//��pd����洢������Χ��
			request.setAttribute("pd", pd);			
			//ת����verify.jspҳ��
			request.getRequestDispatcher("front/verify.jsp").forward(request, response);	
			}else {
				response.sendRedirect("front/login.jsp");
			}
		}
			
		/*���ע����û�*/
		if("verify".equals(op)){		
			System.out.println("verify:id:"+request.getParameter("id"));
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				boolean flag=as.verify(id);
				response.getWriter().print(flag==true?"ok":"");
			}				
		}
		
		/*ɾ��ע��������Ϣ*/
		if("delVerify".equals(op)){
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				boolean flag=as.delVerify(id);
				System.out.println(flag);
				response.getWriter().print(flag==true?"ok":"");
			}			
		}
		
		/*����Ա�б�*/
		if("queryAdmin".equals(op)){
			//�жϲ�ѯ����Ա�Ƿ��ǹ���Ա������
			//����session���ж�
			HttpSession session=request.getSession();
			Object obj=session.getAttribute("admin");
			if(null!=obj) {
			//��ѯ����Ա����Ϣ
			//��ȡpage pageSize enameLike
			if(null!=request.getParameter("page")){
				//��ȡop��ֵ
				page =Integer.parseInt(request.getParameter("page"));
			}
			if(null!=request.getParameter("pageSize")){
				//��ȡop��ֵ
				pageSize =Integer.parseInt(request.getParameter("pageSize"));
			}
			if(null!=request.getParameter("vNameLike")){
				//��ȡop��ֵ
				vNameLike = request.getParameter("vNameLike");
				vNameLike = new String(vNameLike.getBytes("ISO-8859-1"),"utf-8");
			}
			PageData<Admin> pd=as.queryAdmin(page, pageSize, vNameLike);			
			//��pd����洢������Χ��
			request.setAttribute("pd", pd);			
			//ת����showEmp.jspҳ��
			request.getRequestDispatcher("front/admin_list.jsp").forward(request, response);
			}else {
				response.sendRedirect("front/login.jsp");
			}
		}
		
		/*ɾ������Ա*/
		if("delAdmin".equals(op)){
			System.out.println("delAdmin:id:"+request.getParameter("id"));
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				boolean flag=as.delAdmin(id);
				System.out.println(flag);
				response.getWriter().print(flag==true?"ok":"");
			}			
		}
		
		/*��������Ա*/
		if("addAdmin".equals(op)) {
			String name=request.getParameter("name");
			String pwd=request.getParameter("pwd");
			String sex=request.getParameter("sex");
			String email=request.getParameter("email");
			String mobile=request.getParameter("mobile");
			String image=request.getParameter("image");
			int status=Integer.parseInt(request.getParameter("status"));
			System.out.println(name+","+pwd+","+sex+","+email+","+mobile+","+image+","+status);
			Admin admin=new Admin(name,pwd,sex,email,mobile,image,status);
			
			// ���÷���
			boolean flag = as.addAdmin(admin);
			response.getWriter().print(flag==true?"ok":"");
			// forward ת��
			request.getRequestDispatcher("AdminController?op=queryAdmin").forward(request, response);				
		}
		
		/*��������Ա����޸İ�ť*/
		if("queryAdminUI".equals(op)) {  
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				Admin admin_one=as.queryAdminUI(id);
				System.out.println(admin_one);
				request.setAttribute("admin_one", admin_one);	
				//ת����editAdmin.jspҳ��
				request.getRequestDispatcher("front/admin_edit.jsp").forward(request, response);
			}					
		}
		
		/*��������Ա�޸Ĺ���Ա��Ϣ*/
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
				
				boolean flag=as.editAdmin(admin);
				System.out.println(flag);
				response.getWriter().print(flag==true?"ok":"");
				request.getRequestDispatcher("AdminController?op=queryAdmin").forward(request, response);
			}					
		}
		
		/*�޸ĸ�����Ϣ*/
		if("infoEdit".equals(op)) {
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				String name=request.getParameter("name");
				String sex=request.getParameter("sex");
				String email=request.getParameter("email");
				String mobile=request.getParameter("mobile");
				String image=request.getParameter("image");			
				Admin admin=new Admin(id,name,sex,email,mobile,image);
				
				boolean flag=as.infoEdit(admin);
				System.out.println(flag);
				//response.getWriter().print(flag==true?"ok":"");
				request.getRequestDispatcher("front/login.jsp").forward(request, response);
			}					
		}
		
		/*�޸�����*/
		if("pwdEdit".equals(op)) {
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				String pwd=request.getParameter("pwd");		
				Admin admin=new Admin(id,pwd);
				
				boolean flag=as.pwdEdit(admin);
				System.out.println(flag);
				/*response.setHeader("Content-type", "text/html;charset=UTF-8");  
				//��仰����˼���Ǹ���servlet��UTF-8ת�룬��������Ĭ�ϵ�ISO8859  
				response.setCharacterEncoding("UTF-8");  
				PrintWriter out = response.getWriter();
				out.print("<script>alert('�޸ĳɹ�');</script>");
				out.flush();
				out.close();*/
				//request.getSession().removeAttribute("admin");
				request.getRequestDispatcher("front/login.jsp").forward(request, response);
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
