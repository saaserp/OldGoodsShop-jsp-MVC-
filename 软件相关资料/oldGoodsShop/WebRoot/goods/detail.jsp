<html>
 	<head>
	<%@page contentType="text/html;charset=utf-8"%>
	<jsp:directive.page import="com.dkkj.ogs.db.UserGoodsDAO" />
	<jsp:directive.page import="com.dkkj.ogs.db.CredibiltyDAO" />
	<jsp:directive.page import="com.dkkj.ogs.db.GoodsDAO" />
	<jsp:directive.page import="com.dkkj.ogs.db.Buyer" />
	<jsp:directive.page import="com.dkkj.ogs.model.UserModel" />
	<jsp:directive.page import="com.dkkj.ogs.model.GoodsModel" />
	<jsp:directive.page import="com.dkkj.ogs.model.CredibiltyModel" />
	<title>物品细节</title>
	</head>
    <link rel="stylesheet" type="text/css" href="detail.css"/>
	<%
	String path1 = request.getContextPath();
		String user_id=(String )session.getAttribute("user_id");
		String goods_id = request.getParameter("goods_id");
		GoodsDAO goodDao = new GoodsDAO();
		GoodsModel goods = (GoodsModel) goodDao.getModelById(goods_id);
		UserGoodsDAO ugd = new UserGoodsDAO();
		UserModel user = null;
		user = ugd.getUserModelByGoodsId(goods_id);
		CredibiltyModel cm=null;
		CredibiltyDAO cdao=new CredibiltyDAO();
		cm=(CredibiltyModel)cdao.getModelById(user.getUser_credibility());
		
	%>









<link type="text/css" rel="Stylesheet" href="/css/bar.css" />
<style>
/* xPopup CSS start */
html{background:url(about:blank) fixed;}
#xPopup .xPopupTitle,#xPopup .xPopupTitle .xPopupBtnClose{background:url(<%=path1 %>/chat/xPopup.png) #6d97d1 repeat-x;}
#xPopup {display:block;background:#ccc;color:#000;z-index:9999;zoom:1;}
#xPopup #xPopupBg{position:absolute;left:-6px;top:-6px;padding:6px 0 0 6px;width:100%;height:100%;filter:alpha(opacity=0);-moz-opacity:0;opacity:0;background:red;border:0px red solid;}
#xPopup .xPopupContainer{position:absolute;width:100%;height:100%;bottom:4px;right:4px;background:#fff;border:1px #6b97c1 solid;}
#xPopup .xPopupTitle{position:relative;height:28px;line-height:28px;font-size:14px;overflow:hidden;color:#fff;font-weight:bold;font-family:Tahoma;}
#xPopup .xPopupTitle .xPopupBtnClose{position:absolute;right:6px;top:-1px;width:34px;height:19px;display:block;overflow:hidden;background-position:0 -29px;outline:0;}
#xPopup .xPopupTitle .xPopupBtnClose:hover{background-position:-37px -29px;}
#xPopup #xPopupTitle{display:block;cursor:default;padding-left:10px;}
#xPopup .xFlash{background:#fff;}
#xPopup .xPopupContent{padding:0px;overflow:auto;}
#xPopupMask{position:fixed;top:0;right:0;display:block;width:100%;height:100%;z-index:9666;zoom:1;}
#xPopupMaskIframe{filter:alpha(opacity=50);-moz-opacity:0.5;opacity:0.5;position:absolute;top:0;right:0;width:100%;height:100%;z-index:9777;}
#xPopupBlank{background:#fff;filter:alpha(opacity=50);-moz-opacity:0.5;opacity:0.5;width:100%;height:100%;position:absolute;top:0;right:0;z-index:9888;}
#xPopupMask{_position:absolute;_top:expression(documentElement.scrollTop);_left:expression(documentElement.scrollLeft);_height:expression(documentElement.clientHeight);_width:expression(documentElement.clientWidth);}
#xPopupBlank{_height:expression(documentElement.clientHeight);}
#xPopup{z-index:9999;}
#xPopupMask{z-index:9666;}
#xPopupMaskIframe{z-index:9777;}
#xPopupMask{z-index:9888;}
/* xPopup CSS end */

</style>


<script type="text/javascript" src="../chat/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../chat/js/xPopup.o.js"></script>
<script type="text/javascript">

function x1(){
	$.xPopup.init({title: 'xPopup TEST', left: 50, top: 50, mask: false, drag: true, mask: false, html: 'test'});
};

function x2(){
	$.xPopup.init({title: '不可关闭的窗口', left: 50, top: 50, mask: false, drag: true, html: '<button onclick="$.xPopup.xHide()">这里可以关闭哟~</button>', callback: function(){alert('不让关闭');return false;}});
};

