<%@page contentType="text/html;charset=utf-8"%>
<%

String user_name=(String )session.getAttribute("user_name");
String user_type=(String )session.getAttribute("user_type");
String user_id=(String)session.getAttribute("user_id");
if(user_name==null){
user_name="游客";
user_type="您只能浏览二手货";
}
%>
<style type="text/css">
table {
	font-size: 12px;
	font-family: "宋体"
}

table caption {
	font-size: 14px;
}

#headtb {
	font-size: 14px;
	font-weight: bold;
}

#headtb a {
	color: white;
	text-decoration: none;
}
</style>
<table align="center" width="960" style="background: #66c0ae"	id="headtb">
	<tr>
		<td colspan="2">
			<img src="<%=request.getContextPath()%>/inc/images/head.jpg">
		</td>

	</tr>
	<tr
		style="background: url(<%=request.getContextPath()%>/images/headbg.jpg) repeat-x;">
		<td>
			尊敬的<%=user_type%><%=user_name%>, 欢迎登录本系统！
		</td>

		<td align="right" height="25">
			<a href="">首页 </a>|
			<a href="">二手需求</a>|
			<a href="">二手市场</a>|
			<a href="">二手货竞拍|</a>
			<a href="<%=request.getContextPath() %>/member/admin/main.jsp">个人中心</a>
		</td>
	</tr>

</table>