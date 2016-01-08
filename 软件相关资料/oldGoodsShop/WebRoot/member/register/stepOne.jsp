<%@page contentType="text/html;charset=utf-8"%>
<html>
	<title>二手货交易市场-注册-第一步</title>
	<body>
		<table align="center">
			<tr>
				<td>
					输入手机号码
				</td>
				<td>
					<input type="text">
				</td>
				<td><input type="button" value="发送验证码"></td>

			</tr>
			<tr>
				<td>
					输入验证码
				</td>
				<td>
					<input type="text">
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="下一步"
						onclick="window.location.href='<%=request.getContextPath()%>/member/register/stepTwo.jsp'">
				</td>
			</tr>
		</table>
	</body>

</html>