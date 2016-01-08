<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath()+"/member/admin";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>后台管理系统</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<META content="" name=keywords>
		<META content=name=description>
		<STYLE type=text/css>
.neon {
	FILTER: glow(color = #002E60, strength = 3)
}

DIV {
	WIDTH: 70px
}

BODY {
	MARGIN: 0px;
	background-color: #005fc5;
}

BODY {
	MARGIN-TOP: 0px;
	SCROLLBAR-FACE-COLOR: #005fc5;
	FONT-SIZE: 12px;
	BACKGROUND: #005fc5;
	SCROLLBAR-HIGHLIGHT-COLOR: #799ae1;
	SCROLLBAR-SHADOW-COLOR: #799ae1;
	SCROLLBAR-3DLIGHT-COLOR: #005fc5;
	SCROLLBAR-ARROW-COLOR: #ffffff;
	SCROLLBAR-TRACK-COLOR: #aabfec;
	SCROLLBAR-DARKSHADOW-COLOR: #799ae1
}
</STYLE>
		<LINK href="<%=path %>/images/duan_1.css" type=text/css rel=stylesheet>
		<META content="MSHTML 6.00.2800.1106" name=GENERATOR>
		<style type="text/css">
<!--
.style6 {
	COLOR: #0000ff
}

.STYLE7 {
	COLOR: #003366;
	font-size: 12px;
}
-->
</style>
		<script type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>
	</HEAD>
	<BODY>
		<TABLE height=100% cellSpacing=0 cellPadding=0 width=178 align=center
			border=0>
			<TBODY>
				<TR>
					<TD colSpan=2 height=2></TD>
				</TR>
				<TR>
					<TD width=177 height="682" vAlign=top
						background="<%=path %>/images/dhpdw.GIF">
						<img src="<%=path %>/images/glmb.jpg" width="177" height="19">
						<TABLE height=26 cellSpacing=1 cellPadding=0 width=177
							background="<%=path %>/images/abj.gif" border=0>
							<TBODY>
								<TR>
									<TD class=unnamed1-dh
										onmouseover="this.style.backgroundColor='#005FC5'"
										onmouseout="this.style.backgroundColor='#04366C'" vAlign=top>
										<TABLE height=2 cellSpacing=0 cellPadding=0 width="100%"
											border=0>
											<TBODY>
												<TR>
													<TD></TD>
												</TR>
											</TBODY>
										</TABLE>
										<IMG height=9 src="<%=path %>/images/dhjt.gif" width=15>
										<A class=baise href="#">个人资料管理</A><A class=baise href="#"></A>
									</TD>
								</TR>

							</TBODY>
						</TABLE>


						<TABLE height=26 cellSpacing=1 cellPadding=0 width=177
							background="<%=path %>/images/abj2.gif" border=0>
							<TBODY>
								<TR>
									<TD class=unnamed1-dh
										onmouseover="this.style.backgroundColor='#6AA1DB'"
										onmouseout="this.style.backgroundColor='#2A67A9'" vAlign=top
										bgColor=#2a67a9>
										<A href="<%=path %>./../personInfo/info.jsp?userID=<%=session.getAttribute("user_id").toString() %>" target="main" class=yd>我的资料</A>
									</TD>
								</TR>
								<TR>
									<TD class=unnamed1-dh
										onmouseover="this.style.backgroundColor='#6AA1DB'"
										onmouseout="this.style.backgroundColor='#2A67A9'" vAlign=top
										bgColor=#2a67a9>
										<A href="<%=path %>/product/2_1_5.jsp" target="main" class=yd>安全中心</A>
									</TD>
								</TR>
								
							</TBODY>
						</TABLE>
						<TABLE height=26 cellSpacing=1 cellPadding=0 width=177
							background="<%=path %>/images/abj.gif" border=0>
							<TBODY>
								<TR>
									<TD class=unnamed1-dh
										onmouseover="this.style.backgroundColor='#005FC5'"
										onmouseout="this.style.backgroundColor='#04366C'" vAlign=top>
										<TABLE height=2 cellSpacing=0 cellPadding=0 width="100%"
											border=0>
											<TBODY>
												<TR>
													<TD></TD>
												</TR>
											</TBODY>
										</TABLE>
										<IMG height=9 src="<%=path %>/images/dhjt.gif" width=15>
										<A class=baise href="#">二货产品管理</A><A class=baise href="#"></A>
									</TD>
								</TR>

							</TBODY>
						</TABLE>
						<TABLE height=26 cellSpacing=1 cellPadding=0 width=177
							background="<%=path %>/images/abj2.gif" border=0>
							<TBODY>
								<TR>
									<TD class=unnamed1-dh
										onmouseover="this.style.backgroundColor='#6AA1DB'"
										onmouseout="this.style.backgroundColor='#2A67A9'" vAlign=top
										bgColor=#2a67a9>
										<A href="<%=path %>./../../mygoods/myGoods.jsp" target="main" class=yd>我的二手货</A>
									</TD>
								</TR>
								<TR>
									<TD class=unnamed1-dh
										onmouseover="this.style.backgroundColor='#6AA1DB'"
										onmouseout="this.style.backgroundColor='#2A67A9'" vAlign=top
										bgColor=#2a67a9>
										<A href="<%=path %>./../../appointment/apointmentPage.jsp" target="main" class=yd>预约订单管理</A>
									</TD>
								</TR>
								<TR>
									<TD class=unnamed1-dh
										onmouseover="this.style.backgroundColor='#6AA1DB'"
										onmouseout="this.style.backgroundColor='#2A67A9'" vAlign=top
										bgColor=#2a67a9>
										<A href="<%=path %>/product/2_1_5.jsp" target="main" class=yd>二手货查询</A>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
							<TABLE height=26 cellSpacing=1 cellPadding=0 width=177
							background="<%=path %>/images/abj.gif" border=0>
							<TBODY>
								<TR>
									<TD class=unnamed1-dh
										onmouseover="this.style.backgroundColor='#005FC5'"
										onmouseout="this.style.backgroundColor='#04366C'" vAlign=top>
										<TABLE height=2 cellSpacing=0 cellPadding=0 width="100%"
											border=0>
											<TBODY>
												<TR>
													<TD></TD>
												</TR>
											</TBODY>
										</TABLE>
										<IMG height=9 src="<%=path %>/images/dhjt.gif" width=15>
										<A class=baise href="#">二货活动管理</A><A class=baise href="#"></A>
									</TD>
								</TR>

							</TBODY>
						</TABLE>
						<TABLE height=26 cellSpacing=1 cellPadding=0 width=177
							background="<%=path %>/images/abj2.gif" border=0>
							<TBODY>
								<TR>
									<TD class=unnamed1-dh
										onmouseover="this.style.backgroundColor='#6AA1DB'"
										onmouseout="this.style.backgroundColor='#2A67A9'" vAlign=top
										bgColor=#2a67a9>
										<A href="<%=path %>/product/2_1_5.jsp" target="main" class=yd>我的竞拍</A>
									</TD>
								</TR>
								
							</TBODY>
						</TABLE>
						<br>
						<br>
					</TD>
					<TD width=590></TD>
				</TR>
			</TBODY>
		</TABLE>
	</BODY>
</HTML>
