<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
        <title>bottom.jsp</title>
        <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    
    <link rel="stylesheet" type="text/css" href="<%=path %>/chat/css/bar.css">
    
    <script type="text/javascript">
        function fs(){
            if(forms.message.value ==""){
                alert("不能发送空消息");
                return false;
            }
            //把文本域message的值赋给mess文本域
            forms.mess.value = forms.message.value
            forms.message.value = ""; 
        }
    </script>
  </head>
  
  <body background="img/20120306.jpg">
    <!-- 显示信息的位置，通过在main.jsp文件中定义的left.jsp中的name属性，指定目标显示位置 -->
    <!-- 需要特别加上method=post，否则left.jsp接收到的中文会是乱码 -->
    <form action="<%=path %>/chat/left.jsp" method="post" target="left" name="forms">
             字体颜色:<select name="yanse">
                 <option value="black">黑色</option>
                 <option value="red" >红色</option>
                 <option value="green" >绿色</option>
             </select>
           字体大小：<select name="daxiao">
                 <option value="1">1</option>
                 <option value="5" >5</option>
                 <option value="8" >8</option>
             </select>
     <hr>
     <input type="text" name="message" style="width:200px;height: 29px;"/>
     <!--注意下面这行提交代码的几种方式-->
     <input type="submit" value="发送" style="width:80px;height: 35px;" onclick="return fs()">
     <!--思路：设置mess域，用来做一下中转，将message域的消息临时中转到mess域。以便清空message域中的内容-->
     <input type="hidden" name="mess">
     <!--下面这行代码。既会提交表单，也会通过调用函数进行验证，同时作两个动作。因为它的属性是(submit)提交此法不可取。
     <input type="submit" value="发送" style="width:80px;height:80px;" onclick="fs()">
     -->
     <!-- 这行代码不可以正确实现。当调用的函数返回false时，不会提交表单。因为它的属性是(button)按钮。
     <input type="button" value="发送" style="width:80px;height:80px;" onclick="fs()">
     -->
      <hr/>
      <input type="radio" name="touxiang" value="<%=path %>/chat/images/smiley_0.png"><img class="smiley" src="<%=path %>/chat/images/smiley_0.png"/>
      <input type="radio" name="touxiang" value="<%=path %>/chat/images/smiley_1.png"><img  class="smiley" src="<%=path %>/chat/images/smiley_1.png"/>
      <input type="radio" name="touxiang" value="<%=path %>/chat/images/smiley_1.png"><img   class="smiley" src="<%=path %>/chat/images/smiley_2.png"/>
      <input type="radio" name="touxiang" value="<%=path %>/chat/images/smiley_1.png"><img  class="smiley" src="<%=path %>/chat/images/smiley_3.png"/>
      <input type="radio" name="touxiang" value="<%=path %>/chat/images/smiley_1.png"><img  class="smiley"  src="<%=path %>/chat/images/smiley_4.png"/>
      <input type="radio" name="touxiang" value="<%=path %>/chat/images/smiley_1.png"><img   class="smiley" src="<%=path %>/chat/images/smiley_5.png"/>
      <input type="radio" name="touxiang" value="<%=path %>/chat/images/smiley_1.png"><img   class="smiley" src="<%=path %>/chat/images/smiley_6.png"/>
      <input type="radio" name="touxiang" value="<%=path %>/chat/images/smiley_1.png"><img   class="smiley" src="<%=path %>/chat/images/smiley_7.png"/>
      <input type="radio" name="touxiang" value="<%=path %>/chat/images/smiley_1.png"><img   class="smiley" src="<%=path %>/chat/images/smiley_8.png"/>
      <input type="radio" name="touxiang" value="<%=path %>/chat/images/smiley_1.png"><img   class="smiley" src="<%=path %>/chat/images/smiley_9.png"/>
      <input type="radio" name="touxiang" value="<%=path %>/chat/images/smiley_1.png"><img   class="smiley" src="<%=path %>/chat/images/smiley_10.png"/>
      <input type="radio" name="touxiang" value="<%=path %>/chat/images/smiley_1.png"><img   class="smiley" src="<%=path %>/chat/images/smiley_11.png"/>
          
     </form>
     <!-- 直接在表单的属性中加上动作，也可以正常实现
     <form action="" onsubmit="return fs()">
          <input type="text" name="message" style="width:200px;height:80px;"/>
        <input type="submit" value="发送" style="width:80px;height:80px;">
     </form>
      -->
       </body>
</html>