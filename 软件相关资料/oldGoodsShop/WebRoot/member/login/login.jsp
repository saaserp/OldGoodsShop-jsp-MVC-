<%@page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>二手货交易市场-登陆</title>
		<style type="text/css">
table {
	font-size: 12px;
}

table caption {
	font-size: 14px;
}
</style>
		<script type="text/javascript">
	function login(){
	var th=document.loginform;
	if(th.user_name.value==""){
	alert("用户名或用户id不为空！");
	th.user_name.focus();
	return ;
	}
	if(th.user_pwd.value==""){
	alert("密码不为空！");
	th.user_pwd.focus();
	return ;
	}

		th.action="<%=request.getContextPath()%>/servlet/LoginAction";
		th.submit();
	
	}
</script>
	</head>

	<body>

		<table align="center">
			<tr>
				<td>
					<img
						src="<%=request.getContextPath()%>/member/login/images/head.jpg">
				</td>
			</tr>
		</table>
		<form name="loginform" method="post" onsubmit="return login(); ">
			<table align="center">
				<caption>
					用户登陆
					<a href="../../index.jsp">回到首页</a>
				</caption>
				
				<tr>
					<td>
						用户账号
					</td>

					<td>
						<input type="text" style="weidth: 150px" name="user_name">
					</td>
				</tr>

				<tr>
					<td>
						用户密码
					</td>
					<td>
						<input type="password" style="weidth: 150px" name="user_pwd">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 登陆">
						<input type="button" value="注册"
							onclick="window.location.href='<%=request.getContextPath()%>/member/login/login.jsp'">
					</td>

				</tr>
			</table>

		</form>
	</body>
</html>