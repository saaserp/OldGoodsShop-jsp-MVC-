<i><%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
	<jsp:directive.page import="com.dkkj.ogs.db.UserGoodsDAO" /> <jsp:directive.page
		import="com.dkkj.ogs.model.GoodsModel" /> <jsp:directive.page
		import="com.dkkj.ogs.db.GoodsTypeDAO" /> <jsp:directive.page
		import="com.dkkj.ogs.db.SchoolDAO" /> <jsp:directive.page
		import="com.dkkj.ogs.model.GoodsTypeModel" /> <jsp:directive.page
		import="com.dkkj.ogs.model.GoodsStateModel" /> <jsp:directive.page
		import="com.dkkj.ogs.model.SchoolModel" /> <%
 	String path = request.getContextPath();
  	String basePath = request.getScheme() + "://"
  			+ request.getServerName() + ":" + request.getServerPort()
  			+ path + "/";
 %> <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
	<html>
<head>
<base href="<%=basePath%>">
   <link rel="stylesheet" type="text/css" href="./mygoods/pmjFileUpload.css" />

    <script language="JavaScript" type="text/javascript" src="./mygoods/js/pmjFileUpload.js"></script>
</style>
<script type="text/javascript">
 
 
                //图片上传预览    IE是用了滤镜。
        function previewImage(file)
        {
         
          var MAXWIDTH  = 260; 
          var MAXHEIGHT = 180;
          var div = document.getElementById('preview');
          if (file.files && file.files[0])
          {
              div.innerHTML ='<img id=imghead>';
              var img = document.getElementById('imghead');
              img.onload = function(){
                var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
                img.width  =  rect.width;
                img.height =  rect.height;
//              img.style.marginLeft = rect.left+'px';
                img.style.marginTop = rect.top+'px';
              }
              var reader = new FileReader();
              reader.onload = function(evt){img.src = evt.target.result;}
              reader.readAsDataURL(file.files[0]);
          }
          else //兼容IE
          {
            var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
            file.select();
            var src = document.selection.createRange().text;
            div.innerHTML = '<img id=imghead>';
            var img = document.getElementById('imghead');
            img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
            var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
            status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
            div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
          }
        }
        function clacImgZoomParam( maxWidth, maxHeight, width, height ){
            var param = {top:0, left:0, width:width, height:height};
            if( width>maxWidth || height>maxHeight )
            {
                rateWidth = width / maxWidth;
                rateHeight = height / maxHeight;
                 
                if( rateWidth > rateHeight )
                {
                    param.width =  maxWidth;
                    param.height = Math.round(height / rateWidth);
                }else
                {
                    param.width = Math.round(width / rateHeight);
                    param.height = maxHeight;
                }
            }
             
            param.left = Math.round((maxWidth - param.width) / 2);
            param.top = Math.round((maxHeight - param.height) / 2);
            return param;
        }
