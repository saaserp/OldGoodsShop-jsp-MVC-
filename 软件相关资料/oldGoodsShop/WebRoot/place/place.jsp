<html>
<head>
	<%@page contentType="text/html;charset=utf-8"%>
<jsp:directive.page import="com.dkkj.ogs.db.ProvinceDAO" />
<jsp:directive.page import="com.dkkj.ogs.db.SchoolDAO" />
<jsp:directive.page import="com.dkkj.ogs.model.SchoolModel" />

<jsp:directive.page import="com.dkkj.ogs.model.ProvinceModel" />
<jsp:directive.page import="java.util.List" />
<title>蛋壳科技-二手货交易市场</title>
<meta name="baidu-tc-verification"
	content="48a64ae4994c6456b4d7effdf73557d4">
<meta name="keywords" content="分类信息,免费发布信息">
<meta name="description"
	content="58同城是中国第一中文分类信息网站，涵盖房产、车辆、招工、兼职、黄页等海量的生活分类信息，满足您不同的查询需求。同时也是您最好的免费发布信息网站。">
<style type="text/css">
body {
	text-align: left;
	font-size: 14px;
	background: #f9f9f9;
	font-family: Arial, "宋体", sans-serif;
	line-height: 200%;
}

body,ul,h1,h2,form,p,dl,dt,dd,p {
	margin: 0;
	padding: 0;
	list-style: none
}

img {
	border: none
}

a {
	color: #0000CC;
	margin: 0px 3px;
	text-decoration: none
}

a:hover {
	color: #e40000;
}

.c6 {
	color: #585858
}

#logo,#qianm,#postgg {
	background: url(http://pic2.58.com/ui6/www/wpic_2.gif?2011425) no-repeat
}

#header {
	background: #fff;
	width: 100%;
	border-bottom: 2px solid #ff7200
}

#headerinside {
	height: 240px;
	position: relative;
	width: 990px;
	margin: 0 auto;
	z-index: 10000
}

#logo {
	background-position: 9px 63px;
	position: absolute;
	left: 20px;
	top: 98px;
	width: 230px;
	padding-bottom: 22px;
	z-index: 999;
}

#postgg {
	background-position: 0 -54px;
	width: 443px;
	height: 105px;
	position: absolute;
	right: -50px;
	bottom: 0;
	line-height: 26px;
	padding: 105px 40px 0 60px;
	z-index: 666
}

#postgg a {
	font-size: 14px
}

#qianm {
	background-position: -474px 0;
	width: 70px;
	height: 50px;
	position: absolute;
	left: 185px;
	bottom: 10px;
	display: inline-block;
	z-index: 999
}

#flashimg {
	position: absolute;
	width: 300px;
	height: 240px;
	overflow: hidden;
	left: 232px;
	bottom: 0;
	z-index: 662
}

#flashimg img {
	position: absolute;
	left: 0px;
	bottom: 0;
	background: #fff
}

.gray {
	color: #565656;
}

#clist dd a.lr {
	color: #e40000;
}

.ml {
	margin-left: 50px
}

.c {
	clear: both
}

.co16 {
	clear: #0000cc;
	font-size: 16px
}

.index_bo {
	width: 990px;
	margin: 0 auto;
	text-align: center;
	overflow: hidden
}

.index_bo a {
	color: #000;
}

.index_bo a:hover {
	color: #e40000;
}

.index_bo a strong {
	font-weight: normal;
}

.topcity {
	width: 100%;
	margin-top: 1px;
}

.topcity .index_bo {
	padding: 28px 20px 20px;
	width: 970px;
	padding-right: 0
}

.topcity a {
	margin-right: 8px;
}

#citysear {
	display: none;
	line-height: 22px;
	font-size: 14px;
	float: right
}

#clist {
	width: 990px;
	margin: 0 auto;
	clear: both;
	overflow: hidden;
	zoom: 1;
	padding: 0 0 20px;
}

#clist dt {
	color: #545454;
	float: left;
	width: 50px;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	clear: both;
	font-weight: bold;
	margin: 0;
	padding: 3px 0 3px 4px;
}

#clist dd {
	width: 936px;
	float: left;
	margin-left: 0px;
	padding: 3px 0;
}

#clist dd a {
	font-size: 12px;
	margin-right: 12px;
	white-space: nowrap;
	text-decoration: none
}

.footer {
	width: 990px;
	margin: 0 auto;
	text-align: center;
	border-top: 1px solid #ccc;
	padding: 15px 0px;
	font-size: 12px;
	line-height: 180%;
	overflow: hidden
}

.footer a {
	font-size: 12px;
	color: #666;
	text-decoration: underline
}

