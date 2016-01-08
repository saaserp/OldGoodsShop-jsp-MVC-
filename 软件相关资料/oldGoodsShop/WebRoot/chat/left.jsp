<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>left.jsp</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--添加一条每隔3秒自动刷新的功能。每3秒种把left.jsp这个页面自动刷新一次-->
    <meta http-equiv="Refresh" content="3;url=<%=path %>/chat/left.jsp">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
  </head>
  <!--保证当显示过多记录时，自动自现下拉滚动条，并自动位于最下方 -->
  <body onload="scroll(0,999999)" background="img/20120306.jpg">&nbsp; 
     聊天内容：<hr/>
     <%
        //设置乱码
         request.setCharacterEncoding("UTF-8");
         //从bottom.jsp页面中取得头像的路径
         String touxiang = request.getParameter("touxiang");
         //从bottom.jsp页面中取得字体颜色
         String yanse = request.getParameter("yanse");
         //从bottom.jsp页面中取得字体大小
         String daxiao = request.getParameter("daxiao");
         //System.out.println(touxiang);
         //取得发送的聊天的信息
         String message = request.getParameter("mess");
         //获取客户机的ip地址
         String ip = request.getRemoteAddr();
         //从容器中取得聊天信息
         String s = (String)application.getAttribute("msg");
         //防止刷新网页时显示null信息
        if(message != null){
        //对输入的消息，过滤特殊字符
        message = message.replaceAll("<","&lt;").replaceAll(">","&gt;");
        //判断头像是否选中
        if(touxiang!=null){
            message = ip+"说：<font size='"+daxiao+"' color='"+yanse+"'>"+message+"</font><img src='"+touxiang+"'>";
        }else{
            message = ip+"说：<font size='"+daxiao+"' color='"+yanse+"'>"+message+"</font>";
        }
        
        //如果取不到信息，说明是第一次，第一次直接把得到的信息放入容器中
         if(s == null){
             application.setAttribute("msg",message);
         }else{
             
         //s是原来的值，message是每次发送过来的最新消息
             s = s+"<br>"+message;
             application.setAttribute("msg",s);
         }
         //String s = (String)application.getAttribute("msg");
     }    
         out.println(s);
      %>
  </body>
</html>
