<%@page contentType="text/html;charset=utf-8"%>
<%String path=request.getContextPath();
String placeName1="";
placeName1=session.getAttribute("placeName").toString();



 %>
<LINK href="<%=path %>/inc/css/css.css" rel=stylesheet>
<SCRIPT src="<%=path %>/inc/js/taobao.js"></SCRIPT>

<div style="text-align:center">
  <div id=page>
  
    <div class="chl-poster simple" id=header>
     
      <div id=site-nav>
       <LI class="palce" ><h><%=placeName1 %></h>[<a href=<%=path %>/place/place.jsp>切换地点</a>]</LI>
        <UL class=quick-menu>
      
          <LI class=home><A href="<%=path %>">蛋壳网首页</A> </LI>
          <LI class="mytaobao menu-item">
            <div class=menu> <A class=menu-hd href="#" target=_top rel=nofollow>我的二货<B></B></A>
              <div class=menu-bd>
                <div class=menu-bd-panel>
                  <div> <A href="<%=path %>" rel=nofollow>买到的二手货</A> <A href="#" rel=nofollow>卖出的二手货</A> </div>
                </div>
                <S class=r></S><S class=rt></S><S class=lt></S><S class=b></S><S class="b b2"></S><S class=rb></S><S class=lb></S> </div>
            </div>
          </LI>
          <LI class=cart><A href="<%=path %>/appointment/car.jsp" rel=nofollow><S></S>预约车 </A></LI>
          <LI class=favorite><A href="#" rel=nofollow>收藏夹</A></LI>
          <LI class="search menu-item">
            <div class=menu><SPAN class=menu-hd><S></S>搜索<B></B></SPAN>
              <div class=menu-bd>
                <div class=menu-bd-panel>
                  <FORM name=topSearch action=<%=path%>/search/search.jsp?ssid=s0>
                    <INPUT 
							  maxLength=60 name=q>
                    <BUTTON type=submit>搜 索</BUTTON>
                    <INPUT type=hidden 
							  value=newsearch name=shopf>
                  </FORM>
                </div>
                <S class=r></S><S class=rt></S><S class=lt></S><S class=b></S><S class="b b2"></S><S class=rb></S><S class=lb></S> </div>
            </div>
          </LI>
          <LI class="services menu-item last">
            <div class=menu> <A class=menu-hd href="#" target=_top>导航<B></B></A>
              <div class=menu-bd style="WIDTH: 210px; HEIGHT: 262px; _width: 202px">
                <div class=menu-bd-panel>
                  <DL>
                    <DT><A href="#">购物</A>
                    <DD> <A href="#">商城</A> <A href="#">电器城</A> <A href="#">嗨淘</A> <A href="#">全球购</A> <A href="#">跳蚤街</A> <A href="#">礼物</A> <A href="#">促销</A> <A href="#">机票</A> <A href="#">彩票</A> <A href="#">创意</A> </DD>
                  </DL>
                  <DL>
                    <DT><A href="#">门户</A>
                    <DD><A href="#">服饰</A> <A href="#">女人</A> <A href="#">美容</A> <A href="#">居家</A> <A href="#">男人</A> <A href="#">数码</A> <A href="#">亲子</A> <A href="#">时尚</A> <A href="#">试用</A> <A href="#">心得</A> <A href="#">帮派</A> <A href="#">画报</A> <A href="#">淘女郎</A> <A href="#">社区</A> <A href="#">宝贝传奇</A> </DD>
                  </DL>
                  <DL>
                    <DT><A href="#">淘江湖</A> &nbsp;<A href="#">手机淘宝</A> </DT>
                  </DL>
                  <DL>
                    <DT><A href="#">帮助中心</A>
                    <DD><A href="#">交易安全</A> <A href="#">维权中心</A> </DD>
                  </DL>
                  <DL class=last>
                    <DD><STRONG style="FONT-WEIGHT: bold"><p style="background: red"><A style="margin-left: 20" href="./member/login/Logout.jsp">退出登录</A></p></STRONG></DD>
                  </DL>
                </div>
                <S class=r></S><S class=rt></S><S class=lt></S><S class=b style="WIDTH: 169px"></S><S class="b b2" style="WIDTH: 169px"></S><S class=rb></S><S class=lb></S> </div>
            </div>
          </LI>
        </UL>
      </div>
    </div>
  </div>
  <SCRIPT type=text/javascript>
	TB.Header.init();
</SCRIPT> 
</div>
</html>