</script>
<title>My JSP 'myGoods.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	   <style>
	body {font-size:12px}
	.{font-family:arial;font-size:12px}
	h1 {cursor:hand;font-size:16px;margin-left:10px;line-height:10px}
	xmp {color:green;font-size:12px;margin:0px;font-family:courier;background-color:#e6e6fa;padding:2px}
	.hdr{
		background-color:lightgrey;
		margin-bottom:10px;
		padding-left:10px;
	}
    </style>
 <script language="JavaScript" type="text/javascript">
        var vault = null;
        function doOnLoad() {
     
            vault = new pmjFileUpload();
           
            vault.setImagePath("./mygoods/imgs/");
          
            vault.setServerHandlers("./mygoods/UploadHandler.jsp", "./mygoods/GetInfoHandler.jsp", "./mygoods/GetIdHandler.jsp");
           
            //vault.setFilesLimit(5);
            vault.setFileSize(5*1024*1024);
             
            vault.fileExt = "GIF,JPG,PNG";//文件格式
            
		    vault.init("vault1");
		   
	   }
    </script>
    

<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	String goods_id = "";
	String goods_name;
	String goods_price;
	String type_id;
	String goods_image;
	String goods_describe;
	String oldDeep;
	String goods_pre_price;
	String place_id;

	goods_name = request.getParameter("goods_name");
	if (goods_name != null && goods_name != "") {

		goods_price = request.getParameter("goods_price");
		type_id = request.getParameter("type_id");
		goods_image = request.getParameter("goods_image");

		goods_describe = request.getParameter("goods_describe");
		oldDeep = request.getParameter("oldDeep");
		goods_pre_price = request.getParameter("goods_pre_price");
		goods_price=request.getParameter("goods_price");
		place_id = request.getParameter("place_id");
		UserGoodsDAO ud = new UserGoodsDAO();
		GoodsModel gm = new GoodsModel(goods_id, goods_name,
				goods_price, type_id, goods_image, goods_describe,
				oldDeep, goods_pre_price, place_id);
		ud.addGoods(session.getAttribute("user_id").toString().trim(), gm, "5");
	}
%>
<%
	//获取所有自己的商品
	List<GoodsModel> goodsList = new UserGoodsDAO()
			.getAllMyGoods(session.getAttribute("user_id").toString().trim());
%>

</head>


<body onLoad="doOnLoad()">
	<div>
		<form action="" name="form1" method="post"
			 >
			<%
				GoodsTypeDAO goodsType = new GoodsTypeDAO();
				SchoolModel sh;
				List fatherTypeList = goodsType.getAllFatherTypes();
			%>
			<span>物品名称</span><input type="text" name="goods_name"><br>
			<span>新旧程度</span><input type="text" name="oldDeep"
				style="width: 55px; "><span>成新</span><br> <span>原
				价</span><input type="text" name="goods_pre_price"><br> <span>现价</span><input
				type="text" name="goods_price"><br> <span>物品类型</span> <select
				id="select1" name="type_id">
				<%
					for (int i = 0; i < fatherTypeList.size(); i++) {
				
				%>
				<option
					value="<%=((GoodsTypeModel) fatherTypeList.get(i)).getType_id()%>"><%=((GoodsTypeModel) fatherTypeList.get(i))
						.getType_name()%></option>
				<%
					}
				%>
			</select> <br> <span>描述</span><input type="text" name="goods_describe"><br>
			
				<div  >
				上传图片	
					 <div id="vault1" style="height: 191px; "  onclick="previewImage(vault1)">
					 </div>
    </div>
		
			<br> <span>地点</span><select name="place_id">

				<option value="1">武昌理工学院成功广场</option>
				<option value="3">武昌理工一食堂</option>
				<option value="4">武昌理工三食堂</option>
				<option value="5">武昌理工四食堂</option>
				<option value="6">武昌理工综合楼</option>
				<option value="7">武昌理工情人坡</option>

			</select> <input type="submit" value="添加到我的二手库">

		</form>
	</div>
	<div>
		<form name="form2">
			<table>
				<tr>

					<td>物品名称</td>
					<td>新旧程度</td>
					<td>原价</td>
					<td>现价</td>
					<td>物品类型</td>
					<td>描述</td>
					<td>图片</td>
					<td>地点</td>
					<td>状态</td>
					<td>操作</td>
				</tr>
				<%
					GoodsStateModel gs;
						System.out.print(goodsList.size()+"");
					for (int i = goodsList.size() - 1; i >= 0; i--) {
						GoodsModel g = goodsList.get(i);
						System.out.print("2");
				%>
				<tr>
					<td><%=g.getGoods_name()%></td>

					<td><%=g.getOldDeep()%>成新</td>
					<td><%=g.getGoods_pre_price()%>元</td>
					<td><%=g.getGoods_price()%>元</td>
					<td><%=goodsType.getTypeById(g.getType_id()).getType_name()%></td>
					<td><%=g.getGoods_describe()%></td>
					<td><img src="./upload/images/<%=g.getGoods_image()%>"
						style="height: 45px; width: 39px; "></td>
					<%
						sh = (SchoolModel) new SchoolDAO()
									.getModelById(g.getPlace_id());
					%>
					<td><%=sh.getSchool_name()%></td>
					<%
						gs = new UserGoodsDAO().getGoodsState(g.getGoods_id(), session
									.getAttribute("user_id").toString());
					%>
					<td onclick="getValue(<%=gs.getState()%> )"><%=gs.getState()%>
					</td>
					<td style="width: 128px; "><a
						href='AddGoods?cmd=up&userID=<%=session.getAttribute("user_id").toString()%>&goodsID=<%=g.getGoods_id()%>'>上架</a>|<a
						href='AddGoods?cmd=down&userID=<%=session.getAttribute("user_id").toString()%>&goodsID=<%=g.getGoods_id()%>'>下架</a>|<a
						href='AddGoods?cmd=delete&userID=<%=session.getAttribute("user_id").toString()%>&goodsID=<%=g.getGoods_id()%>'>删除</a></td>
				</tr>
				<%
					}
				%>
			</table>
		</form>
	</div>
</body>
	</html> </i>