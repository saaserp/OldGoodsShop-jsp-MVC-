<%@page contentType="text/html;charset=utf-8"%>
<style>
.pic {
	height: 60px;
}

.button {
	weight: 10px;
}
</style>
<table>
	<tr>
		<td>
			<img class="pic"
				src="<%=request.getContextPath()%>/member/login/images/a1v.png">
		</td>
		<td>
			<h4>
				hi!你好。
			</h4>
		</td>
	</tr>
	<tr>
		<td>
			<input class="button" type="button" value="登陆"
				onclick="window.location.href='<%=request.getContextPath()%>/member/login/login.jsp'">
		</td>
		<td>
			<input weight="200px" type="button" value="注册"
				onclick="window.location.href='<%=request.getContextPath()%>/member/register/stepOne.jsp'">
		</td>
		<td>
			<input type="button" value="免费发布物品">
		</td>
	</tr>
</table>