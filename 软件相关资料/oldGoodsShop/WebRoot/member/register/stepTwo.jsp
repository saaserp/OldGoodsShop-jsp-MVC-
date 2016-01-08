<%@page contentType="text/html;charset=utf-8"%>
<jsp:directive.page import="com.dkkj.tools.MD5Encryption" />
<jsp:directive.page import="com.dkkj.ogs.model.CommentModel" />
<%
	MD5Encryption md5=new MD5Encryption();
	
 %>
<html>
	<head>
		<title>注册-第二步</title>
		<style type="text/css">
table {
	font-size: 12px;
}

table caption {
	font-size: 14px;
}
</style>
		<script type="text/javascript">
			function checkForm(myform){
			var user_name=myform.user_name.value;
			var user_email=myform.user_email.value;
			var user_pwd1=myform.user_pwd1.value;
			var user_pwd2=myform.user_pwd2.value;
			if(user_name==""){
				alert('会员名不为空');
				myform.user_name.focus();
				return false;
			}else
			if(user_email==""){
				alert('邮箱不为空');
				myform.user_email.focus();
				return false;
			}else
			if(user_pwd1==""|user_pwd2==""){
				alert('密码不为空');
				myform.user_pwd1.focus();
				return false;
			}else
			if(user_pwd1!=user_pwd2){
				alert('密码不一致');
				myform.user_pwd2.focus();
				return false;
			}else{
			
					//user_pwd2=md5.getEncryptionString(user_pwd2);
					
					myform.user_pwd.value=user_pwd2;
				return true;
			}			
			}
		</script>
	</head>
	<title>二货交易市场-注册 </title>
	<body>
		<form action="register.jsp" name="form1"
			onsubmit="return checkForm(this);" method="post">
			<table width="425" height="226" align="center">
				<tr>
					<td>
						会员名
					</td>
					<td>
						<input type="text" name="user_name">
					</td>
				</tr>
				<tr>
					<td>
						电子邮箱
					</td>
					<td>
						<input type="text" name="user_email">
					</td>
				</tr>
				<tr>
					<td>
						密码
					</td>
					<td>
						<input type="password" name="user_pwd1">
					</td>
				</tr>
				<tr>
					<td>
						再次密码
					</td>
					<td>
						<input type="password" name="user_pwd2" >
					</td>
				</tr>
				<tr>
					<td>

					</td>
					<td>
						<select name="user_type">
							<%
								String user_types[] = { "买家", "卖家" };
								for (int i = 0; i < 2; i++) {
									out.write("<option value=" + i + ">" + user_types[i]
											+ "</option>");
								}
							%>
						</select>
					</td>
				</tr>
				<tr>
					<td>
					<input type="text" style="display:none"   name="user_pwd">
					</td>
					<td>
						<input type="submit" value="完成">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>