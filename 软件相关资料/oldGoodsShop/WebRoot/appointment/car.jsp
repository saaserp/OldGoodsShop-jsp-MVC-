<%@page contentType="text/html;charset=utf-8"%>
<jsp:directive.page import="com.dkkj.ogs.model.AppointmentModel2" />
<jsp:directive.page import="com.dkkj.ogs.db.AppointmentDAO" />
<jsp:directive.page import="java.util.List" />
<jsp:directive.page import="com.dkkj.ogs.db.GoodsTypeDAO" />
<jsp:directive.page import="com.dkkj.ogs.db.UserDAO" />
<jsp:directive.page import="com.dkkj.ogs.db.DemandDAO" />
<jsp:directive.page import="com.dkkj.ogs.db.SchoolDAO" />
<jsp:directive.page import="com.dkkj.ogs.model.GoodsModel" />
<jsp:directive.page import="com.dkkj.ogs.model.UserModel" />
<jsp:directive.page import="com.dkkj.ogs.model.GoodsTypeModel" />
<jsp:directive.page import="com.dkkj.ogs.model.DemandModel" />
<jsp:directive.page import="com.dkkj.ogs.model.SchoolModel" />
<title>预约车</title>

<script>
var showState = function(num1,num2){ //使用变量初始化num1是host,num2是user

if(num1==0&&num2==0){
return "还没有加入预约";
}
if(num1==0&&num2==1){
return "等待主人回应";
}
if(num1==1&&num2==0){
return "主人已答应，但是被您取消";
}
if(num1==1&&num2==1){
return "有效预约";
}
return "未知状态";
}
</script>

<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7">

<%

if(session.getAttribute("user_id")==null||session.getAttribute("user_name")==null){
out.println("<script>alert('您还没有登录！');" +
				"this.location.replace('./../../member/login/login.jsp','_parent'); </script>");
			}else{
		 
				//out.println("<script>alert('操作失败'); </script>");
			}

List<AppointmentModel2> applist=null;
AppointmentModel2 app;
		try{
		 applist= new AppointmentDAO()
		.getAppointList(session.getAttribute("user_id").toString());
		app=new AppointmentModel2();
		}catch(Exception e)
		{
		out.println("<script>alert('您还没有登录！');" +
				"this.location.replace('./../../member/login/login.jsp','_parent'); </script>");
		}
		
 %>
<%@include file="/inc/top.jsp"%>
<link rel="stylesheet" type="text/css" href="css/css.css"/>
<link href="http://www.taobao.com/favicon.ico" rel="shortcut icon"
	type="image/x-icon">
<!-- S GLOBAL CSS -->
<link rel="stylesheet"
	href="http://g.tbcdn.cn/tb/global/3.3.35/global-min.css">
<!-- S GLOBAL CSS -->
<!-- S GLOBAL JS -->
<script src="./car_files/saved_resource(2)"></script>
<!-- E GLOBAL JS -->
<link rel="stylesheet"
	href="http://g.tbcdn.cn/tb/cart/4.57.0/3.0/cart/cart.css">
<link href="http://g.alicdn.com/tbc/tmsg/3.3.14/index-min.css"
	rel="stylesheet">
<link charset="utf-8"
	href="http://g.tbcdn.cn/tbc/search-suggest/1.1.7/new_suggest-min.css"
	rel="stylesheet">


<script charset="utf-8" async="" src="./car_files/saved_resource(4)"></script>
<script charset="utf-8" async="" src="./car_files/feature_v1.htm"></script>

<link rel="stylesheet"
	href="http://g.tbcdn.cn/tbc/webww/1.0.10/tstart-min.css">
<link rel="stylesheet"
	href="http://g.tbcdn.cn/tbc/webww/1.0.10/tdog-min.css">
</head>
<body  class="cart-taobao ">

