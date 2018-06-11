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
			as.register(verify);
			// ��ת
			//response.sendRedirect("front/login.jsp");
		}
		
		/*��¼*/
		if ("login".equals(op)) {
			// �õ��û�������û���������
			String name = request.getParameter("name");
			String pwd = request.getParameter("pwd");
			// ����adminService�ķ���
			Admin admin = as.login(name, pwd);
			if (null != admin) {
				// �û�����������ȷ
				HttpSession session = request.getSession();
				// ������Ա��Ϣ�洢��session������
				session.setAttribute("admin", admin);
				// ��ת��ǰ̨ front/index.jspҳ��
				request.getRequestDispatcher("AdminController?op=queryAdmin").forward(request, response);
			}else {
				request.getRequestDispatcher("front/login.jsp").forward(request, response);
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
				response.getWriter().print(flag==true?"ok":"");
			}			
		}
		
		/*����Ա�б�*/
		if("queryAdmin".equals(op)){
			//�жϲ�ѯ����Ա�Ƿ��ǹ���Ա������
			//����session���ж�
			HttpSession session=request.getSession();
			Admin admin=(Admin) session.getAttribute("admin");
			if(null!=admin) {
				//��ѯ����Ա����Ϣ
				//��ȡpage pageSize vNameLike
				if(null!=request.getParameter("page")){
					// ��ȡpage��ֵ
					page =Integer.parseInt(request.getParameter("page"));
				}
				if(null!=request.getParameter("pageSize")){
					// ��ȡpageSize��ֵ
					pageSize =Integer.parseInt(request.getParameter("pageSize"));
				}
				if(null!=request.getParameter("vNameLike")){
					// ��ȡvNameLike��ֵ
					vNameLike = request.getParameter("vNameLike");
					vNameLike = new String(vNameLike.getBytes("ISO-8859-1"),"utf-8");
				}
				PageData<Admin> pd=as.queryAdmin(page, pageSize, vNameLike);			
				// ��pd����洢������Χ��
				request.setAttribute("pd", pd);
				// ��ת��admin_list.jspҳ��
				request.getRequestDispatcher("front/admin_list.jsp").forward(request, response);
			}else {
				// ��ת��login.jspҳ��
				response.sendRedirect("front/login.jsp");
			}
		}
		
		/*ɾ������Ա*/
		if("delAdmin".equals(op)){
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				// ���÷���
				as.delAdmin(id);
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
			int status=0;
			if(null!=request.getParameter("status")) 
				status=Integer.parseInt(request.getParameter("status"));			
			// ��������
			Admin admin=new Admin(name,pwd,sex,email,mobile,image,status);			
			// ���÷���
			as.addAdmin(admin);				
		}
		
		/*��������Ա����޸İ�ť*/
		if("queryAdminUI".equals(op)) {  
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				Admin admin_one=as.queryAdminOne(id);
				request.setAttribute("admin_one", admin_one);	
				//��ת��editAdmin.jspҳ��
				request.getRequestDispatcher("front/admin_edit.jsp").forward(request, response);
			}					
		}
		
		/*�鿴����Ա��Ϣ*/
		if("queryAdminShow".equals(op)) {  
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				Admin admin_one=as.queryAdminOne(id);
				request.setAttribute("admin_one", admin_one);	
				//��ת��admin_show.jspҳ��
				request.getRequestDispatcher("front/admin_show.jsp").forward(request, response);
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
				//���÷���
				as.editAdmin(admin);
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
				//���÷���
				as.infoEdit(admin);
			}					
		}
		
		/*�޸�����*/
		if("pwdEdit".equals(op)) {
			if(null!=request.getParameter("id")) {
				int id=Integer.parseInt(request.getParameter("id"));
				String pwd=request.getParameter("pwd");		
				Admin admin=new Admin(id,pwd);
				//���÷���
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
