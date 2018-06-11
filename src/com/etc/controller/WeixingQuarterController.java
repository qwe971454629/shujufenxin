package com.etc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.etc.entity.Month;
import com.etc.entity.Quarter;
import com.etc.entity.jinshidun;
import com.etc.util.DBUtil;
import com.google.gson.Gson;

/**
 * Servlet implementation class ProductsController
 */
@WebServlet({"/wxq.do","/wxq","/WeixingQuarterController"})
public class WeixingQuarterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WeixingQuarterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		List<Quarter> list=(List<Quarter> )DBUtil.select("select id,quarter,number from wx_quarter", Quarter.class);
		
		Gson gson = new Gson();
		String gsonStr=gson.toJson(list);
		
		response.getWriter().print(gsonStr);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
