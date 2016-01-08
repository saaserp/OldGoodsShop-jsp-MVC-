<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<jsp:directive.page import="com.dkkj.ogs.model.MyApointmentModel" />
<jsp:directive.page import="com.dkkj.ogs.db.MyAppointDao" />
<jsp:directive.page import="com.dkkj.absct.Model" />
<jsp:directive.page import="com.dkkj.ogs.db.GoodsDAO" />
<jsp:directive.page import="com.dkkj.ogs.model.GoodsModel" />
<jsp:directive.page import="com.dkkj.ogs.model.UserModel" />
<jsp:directive.page import="com.dkkj.ogs.db.UserDAO" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
  MyAppointDao md=new MyAppointDao();
  List<Model> list=md.getMyAppointment(session.getAttribute("user_id").toString());
  GoodsModel g;
  GoodsDAO gd=new GoodsDAO();
  UserDAO ud=new UserDAO();
  UserModel user;
  
  //for(int i=0;i<list.size();i++){
	//		System.out.println(((MyApointmentModel)list.get(i)).getApt_place());
	//	}
	MyApointmentModel m;
   %>
    <table>
    <tr><td>物品id</td><td>物品名称</td><td>客人昵称</td><td>预约时间</td><td>预约地点</td><td>预约状态</td><td>操作</td></tr>
    <%for(int i=0;i<list.size();i++){
    m=(MyApointmentModel)list.get(i);
    g=(GoodsModel)gd.getModelById(m.getGoods_id());
    user=ud.getModelById(m.getCustomer_id());
     %>
    <tr><td><%=m.getApt_id() %></td><td><img src=./upload/images/<%=g.getGoods_image() %> style="height: 66px; width: 59px; "/><br><a href="./goods/detail.jsp?goods_id=<%=g.getGoods_id()%>"><%=g.getGoods_name() %></a></td><td><img src="./upload/images/<%=user.getUser_image()%>" style="height: 64px; width: 74px; "><br><a href="./member/personInfo/info.jsp?userID=<%=user.getUser_id()%>"><%=user.getUser_name()%></td><td><%=m.getApt_timeS() %></td><td><%=m.getApt_place() %></td>
    <td>
    <%   if(m.getIsHostOk().equals("0")&&m.getIsCustomerOk().equals("0")) {%>
		<p class="sku-line" tabindex="0" >
		订单状态：双方都不同意预约
		</p>   
		<%}else if(m.getIsHostOk().equals("0")&&m.getIsCustomerOk().equals("1")) {%>
		<p class="sku-line" tabindex="0" >
		订单状态：对方已经提出预约要求，等待你的回应
		</p>   
		<%} else if(m.getIsHostOk().equals("1")&&m.getIsCustomerOk().equals("0")){%>
		<p class="sku-line" tabindex="0" >
		订单状态：您同意预约，但是对方取消了预约
		</p>   
		<%} else if(m.getIsHostOk().equals("1")&&m.getIsCustomerOk().equals("1")){%>
		<p class="sku-line" tabindex="0" >
		订单状态：预约进行中
		</p>   
		
			<%} %>
    </td>
    <td><a href="./HostConfirm?user_id=<%=session.getAttribute("user_id").toString() %>>&apt_id=<%=m.getApt_id() %>&arg=1">同意预约</a><a href="./HostConfirm?user_id=<%=session.getAttribute("user_id").toString() %>>&apt_id=<%=m.getApt_id() %>&arg=0">拒绝预约</a></td></tr>
    <%} %>
    </table>
  </body>
</html>
