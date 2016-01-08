package com.dkkj.modular.buy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dkkj.ogs.db.Buyer;

public class AddtoAppointment extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddtoAppointment() {
		super();
	}

	/**
	 * 
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

		doPost(request, response);
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

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String buyer_id=request.getParameter("buyer_id");
		String goods_id=request.getParameter("goods_id");
		String apt_place=request.getParameter("apt_place");
		String apt_timeS=request.getParameter("apt_timeS");
	
		String hostId=request.getParameter("hostId");
		String apt_price=request.getParameter("apt_price");
		String exMsg=request.getParameter("exMsg");
		
	
		out.write("buyer_id:"+buyer_id+"\n");
		
		out.write("goods_id:"+goods_id+"\n");
		
		
		out.write("apt_place"+apt_place+"\n");
		
		out.write("apt_timeS"+apt_timeS+"\n");
		
		out.write("host_id:"+hostId+"\n");
		
		out.write("apt_price:"+apt_price+"\n");
	
		out.write("exMsg:"+exMsg);
		
		
		Buyer buy=new Buyer(buyer_id);
		
		
		
		int flag=0;
		flag=buy.addAppointment(
				goods_id,
				apt_place,
				apt_timeS,
				hostId,
				apt_price,
				exMsg
		);
		
		if(flag==1){
			out.println("<script>alert('加入预约列表成功！');" +
			"this.location.replace('/oldGoodsShop/appointment/car.jsp','_parent'); </script>");
		}else{
			out.println("<script>alert('预约失败，请检查网络'); </script>");
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
	}

}