<div id="page" class="cl">
	<!-- S GLOBAL HTML -->
	<!-- -->

	

	<!-- E GLOBAL HTML   -->
	
	<div id="content">
		<div class="cart-layout-TB">
			<div id="J_Cart" class="cart">
				<div id="J_FilterBar" class="cart-filter-bar">
					<ul id="J_CartSwitch" class="switch-cart">
						<li class="btn-switch-cart switch-cart-0 current">
							<a href="./car_files/car.html" class="J_MakePoint"
								data-point="tbcart.8.35"> <em>全部二手</em><span class="number">1</span><span
								class="pipe"></span> </a>
						</li>

					</ul>
					<div class="cart-sum">
						刘文才
					</div>
					<div class="wrap-line">
						<div class="floater" style="width: 123px; left: -1px;"></div>
					</div>
				</div>
				<div id="J_CartMain" class="cart-main">
					<div class="cart-table-th">
						<div class="wp">
							<div class="th th-chk">
								<div id="J_SelectAll1" class="select-all J_SelectAll">
									<div class="cart-checkbox">
										<input class="J_CheckBoxShop" id="J_SelectAllCbx1"
											type="checkbox" name="select-all" value="true">
										<label for="J_SelectAllCbx1">
											��ѡ���ﳵ��������Ʒ
										</label>
									</div>
									&nbsp;&nbsp;全部
								</div>
							</div>
							<div class="th th-item">
								<div class="td-inner">
									商品信息
								</div>
							</div>
							<div class="th th-info">
								<div class="td-inner">
									&nbsp;
								</div>
							</div>
							<div class="th th-price">
								<div class="td-inner">
									&nbsp;
								</div>
							</div>
							<div class="th th-amount">
								<div class="td-inner">
									&nbsp;
								</div>
							</div>
							<div class="th th-sum">
								<div class="td-inner">
									价格（元）
								</div>
							</div>
							<div class="th th-op">
								<div class="td-inner">
									操作
								</div>
							</div>
						</div>
					</div>
					
					<%
						for (int i = 0; i < applist.size(); i++) {
							app=applist.get(i);
						
		// SchoolModel shool;
		SchoolDAO shd=new SchoolDAO();
		//shool=(SchoolModel)shd.getModelById(app.getApt_place());
		
					%>
					<div id="J_OrderList" data-spm="1997196601">
						<div id="J_OrderHolder_s_1114511827_1" style="height: auto;">
							<div id="J_Order_s_1114511827_1"
								class="J_Order clearfix order-body  ">
								<div class="J_ItemHead shop clearfix">
									<div class="shop-info">

										&nbsp;&nbsp;
										<span class="shop-icon icon-B"></span>卖家
										<a
											href="http://store.taobao.com/shop/view_shop.htm?user_number_id=1114511827"
											target="_blank" title="��Ϊ�ٷ��콢��" class="J_MakePoint"
											data-point="tbcart.8.15"><%=app.getHost_name() %></a><span
											class="ww-light ww-small" data-items="s_1114511827_1"
											data-icon="small" data-nick="��Ϊ�ٷ��콢��"
											data-display="inline"><a
											href="http://amos.alicdn.com/getcid.aw?v=3&site=cntaobao&groupid=0&s=1&fromid=cntaobaosharp%D0%A1%B2%C5&uid=%BB%AA%CE%AA%B9%D9%B7%BD%C6%EC%BD%A2%B5%EA"
											target="_blank" class="ww-inline ww-online"
											title=""><span>��������</span>
										</a> </span>
									</div>
								</div>
								<div class="order-content">
									<div id="J_BundleList_s_1114511827_1" class="item-list">
										<div id="J_Bundle_s_1114511827_1_0"
											class="bundle  bundle-last ">
											<div class="bundle-main">
												<div id="J_ItemList_s_1114511827_1" class="item-list">
													<div id="J_ItemHolder_105646465929">
														<div id="J_Item_105646465929"
															class="J_ItemBody item-body clearfix item-act  first-item  last-item   ">
															<ul class="item-content clearfix">
																<li class="td td-chk">
																	<div class="td-inner">
																		<div class="cart-checkbox ">
																			<input class="J_CheckBoxItem"
																				id="J_CheckBox_105646465929" type="checkbox"
																				name="items[]" value="105646465929">
																			<label for="J_CheckBox_105646465929">
																				��ѡ��Ʒ
																			</label>
																		</div>
																	</div>
																</li>
																<li class="td td-item">
																	<div class="td-inner">
																		<div class="item-pic J_ItemPic img-loaded">
																			<a
																				href="http://detail.tmall.com/item.htm?id=41951403233"
																				target="_blank"
																				title="Huawei/��Ϊ H60-L11  ��ҫ6 �ƶ�4G�����ֻ�����"
																				class="J_MakePoint" data-point="tbcart.8.12"><img
																					src="../upload/images/<%=app.getGoods_image()%>";
	class="itempic J_ItemImg">
</a>
</div>
<div class="item-info">
	<div class="item-basic-info">
		<a href="/oldGoodsShop/goods/detail.jsp?goods_id=<%=app.getGoods_id() %>"
			target="_blank" title="Huawei/��Ϊ H60-L11  ��ҫ6 �ƶ�4G�����ֻ�����"
			class="item-title J_MakePoint" data-point="tbcart.8.11"><%=app.getGoods_name() %></a>
	</div>
	<div class="item-other-info">
		<div class="promo-logos"></div>
		<div class="item-icon-list clearfix">
			<div class="item-icons J_ItemIcons  item-icons-fixed ">
				<a
					href="http://www.tmall.com/market/mall/qttk.php?spm=3.7095809.2000g001.2.RuHN6j%3E"
					target="_blank" class="item-icon item-icon-0 J_MakePoint"
					data-point="tbcart.8.26" title="����߱��Ϸ�����ҳ�ŵ7���˻�"><img
					src="./car_files/T1Vyl6FCBlXXaSQP_X-16-16.png" alt="�����˻�">
				</a><a href="." target="_blank"
					class="item-icon item-icon-2 J_MakePoint" data-point="tbcart.8.26"
					title="����߱��Ϸ�����ҳ�ŵ��һ����"><img
					src="./car_files/T1N5kmFSpbXXaSQP_X-16-16.png" alt="��һ����">
				</a>
			</div>
		</div>
	</div>
</div>
</div>
</li>
<li class="td td-info">
	<div class="item-props item-props-can">
		<p class="sku-line" tabindex="0">
		
			预约时间:<%=app.getApt_timeS() %>
		</p>
		<p class="sku-line" tabindex="0">
			预约地点： 
		</p>
		
		<%   if(app.getIsHostOk().equals("0")&&app.getIsCustomerOk().equals("0")) {%>
		<p class="sku-line" tabindex="0" >
		订单状态：还没有加入预约
		</p>   
		<%}else if(app.getIsHostOk().equals("0")&&app.getIsCustomerOk().equals("1")) {%>
		<p class="sku-line" tabindex="0" >
		订单状态：等待主人回应
		</p>   
		<%} else if(app.getIsHostOk().equals("1")&&app.getIsCustomerOk().equals("0")){%>
		<p class="sku-line" tabindex="0" >
		订单状态：您取消了预约
		</p>   
		<%} else if(app.getIsHostOk().equals("1")&&app.getIsCustomerOk().equals("1")){%>
		<p class="sku-line" tabindex="0" >
		订单状态：预约进行中
		</p>   
		
			<%} %>

		<span tabindex="0" class="btn-edit-sku J_BtnEditSKU J_MakePoint"
			data-point="tbcart.8.10">删除</span>
	</div>
</li>
<li class="td td-price"></li>
<li class="td td-amount"></li>
<li class="td td-sum">
	<div class="td-inner">
		<em tabindex="0" class="J_ItemSum number"><%=app.getApt_price() %></em>
		<div class="J_ItemLottery"></div>
	</div>
</li>
<li class="td td-op">
	<div class="td-inner">
		<a title="ʹ��ԤԼ��Ч" class="btn-fav J_Fav J_MakePoint"
			data-point-url="http://www.atpanel.com/jsclick?cache=14256212591811&amp;mycart=collect"
			href="../CustomerConfirm?aptID=<%=app.getApt_id() %>&arg=1">提交预约</a>
			<a href='../CustomerConfirm?aptID=<%=app.getApt_id() %>&arg=0'>取消预约</a>
			<a title="删除" href='../DeleteAppointment?aptID=<%=app.getApt_id() %>'
			data-point-url="http://www.atpanel.com/jsclick?cache=14256212591812&amp;cartlist=delete"
			class="J_Del J_MakePoint">删除</a>
	</div>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<%
				}
				%>