a.entrance {
	background: url(http://pic2.58.com/ui6/www/bgenter.gif) no-repeat 0 0;
	width: 205px;
	margin: 0;
	font-size: 18px;
	line-height: 40px;
	text-align: center;
	color: #fff;
	display: block;
	margin: 0 auto 10px;
}

a.entrance:hover {
	background-position: 0 -42px;
	color: #fff;
}

#around {
	display: none
}

#clist dt.searchcity {
	width: 287px;
}

#inputdiv {
	border: 1px solid #cdcdcd;
	display: inline-block;
	width: 135px;
	*display: inline;
	*zoom: 1;
}

#clist dt.searchcity input {
	vertical-align: middle;
	height: 20px;
	line-height: 20px;
	padding: 2px 4px;
	border: 0;
	width: 127px
}

#searchspan {
	padding: 3px 14px 3px 0;
}

#popularspan {
	padding: 3px 14px 3px 34px;

}

#clist dd.popular {
	width: 681px;
	
		
}

.tooltip {
	border: 1px solid #ccc;
	background: #fff;
	margin: -3px 0 0 -1px;
	*margin: -3px 0 0 0;
}

.tooltip li {
	padding: 0 5px;
	overflow: hidden;
	zoom: 1
}

.tooltip li a {
	color: #545454;
	text-decoration: none
}

.tooltip li a b {
	color: #545454;
	font-weight: normal;
}

.tooltip li .tool_r {
	float: right;
	color: #090;
	font-size: 11px
}

.tooltip li.selected a b,.tooltip li.selected a,.tooltip li.selected .tool_r
	{
	color: #545454
}

.tooltip li.selected,.tag_options li.open_hover {
	background: #f2f2f2;
	color: #545454
}

#tooltipdiv2 {
	width: 135px;
	font-size: 12px;
	text-align: left;
}

#clist dt.quyu {
	color: #dcdcdc;
	width: 990px;
	line-height: 34px;
	height: 34px;
	padding-left: 2px;
	font-size: 16px;
	background: url(http://pic2.58.com/ui6/www/line_dot.gif) repeat-x left
		center;
	clear: none;
}

#clist dt.quyu span {
	background: #f9f9f9;
	padding-right: 4px;
}

#clist dd.quyu {
	height: 34px;
	width: 952px;
	background: url(http://pic2.58.com/ui6/www/line_dot.gif) repeat-x left
		center;
}
</style>
<script type="text/javascript" async="" src="./place_files/ga.js"></script>
<script type="text/javascript" src="./place_files/jquery-1.8.3.js"></script>
<script type="text/javascript">try { var ____json4fe = { catentry: { dispid: '', name: '', listname: 'city' }, locallist: { dispid: '0', name: '', listname: '' }, modules:'www'} } catch (e) { };</script>
<script type="text/javascript" src="./place_files/boot_www_version.js"></script>
<script type="text/javascript"
	src="./place_files/238b6adb9460b304f80e0418dfd57894_6051785045.js"></script>

