<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath()+"/member/admin";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>后台管理系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META 
content="检索词语,可以在搜索引擎中收到此处的文字。请自行填写关键词语，或者直接删除。或者请求 www.chattea.com 帮助~！" 
name=keywords>
<META content=关于相关的信息 name=description>
<STYLE type=text/css>
.neon {
	FILTER: glow(color=#002E60,strength=3)
}
.leon {
	FILTER: glow(color=#ffffff,strength=2)
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


<STYLE type=text/css>
.style1 {
	COLOR: #0000ff
}
.STYLE4 {font-size: 12px}
.STYLE5 {LINE-HEIGHT: 26px; font-size: 12px;}
.STYLE9 {COLOR: #FF0000; font-size: 12px; }
.STYLE7 {COLOR: #003366; font-size: 12px;}
</STYLE>

<META content="MSHTML 6.00.2800.1106" name=GENERATOR></HEAD>
<BODY bgColor="#ffffff">


<td>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#005FC6"> 
<td bgcolor="#005FC6">
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD borderColor=#0 width="100%" background=images/di.jpg height=108>
      <TABLE height=108 cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width="51%" height=57 align="right" vAlign=top ></TD>
          <TD width="49%" align=right valign=top>&nbsp;</TD>
        </TR>
        <TR>
          <TD vAlign=bottom align=middle colSpan=2>&nbsp;</TD>
        </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE height=9 cellSpacing=0 cellPadding=0 width=100% align=center border=0>
  <!--DWLayoutTable-->
  <TBODY>
  <TR>
    <TD height=9 bgcolor="#FFFFFF"><TABLE height=425 cellSpacing=0 cellPadding=0 width=760 align=center border=0>
      <!--DWLayoutTable-->
      <TBODY>
        <TR>
          <TD colSpan=4 height=9></TD>
        </TR>
        <TR>
          <TD height=147 colSpan=2 background="<%=path %>/images/pioneer_4.jpg"></TD>
          <TD width=7 rowSpan=3>&nbsp;</TD>
          <TD vAlign=top width=202 bgColor=#ffffff><TABLE height=147 cellSpacing=0 cellPadding=0 width=200 border=0>
              <TBODY>
                <TR>
                  <TD width=18 height=25><IMG height=25 src="<%=path %>/images/1825.gif" 
            width=18></TD>
                  <TD class=sl width=164 background="<%=path %>/images/su.gif" height=25><DIV class=leon>
                      <TABLE height=2 cellSpacing=0 cellPadding=0 width=10 border=0>
                        <TBODY>
                          <TR>
                            <TD></TD>
                          </TR>
                        </TBODY>
                      </TABLE>
                    用户登录</DIV></TD>
                  <TD width=18 height=25><IMG height=25 src="<%=path %>/images/2518.gif" 
            width=18></TD>
                </TR>
                <TR vAlign=bottom>
                  <TD background="<%=path %>/images/hdw.gif" colSpan=3 height=112><FORM name=form action= method=post>
                      <TABLE height=69 width=176 align=center border=0>
                        <TBODY>
                          <TR>
                            <TD class=sl width=57 height=2>用户名：</TD>
                            <TD width=109 background="<%=path %>/images/sr.gif" height=20><INPUT 
                  class=hui2 
                  style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-LEFT-COLOR: #333333; BORDER-BOTTOM-WIDTH: 0px; BORDER-BOTTOM-COLOR: #333333; BORDER-TOP-COLOR: #333333; BORDER-RIGHT-WIDTH: 0px; BORDER-RIGHT-COLOR: #333333" 
                  tabIndex=1 size=15 name=login>
                            </TD>
                          </TR>
                          <TR>
                            <TD class=sl height=20>密　码：</TD>
                            <TD background="<%=path %>/images/sr.gif" height=20><INPUT 
                  class=hui2 
                  style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-LEFT-COLOR: #333333; BORDER-BOTTOM-WIDTH: 0px; BORDER-BOTTOM-COLOR: #333333; BORDER-TOP-COLOR: #333333; BACKGROUND-COLOR: #fbfbfb; BORDER-RIGHT-WIDTH: 0px; BORDER-RIGHT-COLOR: #333333" 
                  tabIndex=1 type=password size=15 name=password>
                            </TD>
                          </TR>
                          <TR>
                            <TD height=21 colspan="2" align=center valign="top"><FONT color=#ff6600><SPAN 
                  class=STYLE4><FONT color=#ff3300><br>
                            </FONT></SPAN></FONT><a href="<%=path %>/main.jsp"><img src="<%=path %>/images/dl-1.gif" name="Image7" width="60" height="22" border="0"></a> <a href="<%=path %>/pass.jsp"><img src="<%=path %>/images/zc-1.gif" name="Image6" width="84" height="22" border="0"></a></TD>
                          </TR>
                        </TBODY>
                      </TABLE>
                    <INPUT type=hidden 
            value=login name=action>
                  </FORM></TD>
                </TR>
                <TR>
                  <TD colSpan=3 height=10><IMG height=10 src="<%=path %>/images/xh.gif" 
            width=200></TD>
                </TR>
              </TBODY>
          </TABLE></TD>
        </TR>
        <TR>
          <TD colSpan=2 height=24></TD>
          <TD vAlign=top bgColor=#ffffff></TD>
        </TR>
        <TR>
          <TD width=56 height=47><IMG height=47 src="<%=path %>/images/jiantou.gif" 
    width=47></TD>
          <TD width=495 valign=bottom><span class="lbt"></span></TD>
          <TD><span class="lbt"></span></TD>
        </TR>
        <TR>
          <TD height=198 colSpan=2 valign="top"><span class="STYLE9"><span class="STYLE7"><br>
                  <IMG height=10 
            src="<%=path %>/images/jt2.gif" width=10> 书写应注意……</span><br>
                  <br>
                  <span class="STYLE7"><IMG height=10 
            src="<%=path %>/images/jt2.gif" width=10> 项目的处理注意……</span><br>
                  <br>
                  <span class="STYLE7"><IMG height=10 
            src="<%=path %>/images/jt2.gif" width=10> duanzp建议如下：[应用时，请将此行(包括此行)以下的红色字体部分删除！]</span>根据要求前台以完成！<br>
                  <br>
            注：尽量不要改变WEB页中图片的路径位置，图片位于images文件夹中。包括样式的定义也不要改变！
            一但改变，如果路经指定不完整，会出现在样式丢失，影响整体WEB的美观，对于我本人的再次修也比较复杂。对于一个网站来说，所有的图片、样式及其它修饰WEB页的部分，都应位于此网站的根目录下。不应该超出根以外的目录、文件夹或路径。<br>
            <br>
            ※
            所有图片的位置及样式路径的定义，是按照WEB设计通用习惯及后期维护方便等行式定义的。</span></TD>
          <TD>&nbsp;</TD>
          <TD valign="top"><br>
              <span class="STYLE7"> <br>
              <br>
             </span></TD>
        </TR>
      </TBODY>
    </TABLE></TD></TR>
</TBODY></TABLE>
<IFRAME name=top align=default src="<%=path %>/bottom.jsp" 
      frameBorder=0 width=100% scrolling=no 
      height=88>
<h1>&nbsp;</h1>
</IFRAME>


&nbsp;</td>
</table>
</td>




</BODY>
</HTML>

