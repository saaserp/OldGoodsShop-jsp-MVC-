<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@page contentType="text/html;charset=utf-8"%>
<link rel="Shortcut Icon" href="http://pic2.58.com/images/favicon.ico" type="image/x-icon" />
<script type="text/javascript" src="http://j1.58cdn.com.cn/js/5_1/jquery1.3.2_v0.js"></script>
<script> document.domain = "58.com";</script>
<script type="text/javascript">    try { var ____json4fe = { catentry: { dispid: '', name: '', listname: '39' }, locallist: { dispid: '1', name: '北京', listname: 'bj' }, modules: 'my',userid:'55561127',linkman:'此****注册'} } catch (e) { };</script>
<script type="text/javascript" src="http://j1.58cdn.com.cn/js/5_1/comm_js/boot_mypage_version_v20150202183947.js"></script>
<link href="http://c.58cdn.com.cn/ui6/my/css/user_v0.css" rel="stylesheet" type="text/css" />
	
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
	UserDAO ud=new UserDAO();
	String userID=request.getParameter("userID");
	if(userID==null)
	{
		userID=session.getAttribute("user_id").toString();
	}
	UserModel um=ud.getModelById(userID);
	DemandDAO dd=new DemandDAO();
	List<DemandModel> dmlist=dd.queryMyDemandNew5(userID);
	

	
	 %>
<title><%=um.getUser_name() %>的个人资料</title>
<script>
    function stateChangeIE(_frame) {
        if (_frame.readyState == "complete") { ResizeFrame(_frame); }
    }
    function ResizeFrame(iframe) {
        try {
            var height = Math.max(iframe.contentWindow.document.body.scrollHeight, iframe.contentWindow.document.documentElement.scrollHeight);
            iframe.style.height = height + "px";
        }
        catch (ex) { }
    }
</script>
<style type="text/css">
.onebt {
	font-family: "宋体";
	font-size: xx-large;
	font-style: normal;
}
</style></head>
<%@include file="/inc/top.jsp"%>
<body>
	
<script>boot.require('business.topbar',function(Frame,topbar){topbar.init()})</script>

	<!-- container start -->
	<div id="container" class="win1000 clearfix">
		<div id="header" class="win1000">个人资料
			
			
		</div>
		<div class="wraper-border"></div>
		
		<div>  <!-- wraper start -->
			<!--top_info start-->	
			<div class="top_info clearfix" style="padding-bottom:20px;">
				<div class="infol">
					<p><span class="tx"><img src="<%=path %>/upload/images/<%=um.getUser_image() %>" /></span></p>
				</div>
				<div class="xqxinfo">
					<table>
						<tbody>
							<tr>
								<th>用&nbsp;&nbsp;户&nbsp;名</th>
								<td>
									<p class="yhzh_p">
										<strong><%=um.getUser_name() %></strong>
									</p>
								</td>
							</tr>
                            <tr>
								<th>注册时间</th>
								<td><%=um.getInrol_time() %></td>
							</tr>
							<tr>
								<th>信用等级</th>
								<td><%=um.getUser_credibility() %></td>
							</tr>
							<tr>
								<th>手机号码</th>
								<% 
								if(um.getUser_phone()==""){
								%>
							 
							
								<td><%=um.getUser_phone().substring(0,3) %>***<%=um.getUser_phone().substring(7) %></td>
								<% }
								else
								{
								%>
								<td>用户没有通过认证</td>
								<% }
								
								%>
							</tr>
							<tr>
								<th>所在地</th>
								<td><%=um.getUser_address()%></td>
							</tr>
							<tr>
								<th class="t">认证信息</th>
								<td class="t">
									<p class="rz">
																				
									    <span><b>手机已认证</b><i class="maileyz" title="手机已认证"></i></span> 
										
										<span><b>实名已认证</b><i class="nameyz" title="实名已认证"></i></span> 
										 
									</p>
																		
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!--top_info end-->		
			
						
			
			<div class="fabu clearfix" >
				<h2 class="balance-h2">我发布的需求</h2>
				<%DemandModel dm; %>
				<%for(int i=0;i<dmlist.size();i++) {
				dm=dmlist.get(i);
				%>
								 <ul class="ggifno">
											  													   	<li>
				        		<span><%=dm.getAdd_time() %></span>
				        		<a href="http://wh.58.com/shouji/16502378896010x.shtml" target="_blank"><%=dm.getDemand_name() %></a> 
				        		(<a class="lb" href='http://wh.58.com/shouji' target='_blank'>
				        							        			<%=dm.getDemand_describe() %>
				        							        		</a>)
				        	</li>
				        						</ul> 
								<%} %>
								</div>
			
		
		</div>  
		<!-- wraper end -->
		<div class="wraper-border"></div>
	</div>
	<!-- container end -->
	<div id="footer">
        &copy; 二手货交易市场&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <a target="_blank" href="http://172.16.5.10:9999/oldGoodsShop/">联系客服</a>
    </div>
    
    <div style="display:none">
		<script type="text/javascript">
		    var _gaq = _gaq || []; var site_name = "58";
		    _gaq.push(['pageTracker._setAccount', 'UA-877409-4']);
		    _gaq.push(['pageTracker._setDomainName', '.58.com']);
		    _gaq.push(['pageTracker._setAllowLinker', true]);
		    _gaq.push(['pageTracker._addOrganic', 'sogou', 'query']);
		    _gaq.push(['pageTracker._addOrganic', 'baidu', 'word']);
		    _gaq.push(['pageTracker._addOrganic', 'soso', 'w']);
		    _gaq.push(['pageTracker._addOrganic', 'youdao', 'q']);
		    _gaq.push(['pageTracker._trackPageview','/homepage/']);
		    fe.init(function() {
		        fe.util.js.append(('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js');
		       fe.util.js.append('http://track.58.com/referrer2.js');
		    }); 
		</script>
	</div>
</body>
</html>
