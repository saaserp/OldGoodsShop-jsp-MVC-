<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath()+"/member/admin";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>二手货管理系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META 
content="" 
name=keywords>
<META content= name=description>
<STYLE type=text/css>
.neon {
	FILTER: glow(color=#002E60,strength=3)
}
DIV {
	WIDTH: 70px
}
BODY {
	MARGIN: 0px;
	background-color: #005fc5;
}
BODY {
	MARGIN-TOP: 0px; SCROLLBAR-FACE-COLOR: 04376E; FONT-SIZE: 12px; BACKGROUND: 04376E; SCROLLBAR-HIGHLIGHT-COLOR: 04376E; SCROLLBAR-SHADOW-COLOR: 04376E; SCROLLBAR-3DLIGHT-COLOR: 04376E; SCROLLBAR-ARROW-COLOR: 04376E; SCROLLBAR-TRACK-COLOR: 04376E; SCROLLBAR-DARKSHADOW-COLOR: #799ae1
}
</STYLE>
<LINK href="<%=path %>/images/duan_1.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2800.1106" name=GENERATOR>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
#Layer1 {
	position:absolute;
	left:0px;
	top:0px;
	width:392px;
	height:65px;
	z-index:1;
}
-->
</style>
</HEAD>
<BODY>
<div id="Layer1">
  <object classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 
            codebase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0 
            height=70 width=402>
    <param name="movie" value="<%=path %>/images/Stare.swf">
    <param name="quality" value="high">
    <param name="wmode" value="transparent">
    <embed  
            src="<%=path %>/images/Stare.swf" width="402" height="70" quality=high 
            pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" 
            type="application/x-shockwave-flash" 
            wmode="transparent"
            > </embed>
  </object>
</div>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD borderColor=#0 width="100%" background="<%=path %>/images/di.jpg" height=108>
      <TABLE height=108 cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD vAlign=top height=57><img src="<%=path %>/images/pioneer_1.jpg" width="375" height="57"></TD>
          <TD vAlign=top align=right>&nbsp;</TD>
        </TR>
        <TR>
          <TD vAlign=bottom align=middle colSpan=2>
            <TABLE height=38 cellSpacing=0 cellPadding=0 width=766 border=0>
              <TBODY>
              <TR>
                <TD width=84>&nbsp;</TD>
                <TD vAlign=center align=middle width=97>&nbsp;</TD>
                <TD vAlign=center align=middle width=97>&nbsp;</TD>
                <TD class=our vAlign=center align=middle width=97>&nbsp;</TD>
                <TD vAlign=center align=middle width=97 
                background="<%=path %>/images/dh.gif"><A 
                  href="<%=path %>/pass.jsp" target="main" class=dh>密码修改</A></TD>
                <TD vAlign=center align=middle width=97 
                background="<%=path %>/images/dh.gif"><span class="white">用户：</span><span class="font1"><%=session.getAttribute("user_id").toString() %></span></TD>
                <TD vAlign=center align=middle width=97 
                background="<%=path %>/images/dh.gif"><A 
                  href="<%=path %>/postdata.jsp" target="main" class=dh>后台首 页</A></TD>
                <TD vAlign=center align=middle width=100 
                background="<%=path %>/images/dh-2.gif"><A 
                  href="<%=request.getContextPath()%>/index.jsp" target="_parent" class=dh>回到前台</A></TD>
              </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
</BODY></HTML>

