package com.dkkj.modular.login;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class LoginCheckFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req=(HttpServletRequest)request;
	    HttpServletResponse res=(HttpServletResponse)response;
	    request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
	    res.setHeader("Pragma", "No-cache");
	    res.setHeader("Cache-Control","no-cache");
	    res.setHeader("Expires", "0");
	    PrintWriter out=res.getWriter();
	    HttpSession session=req.getSession();
	    if(session.getAttribute("user_id")!=null){
	        chain.doFilter(request, response);
	    }
	    else{
	    	out.println("<script>alert('Forbiden ,please login first!');" +
	    			"this.location.replace('/oldGoodsShop/member/login/login.jsp','_parent'); </script>");
	    }
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	
}