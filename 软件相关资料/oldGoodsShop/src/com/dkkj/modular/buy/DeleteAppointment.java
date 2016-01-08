package com.dkkj.modular.buy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dkkj.ogs.db.AppointmentDAO;

public class DeleteAppointment extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DeleteAppointment() {
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
		 
		String aptID=request.getParameter("aptID");
		AppointmentDAO appointmentdao=new AppointmentDAO();
		PrintWriter out = response.getWriter();
		if(appointmentdao.deleApointment(aptID)==1){
			out.println("<script>alert('ɾ���ɹ���');" +
					"this.location.replace('/oldGoodsShop/appointment/car.jsp','_parent'); </script>");
		}else{
			out.println("<script>alert('ɾ��ʧ�ܣ���������'); </script>");
		}
		//response.sendRedirect("/oldGoodsShop/appointment/car.jsp");
		
		
		
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
