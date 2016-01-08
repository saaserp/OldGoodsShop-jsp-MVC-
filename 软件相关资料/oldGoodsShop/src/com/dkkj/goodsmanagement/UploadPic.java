package com.dkkj.goodsmanagement;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UploadPic extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UploadPic() {
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

		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		out.print(" <center>正在上传文件.......</center>");
		try {
			
			out.print("10");
			com.jspsmart.upload.SmartUpload mySmartUpload = new com.jspsmart.upload.SmartUpload();
			out.print("20");
			//上传初始化
			mySmartUpload.initialize(this.getServletConfig(), request,response);
			out.print("30");
			//上传
			mySmartUpload.upload();
			out.print("40");
			com.jspsmart.upload.File myfile = mySmartUpload.getFiles().getFile(0);
			out.print("50");
			String fn = myfile.getFileName();
			out.print("60");
			System.out.println(fn);
			out.print("70");
			String path = "";
//			path="F:/work/FileUpload/WebRoot/WEB-INF/upload/" + fn;
			path="C:/"+fn;
			//上传文件到服务器
			myfile.saveAs(path, myfile.SAVEAS_PHYSICAL);	
			out.print("100");
			out.println("<script>alert('图片上传成功！');" +
					"this.location.replace('./mygoods/myGoodss.jsp','_parent'); </script>");
		} catch (Exception e) {
			e.printStackTrace();
		}
		out.print("<a href=/up/up.jsp>重新上传</a>");
 
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
