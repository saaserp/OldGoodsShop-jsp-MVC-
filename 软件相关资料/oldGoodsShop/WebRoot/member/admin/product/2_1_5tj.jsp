<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath()+"/member/admin";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>后台管理系统</TITLE>
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
	MARGIN: 0px
}
BODY {
	MARGIN-TOP: 0px; SCROLLBAR-FACE-COLOR: #005fc5; FONT-SIZE: 12px; BACKGROUND: #ffffff; SCROLLBAR-HIGHLIGHT-COLOR: #799ae1; SCROLLBAR-SHADOW-COLOR: #799ae1; SCROLLBAR-3DLIGHT-COLOR: #005fc5; SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #aabfec; SCROLLBAR-DARKSHADOW-COLOR: #799ae1
}
</STYLE>
<LINK href="<%=path %>/images/duan_1.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2800.1106" name=GENERATOR>
<style type="text/css">
<!--
.STYLE7 {COLOR: #003366; font-size: 12px;}
-->
</style>

</HEAD>
<BODY bgColor="#ffffff">
<form name="form1" action="" method="post" enctype="multipart/form-data">
<TABLE height=426 cellSpacing=0 cellPadding=0 width=580 align=center border=0>
  <TBODY>
  <TR>
    <TD colSpan=3 height=9></TD></TR>
  <TR>
    <TD vAlign=top width=12 background="<%=path %>/images/dhpddw.gif" rowSpan=2>&nbsp;</TD>
    <TD width=739 background="<%=path %>/images/h-1.gif" height=9></TD>
    <TD width=9 height=9><IMG height=9 src="<%=path %>/images/jiao.gif" width=9></TD></TR>
  <TR>
    <TD vAlign=top align=right width=739 height=408><TABLE cellSpacing=0 cellPadding=0 width=556 border=0>
      <!--DWLayoutTable-->
      <TBODY>
        <TR>
          <TD vAlign=bottom width=548 height=27><IMG height=10 
            src="<%=path %>/images/jt2.gif" width=10> <span class="lbt">产品信息管理&gt;&gt;产品信息_添加 </span></TD>
          <TD width=8 rowSpan=3>&nbsp;</TD>
        </TR>
        <TR>
          <TD background="<%=path %>/images/ht.gif" height=22></TD>
        </TR>
        <TR>
          <TD class=unnamed1 vAlign=top 
            height=9><TABLE width="99%" 
        border=0 cellPadding=4 cellSpacing=1 bgColor=#0867b3>
              <TBODY>
                <TR bgColor=#ffffff height=20>
                  <TD width=13% align="center"  noWrap class="STYLE7">产品名称</TD>
                  <TD width=31% noWrap><span class="foot3"><INPUT class=text2  maxLength=20 
            size=18 name="proname" minLength="1"></span></TD>
                  <TD width=18% align="center" noWrap><span class="STYLE7">产品价格</span></TD>
                  <TD width=38% noWrap><span class="STYLE7">
                    <INPUT class=text2  maxLength=20 
            size=18 name="proprice" minLength="1">
                  </span></TD>
                  </TR>
                <TR bgColor=#ffffff height=20>
                  <TD width=13% align="center"  noWrap class="STYLE7">产品产地</TD>
                  <TD width=31% noWrap colspan="3">
                  <span class="STYLE7">
                    <INPUT class=text2  maxLength=20 
            size=30 name="proaddress" minLength="1">
                  </span>
                  </TD>
                </TR>
                <TR bgColor=#ffffff height=20>
                  <TD height="-1" align="center" noWrap><span class="STYLE7">产品图片</span></TD>
                  <TD height="-1" colspan="3" valign="middle" noWrap><input name="proimage" type="file" class="text2" size="60"></TD>
                  </TR>
              </TBODY>
            </TABLE>
              <br></TD>
        </TR>
        <TR>
          <TD height=27 colspan="2" align="center" vAlign=top><a href="提交"><img src="<%=path %>/images/ok_1.jpg" name="Image3" width="60" height="22" border="0"></a>  <a href="javascript:history.back();"><img src="<%=path %>/images/fh_1.jpg" name="Image4" width="60" height="22" border="0"></a></TD>
        </TR>
        <TR>
          <TD height=87 vAlign=top><!--DWLayoutEmptyCell-->&nbsp;</TD>
          <TD></TD>
        </TR>
        <TR>
          <TD height=20>&nbsp;</TD>
          <TD></TD>
        </TR>
      </TBODY>
    </TABLE></TD>
    <TD width=9 background="<%=path %>/images/s-1.gif"></TD></TR></TBODY></TABLE>
    </form>
<IFRAME name=top align=default src="<%=path %>/bottom.jsp" 
      frameBorder=0 width=100% scrolling=no 
      height=88>
<h1>&nbsp;</h1>
</IFRAME>
</BODY></HTML>

