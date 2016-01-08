<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath()+"/member/admin";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>错误！</TITLE>
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
.STYLE1 {
	color: #FF0000;
	font-size: 12px;
}
.STYLE7 {COLOR: #003366; font-size: 12px;}
-->
</style>
<script type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
</HEAD>
<BODY bgColor=#ffffff onLoad="MM_preloadImages('<%=path %>/images/fh_2.jpg','<%=path %>/images/ok_2.jpg')">
<TABLE height=470 cellSpacing=0 cellPadding=0 width=580 align=center border=0>
  <TBODY>
    <TR>
      <TD colSpan=3 height=9></TD>
    </TR>
    <TR>
      <TD vAlign=top width=8 background="<%=path %>/images/dhpddw.gif" rowSpan=2><!--DWLayoutEmptyCell-->&nbsp;</TD>
      <TD width=743 background="<%=path %>/images/h-1.gif" height=9></TD>
      <TD width=9 height=9><IMG height=9 src="<%=path %>/images/jiao.gif" width=9></TD>
    </TR>
    <TR>
      <TD vAlign=top align=right width=743 height=452><TABLE cellSpacing=0 cellPadding=0 width=556 border=0>
        <!--DWLayoutTable-->
        <TBODY>
          <TR>
            <TD vAlign=bottom width=548 height=27><IMG height=10 
            src="<%=path %>/images/jt2.gif" width=10> <SPAN class=lbt>周报编号信息：</SPAN></TD>
            <TD width=8 rowSpan=3>&nbsp;</TD>
          </TR>
          <TR>
            <TD background="<%=path %>/images/ht.gif" height=22></TD>
          </TR>
          <TR>
            <TD class=unnamed1 vAlign=top 
            height=9><TABLE width="99%" 
        border=0 cellPadding=4 cellSpacing=1 bgColor=#0867b3>
              <!--DWLayoutTable-->
              <TBODY>
                <TR bgColor=#ffffff height=20>
                  <TD width=36 height="20" align="center"  noWrap class="STYLE7">选项</TD>
                  <TD height="20" align="center"  noWrap class="STYLE7">周报编号</TD>
                  </TR>
                <TR bgColor=#ffffff height=2>
                  <TD height="9" align="center" valign="top" noWrap><input name="radiobutton" type="radio" class="text2" value="radiobutton"></TD>
                  <TD valign="middle" noWrap class="foot3">例1：样式黑色</TD>
                  </TR>
                <TR bgColor=#ffffff height=2>
                  <TD height="10" align="center" valign="top" noWrap><input name="radiobutton" type="radio" class="text2" value="radiobutton"></TD>
                  <TD valign="middle" noWrap class="foot3"><span class="STYLE1">例2：样式红色</span></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
          <TR>
            <TD height=27 colspan="2" vAlign=top><br>
              <table width="99%" 
        border=0 cellpadding=4 cellspacing=1 bgcolor=#0867b3>
                <!--DWLayoutTable-->
                <tbody>
                  <tr bgcolor=#ffffff height=20>
                    <td height="20" align="center" valign="middle"  nowrap ><span class="STYLE7">共X页</span>&nbsp;<a href="#" class="dh2">首页</a>&nbsp;<a href="#" class="dh2">上一页</a>&nbsp;<a href="#" class="dh2">下一页</a>&nbsp;<a href="#" class="dh2">尾页</a>&nbsp;<span class="STYLE7">跳转到</span>
                      <select name="select" class="text2" style="WIDTH: 40px">
                        <option value="0">1</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                                            </select></td>
                  </tr>
                </tbody>
              </table></TD>
          </TR>
          <TR>
            <TD height=25 vAlign=top><span class="STYLE1"><br>
            </span></TD>
            <TD></TD>
          </TR>
          <TR>
            <TD height=20 align="center"><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image8','','<%=path %>/images/ok_2.jpg',1)"><img src="<%=path %>/images/ok_1.jpg" name="Image8" width="60" height="22" border="0"></a> <a href="<%=path %>/dailyControl/2_3_1.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image9','','<%=path %>/images/fh_2.jpg',1)"><img src="<%=path %>/images/fh_1.jpg" name="Image9" width="60" height="22" border="0"></a></TD>
            <TD></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
      <TD width=9 background="<%=path %>/images/s-1.gif"></TD>
    </TR>
  </TBODY>
</TABLE>
<IFRAME name=top align=default src="<%=path %>/bottom.jsp" 
      frameBorder=0 width=100% scrolling=no 
      height=88>
<h1>&nbsp;</h1>
</IFRAME>
</BODY></HTML>

