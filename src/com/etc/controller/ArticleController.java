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
	// 创建Service对象
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
		// 设置请求的编码 ,位置应该在request.getParameter之前
		request.setCharacterEncoding("utf-8");
		// TODO Auto-generated method stub
		// 参数名 op 值如果等于 query才做查询
		String op = request.getParameter("op");

		if ("frontQueryLike".equals(op)) {
			// 前台界面的数据展示

			// 获取表单传递过来的参数
			String articleLike = request.getParameter("articleLike");
			if (null == articleLike) {
				System.out.println("article == null");
				articleLike = "";
			}
			List<Month> list = as.getTopArticlesLike(articleLike);

			// 到了下一个页面就可以通过一个对应鹅request.getAttribute("key");
			request.setAttribute("list", list);

			// 将list的结果打印
			System.out.println("list :" + list.size());

			// 将模糊查询的关键字再传递回来给jsp和页面
			request.setAttribute("articleLike", articleLike);
			// forward 转发
			request.getRequestDispatcher("front/index.jsp").forward(request, response);

		}

		else {
			
				// query 是否是管理员操作?
				if ("query".equals(op)) {
					// 调用方法
					List<Month> list = as.getArticles();

					// 这里要进行页面的跳转,jsp去,在jsp显示数据;
					// 需要传递数据过去给jsp文件
					// 传递数据最常见的方法request
					// 设置属性 request对象的属性
					// request.setAttribute(key, value);

					// 到了下一个页面就可以通过一个对应鹅request.getAttribute("key");
					request.setAttribute("list", list);
					// forward 转发
					request.getRequestDispatcher("mvc/showArticles-jstl.jsp").forward(request, response);
				}
				else if ("del".equals(op)) {

					// 获取用户传递过来的参数 articleId
					String itemId = request.getParameter("itemId");

					boolean flag = as.delArticle(itemId);

					// 可以根据flag的值提示用户是否删除成功
					// 页面跳转
					request.getRequestDispatcher("ArticleController?op=query").forward(request, response);
				} else if ("queryLike".equals(op)) {
					// 模糊查询:
					// 获取表单传递过来的参数
					String articleLike = request.getParameter("articleLike");
					List<Month> list = as.getArticlesLike(articleLike);

					// 到了下一个页面就可以通过一个对应鹅request.getAttribute("key");
					request.setAttribute("list", list);
					// 将模糊查询的关键字再传递回来给jsp和页面
					request.setAttribute("articleLike", articleLike);
					// forward 转发
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
