package com.etc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.etc.entity.Month;
import com.etc.service.ArticleSerivce;
import com.etc.service.impl.ArticleSerivceImpl;

/**
 * Servlet implementation class ArticleController
 */
@WebServlet("/MonthController")
public class ArticleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// ����Service����
	ArticleSerivce as = new ArticleSerivceImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ArticleController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ��������ı��� ,λ��Ӧ����request.getParameter֮ǰ
		request.setCharacterEncoding("utf-8");
		// TODO Auto-generated method stub
		// ������ op ֵ������� query������ѯ
		String op = request.getParameter("op");

		if ("frontQueryLike".equals(op)) {
			// ǰ̨���������չʾ

			// ��ȡ�����ݹ����Ĳ���
			String articleLike = request.getParameter("articleLike");
			if (null == articleLike) {
				System.out.println("article == null");
				articleLike = "";
			}
			List<Month> list = as.getTopArticlesLike(articleLike);

			// ������һ��ҳ��Ϳ���ͨ��һ����Ӧ��request.getAttribute("key");
			request.setAttribute("list", list);

			// ��list�Ľ����ӡ
			System.out.println("list :" + list.size());

			// ��ģ����ѯ�Ĺؼ����ٴ��ݻ�����jsp��ҳ��
			request.setAttribute("articleLike", articleLike);
			// forward ת��
			request.getRequestDispatcher("front/index.jsp").forward(request, response);

		}

		else {
			
				// query �Ƿ��ǹ���Ա����?
				if ("query".equals(op)) {
					// ���÷���
					List<Month> list = as.getArticles();

					// ����Ҫ����ҳ�����ת,jspȥ,��jsp��ʾ����;
					// ��Ҫ�������ݹ�ȥ��jsp�ļ�
					// ������������ķ���request
					// �������� request���������
					// request.setAttribute(key, value);

					// ������һ��ҳ��Ϳ���ͨ��һ����Ӧ��request.getAttribute("key");
					request.setAttribute("list", list);
					// forward ת��
					request.getRequestDispatcher("mvc/showArticles-jstl.jsp").forward(request, response);
				}
				else if ("del".equals(op)) {

					// ��ȡ�û����ݹ����Ĳ��� articleId
					String itemId = request.getParameter("itemId");

					boolean flag = as.delArticle(itemId);

					// ���Ը���flag��ֵ��ʾ�û��Ƿ�ɾ���ɹ�
					// ҳ����ת
					request.getRequestDispatcher("ArticleController?op=query").forward(request, response);
				} else if ("queryLike".equals(op)) {
					// ģ����ѯ:
					// ��ȡ�����ݹ����Ĳ���
					String articleLike = request.getParameter("articleLike");
					List<Month> list = as.getArticlesLike(articleLike);

					// ������һ��ҳ��Ϳ���ͨ��һ����Ӧ��request.getAttribute("key");
					request.setAttribute("list", list);
					// ��ģ����ѯ�Ĺؼ����ٴ��ݻ�����jsp��ҳ��
					request.setAttribute("articleLike", articleLike);
					// forward ת��
					request.getRequestDispatcher("front/showArticles-jstl.jsp").forward(request, response);

				}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
