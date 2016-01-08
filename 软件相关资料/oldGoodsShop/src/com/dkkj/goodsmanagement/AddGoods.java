package com.dkkj.goodsmanagement;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dkkj.ogs.db.UserGoodsDAO;

public class AddGoods extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddGoods() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		String cmd=request.getParameter("cmd");
		String goodsID=request.getParameter("goodsID");
		UserGoodsDAO userGoodsDao=new UserGoodsDAO();
		String userID=request.getParameter("userID");
		int result=0;
		if(cmd.equals("delete")){
			result=userGoodsDao.removeGoods(userID, goodsID);
			
			
		}else if(cmd.equals("up")){
			result=userGoodsDao.up(userID, goodsID);
			
		}else if(cmd.equals("down")){
			result=userGoodsDao.down(userID, goodsID);
		}
		if(result!=-1){
			
			response.sendRedirect("mygoods/myGoods.jsp");
			
		}
//		response.sendRedirect("/");

		
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
