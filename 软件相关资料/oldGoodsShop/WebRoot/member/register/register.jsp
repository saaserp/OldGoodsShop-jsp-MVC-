<%@page contentType="text/html;charset=utf-8"%>
<jsp:directive.page import="com.dkkj.ogs.db.UserDAO" />
<jsp:directive.page import="com.dkkj.ogs.model.*" />
<%
	String user_name = request.getParameter("user_name");
	String user_email = request.getParameter("user_email");
	String user_pwd = request.getParameter("user_pwd");
	String user_type = request.getParameter("user_type");
	UserDAO userDao = new UserDAO();
	UserModel um = new UserModel(user_name, user_pwd, user_email, user_type,
			getIpAddr(request));
	userDao.add(um);
	response.sendRedirect(request.getContextPath() + "/index.jsp");
%>
<%!public String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}%>