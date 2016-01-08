package com.dkkj.modular.buy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dkkj.ogs.db.AppointmentDAO;

public class CustomerConfirm extends HttpServlet {

	/**
	 * 触发定向推送给卖家事件，
	 * 需要的传进的参数为卖家id,商品id
	 */
	public CustomerConfirm() {
		super();
	}

	
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		//
		String aptID=request.getParameter("aptID");
		String arg=request.getParameter("arg");
		AppointmentDAO appointmentdao=new AppointmentDAO();
		if(appointmentdao.setCustomerOK(arg, aptID)==1){
			out.println("<script>alert('操作成功！');" +
					"this.location.replace('/oldGoodsShop/appointment/car.jsp','_parent'); </script>");
		}
		else{
			out.println("<script>alert('操作失败');" +
					"this.location.replace('/oldGoodsShop/appointment/car.jsp','_parent'); </script>");
		}
		
		 
			out.flush();
			out.close();

	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
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