function x3(){
	$.xPopup.init({title: 'Google', left: '50%', top: '50%', width: '750', height: '500', drag: true, mask: false, btnClose: true, html: 'http://www.google.tk', url: 'http://www.google.tk'});
};

function x4(){
	$.xPopup.init({title: 'Baidu', left: '50%', top: '50%', width: '750', height: '500', drag: false, mask: false, url: 'http://www.baidu.com'});
};

function x5(){
	$.xPopup.init({title: '真的不能关闭', left: 50, top: 50, mask: false, drag: true, html: '就是不让关，刷新吧~', callback: function(){return false;}});
};

function x5(){
	$.xPopup.init({title: '不显示关闭按钮', left: 50, top: 50, mask: false, drag: true, html: '不显示关闭按钮', btnClose: false});
};

function x6(){
	$.xPopup.init({title: '显示其它容器里的内容', left: '50%', top: '50%', width: '750', height: '500', drag: true, mask: false, html: $('#TESTHTML').html(), btnClose: true});
};

function x7(){
	$.xPopup.init({title: '标题', left: '50%', top: '50%', width: '512', height: '430', drag: true, mask: false, url: '../chat/index.jsp'});
};

</script>















<script type="text/javascript">
function addAppointment(){
	var th=document.form1;
	
	
	th.action="<%=request.getContextPath()%>/servlet/AddtoAppointment";
	
	th.submit();
	
	
}
function mess(){
	window.ShowModalDialog("../chat/index.jsp",null,'dialogWidth:'+100+'px;dialogHeight:'+100+'px,help:no;undorned:no;resizable:no;status:no')
}
</script>
	
	
	<body>
	

		
	<form action="" method="post" name="form1">
	<%@include file="/inc/top.jsp"%>
		<div>
			<div class="goodsPicDiv1">
				<div class="goodsPicDiv2">
					<img src="../upload/images/<%=goods.getGoods_image()%>" style="width: 418px; height: 418px;">
				</div>
				<div >
					图片列表
				</div>
			</div>
			<div class="goodsDetail">
				<div class="goodsName">
					名称：<%=goods.getGoods_name()%></div>
				<div class="goodsDescribe">
					描述：<%=goods.getGoods_describe()%></div>
				<div class="priceDiv">
					原价：<%=goods.getGoods_pre_price()%>元
				</div>
				<div class="priceDiv">
					二手价：<%=goods.getGoods_price()%>元
				</div>
				<div>新旧程度:<%=goods.getOldDeep() %>成新</div>
				<div class="goodsGoodsAppointment" style="height: 237px; ">
				
				
				<div>预约时间:<input type="datetime-local" name="apt_timeS"  /></div>
				 
				<div>
				<span>地点</span><select name="apt_place">

				<option value="1">武昌理工学院成功广场</option>
				<option value="3">武昌理工一食堂</option>
				<option value="4">武昌理工三食堂</option>
				<option value="5">武昌理工四食堂</option>
				<option value="6">武昌理工综合楼</option>
				<option value="7">武昌理工情人坡</option>
				</div>
				<div>附加信息:
				<div><textarea name="exMsg" cols ="50" rows = "3" style="width: 484px; height: 73px"></textarea></div>
				</div>
				<div style="height: 69px; width: 239px;  float:right;" >
				<a style="margin-bottom: 10px;" class="ma" type="submit" href='../AddtoAppointment?buyer_id=<%=session.getAttribute("user_id").toString() %>&goods_id=<%=goods.getGoods_id() %>&apt_place=apt_place&apt_timeS=apt_timeS.toString()&hostId=<%=user.getUser_id() %>&apt_price=<%=goods.getGoods_price() %>&exMsg=exMsg' target="_blank"><span>确定预约</span>
				</a>
				</div>
					</div >
				
				


			</div>
		
		</div>
		<div class="temp"></div>
		<div class="host-hd ">卖家资料</div>
		<div class="userDiv">
			
			<div>主          人：<%=user.getUser_name()%></div>
			<div>信誉等级：<image src="../member/images/<%=cm.getCredibitly_image() %>"></image></div>
		
			<div>信誉称号：<%=cm.getCredibitly_name() %></div>
			<div>手          机: <%=user.getUser_phone() %></div>
			<div class="contact_me"><a href="javascript:x7()" >与我联系:</a><image src="../member/images/logo.png" ></image></div>
		</div>
		<input type="text"  style="display:none;" name="goods_id" value='<%=goods_id %>'/>
		
		<input type="text"  style="display:none;" name="buyer_id" value='<%=user_id %>'/>
		
	
		
		<input type="text"  style="display:none;" name="hostId" value='<%=user.getUser_id() %>'/>
		<input type="text"  style="display:none;" name="apt_price" value='<%=goods.getGoods_price() %>'/>
		
		</form>
	</body>

</html>