<script type="text/javascript">document.domain = "58.com";win2 = new GetToolTipWindow('tooltipdiv2', '_cityinput', '', '', '', '', 2);win2.setSearchButton('_citybtn');</script>
</head>
<body>


	<div id="header">
		
	</div>
	<div class="topcity">
		<div class="index_bo dot">
			<div id="citysear">
				按省份选择城市：<select id="province" name="province"><option
						value="请选择">请选择</option>
					<option value="北京">北京</option>
					<option value="天津">天津</option>
					<option value="上海">上海</option>
					<option value="重庆">重庆</option>
					<option value="河北">河北</option>
					<option value="河南">河南</option>
					<option value="黑龙江">黑龙江</option>
					<option value="吉林">吉林</option>
					<option value="辽宁">辽宁</option>
					<option value="山东">山东</option>
					<option value="内蒙古">内蒙古</option>
					<option value="江苏">江苏</option>
					<option value="安徽">安徽</option>
					<option value="山西">山西</option>
					<option value="陕西">陕西</option>
					<option value="甘肃">甘肃</option>
					<option value="浙江">浙江</option>
					<option value="江西">江西</option>
					<option value="湖北">湖北</option>
					<option value="湖南">湖南</option>
					<option value="贵州">贵州</option>
					<option value="四川">四川</option>
					<option value="云南">云南</option>
					<option value="新疆">新疆</option>
					<option value="宁夏">宁夏</option>
					<option value="青海">青海</option>
					<option value="西藏">西藏</option>
					<option value="广西">广西</option>
					<option value="广东">广东</option>
					<option value="福建">福建</option>
					<option value="海南">海南</option>
					<option value="台湾">台湾</option>
					<option value="香港">香港</option>
					<option value="澳门">澳门</option>
					<option value="其他">其他</option></select> <select id="city" name="city"><option
						value="请选择">请选择</option></select> <input type="button" value="确定"
					onclick="btnOk();">
			</div>
			<a href="http://wh.58.com/" class="entrance"
				> <b>进入 武昌理工学院 站</b>
			</a> 
		</div>
		<dl id="clist">
			<dt class="quyu"></dt>
			<dt class="searchcity">
				<form
					
					id="changcityForm">
					<span id="searchspan">搜索交易地点</span>
					<div id="inputdiv">
						<input type="text" id="_cityinput" onkeyup="win2.GetContentData()"
							fdv="请输入城市拼音" value="" autocomplete="off">
					</div>
					<input type="submit" id="_citybtn" value="确定" style="display:none;">
					<span id="popularspan">热门</span>
				</form>

			</dt>
			<dd class="popular">
			<%
				List<SchoolModel> list=new ProvinceDAO().getAllSchoolByProvinceId("1");
					for(int i=0;i<10;i++){
			%>
			
				<a href="../index.jsp?placeName=<%=((SchoolModel)list.get(i)).getSchool_name()%>" ><%=((SchoolModel)list.get(i)).getSchool_name()%></a>
					
					<%
						}
					%>

			</dd>
			<dt class="quyu">
				<span>华东</span>
			</dt>
			<%
			ProvinceDAO pDAO=new ProvinceDAO();
		SchoolModel schoolModel=null;
		List<SchoolModel> schoolList;
		SchoolDAO schoolDAO=new SchoolDAO();
		List<ProvinceModel>listp=pDAO.getAllProvince();
		ProvinceModel pmodel;
		for(int i=0;i<listp.size();i++){
			pmodel=(ProvinceModel)listp.get(i);
		
			 %>
			<dt><%=pmodel.getProvince_name() %></dt>
			<%
			schoolList =pDAO.getAllSchoolByProvinceId(pmodel.getProvince_id());
			 %>
			  <dd>
			 <%
			 	for(int j=0;j<schoolList.size();j++){
			schoolModel=(SchoolModel)schoolList.get(j);
			  %>
			
	
			
		
			
			
				<a href="http://qd.58.com/" onclick=""><%=schoolModel.getSchool_name() %></a><a></a>
					<%
						}
					 %>
			</dd>
<%

	
		
		
		}
 %>
		</dl>
	</div>
	<div class="c"></div>
	<div class="footer">
		北京市公安局朝阳分局备案编号:1101050809 &nbsp; &nbsp; © 58.com <br>
		<a href="http://www.miibeian.gov.cn/">京ICP备10012705号-2</a><a
			href="http://about.58.com/">与58对话</a>
	</div>
	<script type="text/javascript">
function $(objname){return document.getElementById(objname);}
var oarray = $("flashimg").getElementsByTagName('img');
var imgnum = oarray.length-1;
function fout()
{
	var o = oarray[imgnum];
	if(o!=null)
	{
		if(o.style.opacity == null || o.style.opacity == ""){o.style.opacity =1;}
		var opacitynum = o.style.opacity;
		//alert(opacitynum);
		if(opacitynum < 0.11)
		{
			o.style.display='none';
			o.parentNode.insertBefore(o, oarray[0]);
			o.style.display = '';
			o.style.filter = '';
			o.style.opacity = 1;
			setTimeout("fout()",3000);
			return;
		}
		else
		{
			o.style.filter='alpha(opacity:'+(opacitynum*100-10)+')';
			o.style.opacity = opacitynum-0.1;
			setTimeout("fout()",50);
		}
	}
}
fout();
</script>
	<div style="display:none">
		<script type="text/javascript"> 
    setup();
    var _gaq = _gaq || [];var site_name = "58";_gaq.push(['_setAccount', 'UA-877409-4']);_gaq.push(['_setDomainName', '.58.com']);_gaq.push(['_trackPageview']); 
    (function(){ 
    var ga = document.createElement('script');ga.type = 'text/javascript';ga.async = true;ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(ga, s); 
    document.write("<script type=\"text/javascript\" src=\""+ ("https:" == document.location.protocol ? "https://" : "http://") + "track.58.com/referrer2.js\"><\/script>"); 
    })(); 
    </script>
		<script type="text/javascript" src="./place_files/referrer2.js"></script>
	</div>
	<script type="text/javascript" src="./place_files/surround.js"></script>
	<script>
    new surround();
</script>
	<script type="text/javascript" src="./place_files/nearCities-wh"></script>


	<div class="_bd_ext_tip" style="visibility: hidden;">
		<span class="_bd_ext_search">百度一下</span><span class="_bd_ext_open">打开链接</span><span
			class="_bd_ext_copy">复制</span>
	</div>
</body>
</html>