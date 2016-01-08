package com.dkkj.modular.buy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.dkkj.ogs.db.Seller;

public class HostConfirm extends HttpServlet {

	/**
	 * Constructor of the object.
	 *执行商品的购买
	 *传进的参数：预约id,
	 */
	public HostConfirm() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String host_id=request.getParameter("user_id");
		String apt_id=request.getParameter("apt_id");
		String arg=request.getParameter("arg");
		Seller seller=new Seller(host_id);
		if(
		seller.acceptAppointment(apt_id, arg,"同意的消息")==1){
		 
				out.println("<script>alert('操作成功！');" +
				"this.location.replace('./../../appointment/apointmentPage.jsp','_parent'); </script>");
			}else{
				out.println("<script>alert('操作失败'); </script>");
			}
		 
		out.flush();
		out.close();
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}


	public void init() throws ServletException {
		// Put your code here
	}

}