</div>


<div id="J_FloatBarHolder" class="float-bar-holder"></div>
<div id="J_FloatBar" class="float-bar clearfix fixed-bottom"
	style="position: fixed;">
	<div id="J_SelectedItems" class="group-wrapper group-popup hidden"
		style="display: none;">
		<div id="J_SelectedItemsList" class="group-content"></div>
		<span class="arrow" style="left: 673.15625px;"></span>
	</div>
	<div class="float-bar-wrapper">
		<div id="J_SelectAll2" class="select-all J_SelectAll">
			<div class="cart-checkbox">
				<input class="J_CheckBoxShop" id="J_SelectAllCbx2" type="checkbox"
					name="select-all" value="true"> <label
					for="J_SelectAllCbx2"> ��ѡ���ﳵ��������Ʒ </label>
			</div>
			&nbsp;全�?
		</div>
		<div class="operations">
			<a href="="#">删除</a>
		</div>
		<div class="float-bar-right">
			<div id="J_CheckCOD" class="check-cod" style="display: none;">
				<span class="icon-cod"></span><span class="s-checkbox J_CheckCOD"></span>__
			</div>
			<div class="pipe"></div>
			<div class="btn-area">
				<a href="javascript:void(0)" id="J_Go"
					class="submit-btn submit-btn-disabled" aria-label=""><span>提交</span><b></b>
				</a>
			</div>
		</div>
	</div>
</div>
</div>
<input id="_tb_token_" type="hidden" value="Y7gLwi75kAnz85"
	name="_tb_token_">
<input type="hidden" id="isMemberCart" value="false">
<input type="hidden" id="J_BuyerLevel" value="newBuyer">
</div>
</div>
<div id="server-num">carts010181136146.s.et2</div>
</div>
<div id="J_UmppUserContainer"
	style="height: 1px; width: 1px; overflow: hidden; position: absolute; bottom: 1px">
	<embed src="http://g.alicdn.com/tbc/umpp/1.4.35/trinity.swf" width="1"
		height="1" id="ks-flash-89" name="umpp-trinity-name"
		type="application/x-shockwave-flash" allowscriptaccess="always"
		flashvars="jsentry=_umpp_trinity_&amp;swfid=UM_sharp%25E5%25B0%258F%25E6%2589%258D1425621259085&amp;group=sharp%25E5%25B0%258F%25E6%2589%258D">
</div>
<iframe src="./car_files/ajaxconn2.html" id="J_Um_Iframe"
	frameborder="0" scrolling="no" width="1" height="1"
	style="position: absolute;"></iframe>
<div></div>
<div id="tstart">
	<div class="tstart-toolbar">
		<div class="tstart-bd">
			<div class="tstart-areas"></div>
		</div>
	</div>
</div>
<div style="height: 0; width: 0; overflow: hidden"></div>
</body>
</html>