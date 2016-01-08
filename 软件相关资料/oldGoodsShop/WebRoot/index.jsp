<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@page contentType="text/html;charset=utf-8"%>
	<jsp:directive.page import="com.dkkj.ogs.db.UserGoodsDAO" />
	<jsp:directive.page import="com.dkkj.ogs.db.GoodsTypeDAO" />
	<jsp:directive.page import="com.dkkj.ogs.db.UserDAO" />
	<jsp:directive.page import="com.dkkj.ogs.db.DemandDAO" />
	<jsp:directive.page import="com.dkkj.ogs.model.GoodsModel" />
	<jsp:directive.page import="com.dkkj.ogs.model.UserModel" />
	<jsp:directive.page import="com.dkkj.ogs.model.GoodsTypeModel" />
	<jsp:directive.page import="com.dkkj.ogs.model.DemandModel" />

	<jsp:directive.page import="java.util.List" />
	<%
	response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		UserGoodsDAO ud = new UserGoodsDAO();
		GoodsTypeDAO types=new GoodsTypeDAO();
		List<GoodsModel> list = ud.queryTop9OnlineGoods();
		List<GoodsTypeModel> fatherTypeList = types.getAllFatherTypes();
		DemandDAO demanddao=new DemandDAO();
		List<DemandModel> demandList=demanddao.queryNew14();
		String placeName=request.getParameter("placeName");
		if(placeName==null){
		placeName="武昌理工学院 ";
		 
		}
		
		session.setAttribute("placeName", placeName);

	
	%>
	<head>
		<meta http-equiv="Content-Type" />
		<meta name="author" content"zhuyimiao" />
		<title>蛋壳科技-二手货交易系统</title>
	<link rel="stylesheet" type="text/css" href="index.css"/>
	</head>

	<body>
		<%@include file="/inc/top.jsp"%>
		<div class="header">

			<%@include file="/inc/head.jsp"%>

		</div>
		<div class="nav">
			<marquee behavior=alternate
				style="padding: 0px; white-space: nowrap;">富强、民主、文明、和谐、自由、平等、公正、法治、爱国、敬业、诚信、友善</marquee>
		</div>
		<div class="content">
			<div class="left">
				<div class="left_1">
					<div class="cat5-hd">
						<h3>
							<a class="model1-hd" href="goods/">物品分类</a>
						</h3>
						<div class="goodsTypesDIV">
							<%
						for(int i=0;i<fatherTypeList.size();i++){
								GoodsTypeModel goodType=new GoodsTypeModel();
								goodType=(GoodsTypeModel)fatherTypeList.get(i);
						 %>
							<div class="goodsType">
								<a href=""><%=goodType.getType_name() %> </a>
								<% 
								GoodsTypeDAO stypes=new GoodsTypeDAO();
								List<GoodsTypeModel>sonList=stypes.getAllSonTypes(goodType.getType_id());
								for(int j=0;j<sonList.size();j++){
									GoodsTypeModel sonType=new GoodsTypeModel();
									sonType=sonList.get(j);
								%>
								<div class="goodSonType">
									<a href="./search/search.jsp?q=<%=sonType.getType_name()%>"><%=sonType.getType_name()%></a>

								</div>
								<%
								}
								 %>

							</div>
							<%} %>

						</div>
					</div>
				</div>
			</div>
			<div class="center">
				<div class="center_1">
					<%
						int size = list.size();
						if (size > 9) {
							size = 9;
						}
					%>
					<div class="cat1-hd">
						<h3>
							<a class="model1-hd" href="goods/">二手市场</a>
						</h3>

					</div>
					<%
						for (int i = 0; i < size; i++) {
							GoodsModel goods = (GoodsModel) list.get(i);
					%>

					<div id="item" class="goodsItem">

						<div class="goodsItemPic">
							<img class="goodsItemPic" src=upload/images/<%=goods.getGoods_image()%> />
						</div>
						<div class="itemDsc">
							<div class="goodsName">
								<a href="goods/detail.jsp?goods_id=<%=goods.getGoods_id()%>"><%=goods.getGoods_name()%></a>
							</div>
							<div class="goodsOldDeep"><%=goods.getOldDeep()%>成新
							</div>
							<div class="goodsPrice">
								二手价:<%=goods.getGoods_price()%>元
							</div>
						</div>
					</div>
					<%
						}
					%>

				</div>
				<div class="center_void">

				</div>
				<div class="center_2">
					<div class="cat2-hd">
						<h3>
							<a class="model1-hd" href="goods/">二手需求</a>
						</h3>
					</div>
					<%
					int demandsize=demandList.size();
					if(demandsize>14)
					demandsize=14;
					UserDAO userdemanddao=new UserDAO();
					for(int k=0;k<demandList.size();k++) {
						DemandModel demandmodel=demandList.get(k);
					UserModel userdemand=userdemanddao.getModelById(demandmodel.getUser_id());
						
					%>
					<div class="demandItem">
						<div class="demandTtemPic">
							<img src="upload/images/<%=userdemand.getUser_image() %>"
								width="25" height="25" />
						</div>
						<div class="demandTtemWord">
							<a href="member/personInfo/info.jsp?userID=<%=demandmodel.getUser_id() %>"><%=demandmodel.getDemand_name() %></a> (<%=demandmodel.getDemand_price() %>元)

						</div>

					</div>
					<%} %>
				</div>


			</div>
			<div class="right">
				<div class="right_1">
					<div class="cat3-hd">
						<h3>
							<a class="model1-hd" href="goods/">用户中心</a>
						</h3>
					</div>
					<%@include file="member/login/itf_login.jsp"%>
				</div>
				<div class=right_void></div>
				<div class="right_2">
					<div class="cat4-hd">
						<h3>
							<a class="model1-hd" href="goods/">线下工具</a>
						</h3>
					</div>
					<div class="ecode">
						<img src="app/images/ecode.png" width="128" height="128" />
						<h4>
							<a href="app/android/oldGoodsShop.apk">下载手机客户端</a>
						</h4>
					</div>
				</div>
			</div>
		</div>

		<div class="recommended">
			<%@include file="recommended/recommended.jsp"%>
		</div>
		<div class="footer">
			<%@include file="inc/foot.jsp"%>
		</div>
	</body>