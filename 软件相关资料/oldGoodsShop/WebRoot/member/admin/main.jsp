<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath()+"/member/admin";
if(session.getAttribute("user_id")==null){
out.println("<script>alert('您还没有登录！');" +
				"this.location.replace('./../../member/login/login.jsp','_parent'); </script>");
			}else{
		 
				//out.println("<script>alert('操作失败'); </script>");
			}

 

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/frameset.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>后台管理系统</TITLE>
<META http-equiv=content-type content="text/html; charset=gb2312">
</HEAD><FRAMESET 
rows=105,* cols="*" bordercolor="04376E">
  <FRAME name=ads marginWidth=0 marginHeight=0 
src="<%=path %>/top.jsp" frameBorder=0 noResize scrolling=no 
longDesc="">
<FRAMESET rows=675 cols=198,* frameborder="yes">
  <FRAME name=list marginWidth=0 
marginHeight=0 
src="<%=path %>/left.jsp" 
frameBorder=0 noResize scrolling=yes longDesc=""><FRAME name=main marginWidth=0 
marginHeight=0 src="<%=path %>/postdata.jsp" frameBorder=0 scrolling=yes 
longDesc=""></FRAMESET><NOFRAMES><body></body></NOFRAMES></FRAMESET>
</HTML>

