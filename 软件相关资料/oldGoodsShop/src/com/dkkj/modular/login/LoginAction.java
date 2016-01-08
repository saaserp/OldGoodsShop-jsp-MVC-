package com.dkkj.modular.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dkkj.ogs.db.UserDAO;
import com.dkkj.ogs.model.UserModel;

public class LoginAction  extends HttpServlet {
	private LoginService service;
	/**
	 * Constructor of the object.
	 */
	public LoginAction() {
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
		this.doPost(request, response);
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
		String path=request.getContextPath();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String user_name=request.getParameter("user_name").trim();
		
		String user_pwd=request.getParameter("user_pwd").trim();
	
		String user_id=null;
		try{
			user_id=service.login(user_name, user_pwd);
		}catch(Exception e){
			user_id=null;
		}
		
		
		
		if(user_id!=null){
		
		UserDAO ud=new UserDAO();
		UserModel user= ud.getModelById(user_id);
		request.getSession().setAttribute("user_id", user.getUser_id().trim());
		request.getSession().setAttribute("user_name", user.getUser_name().trim());
		request.getSession().setAttribute("user_type", user.getUser_type());
			
			
			
			response.sendRedirect(path+"/index.jsp");
		}else{
			
			response.sendRedirect(path+"/member/login/login.jsp");
		}
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
		service=new LoginDao();
	}

}
