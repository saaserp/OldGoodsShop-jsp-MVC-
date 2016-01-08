<!DOCTYPE html>
	<jsp:directive.page import="com.dkkj.ogs.db.UserDAO" />
	<jsp:directive.page import="com.dkkj.ogs.model.UserModel" />
<html>
<head>
<title>搜索</title>
<%@page contentType="text/html;charset=utf-8"%>

	<jsp:directive.page import="com.dkkj.ogs.model.SearchModel" />
	<jsp:directive.page import="com.dkkj.ogs.db.SearchDAO" />
	<jsp:directive.page import="java.util.List" />
<link rel="stylesheet" type="text/css" href="search.css" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="this is my page">
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">

<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
<%
		//request.setCharacterEncoding("UTF-8");
		
		String keyword=request.getParameter("q");
		keyword= new String(keyword.getBytes("iso-8859-1"),"utf-8");
		//out.println(keyword);
		SearchDAO sd=new SearchDAO();
		List<SearchModel> list=sd.getAllSearchByKeyWord(keyword); 
%>
</head>

<body>
<%@include file="/inc/top.jsp"%>
	<div>
	<div class="commenSearch">
	
	</div>
		<div class="searchForm">
			<form>
				<input class="iput" type="text" name="q" />
				 <span class="sp_search"> 
					<input class="btn_search" type="submit" value="搜全站" />
				</span>
				<span class="sp_search"> 
					<input class="btn_search"type="submit" value="搜本地" />
				</span>
			</form>

		</div>
		
	</div>
	<%
	SearchModel sm;
	for(int i=0;i<list.size();i++){
	sm=(SearchModel)list.get(i);
	 
	
	%>
	<div class="list_item">
		<div>
			<image  src="../upload/images/<%=sm.getGoods_image()%>"></image>
		</div>
		<div class="list_info">
		<div class="info_title">
		<a href="<%=path %>/goods/detail.jsp?goods_id=<%=sm.getGoods_id() %>"> <%=sm.getGoods_name() %> </a>
		</div>
		<div class="info_body">
		描述：<%=sm.getGoods_descible() %>
		</div>
		<div class="info_contact">
		
		<image src="../images/afj.png"></image>
		
		<div class="info_user" style="width: 153px;">
		
	联系人：	<a style="border-color: red" href="./member/personInfo/info.jsp?userID=<%=sm.getUser_name()%>"><%=sm.getUser_name()%></a>
		
		</div>
		</div>
		</div>
		<div class="info_price">
		<p><%=sm.getGoods_price() %><h>元</h></p>
		</div>
	</div>
	<% }%>
</body>
</html>
