<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "edu.ahu.hs.platAppoint.beans.*;"%>
    <%
    	String userName=(String)session.getAttribute("userinfo");
    if(userName!=null){
   	 }
   	 else{
   		//返回登录界面
   		response.sendRedirect("login.jsp?errType=3");
   	 }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"  src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript"  src="js/jquery.easing.min.js"></script>
<link rel="shortcut icon" href="./images/title.ico"/>
<title>健康研究院平台预约登录</title>
<script>
$(document).ready(function () {
	style = 'easeOutQuart';
	$('.photo').hover(
		function() {
			$(this).children('div:first').stop(false,true).animate({top:0},{duration:200, easing: style});
			$(this).children('div:last').stop(false,true).animate({bottom:0},{duration:200, easing: style});
		},
		function() {
			$(this).children('div:first').stop(false,true).animate({top:-50},{duration:200, easing: style});
			$(this).children('div:last').stop(false,true).animate({bottom:-50},{duration:200, easing: style});
		}
	);
});
</script>
</head>
<body>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<div class="contentbg">	
  <div class="content wrapper">
<h2 class="contenttitle">平台预约</h2>
		<div class="contianer centerblock">
		  <h2 class="breadcrumb"><span>您当前位置：</span><a href="http://ihs.ahu.edu.cn/">主页</a> > <a href="reservate.jsp">平台预约</a> > </h2>
		  <%if(userName!=null){ %>
		  
		  <div class="log_info"><span>欢迎 &nbsp;
		  		<font color=blue><%=userName%></font>
		  		&nbsp;登录</span><span style="float:right"><a href="LoginServlet?type=quit">安全退出</a></span>
		  		<span class="log_info_span"><a href="OrderServlet?type=getBoList&username=<%=userName %>">查询您的预约记录</a></span>
		  </div><%} %>
			<div class="logincss">
			<div class="logintop">
				<div class="photo">
				<div class="heading"><a href="DeviceServlet?type=Rpaging&pageNow=1"><span>教室会议室预约</span></a></div>
				<a href="DeviceServlet?type=Rpaging&pageNow=1"><img src="./images/classroom.jpg"/></a>
				<div class="caption"><a href="DeviceServlet?type=Rpaging&pageNow=1"><span>教室会议室预约</span></a></div>
				</div>
				<div class="photo">
				<div class="heading"><a href="DeviceServlet?type=Dpaging&pageNow=1"><span>仪器设备预约</span></a></div>
				<a href="DeviceServlet?type=Dpaging&pageNow=1"><img src="./images/device.jpg"/></a>
				<div class="caption"><a href="DeviceServlet?type=Dpaging&pageNow=1"><span>仪器设备预约</span></a></div>
				</div>
				<div class="photo">
				<div class="heading"><a href="computing.jsp"><span>高性能集群服务器</span></a></div>
				<a href="computing.jsp"><img src="./images/service.jpg"/></a>
				<div class="caption"><a href="computing.jsp"><span>高性能集群服务器介绍</span></a></div>
				</div>
			</div>
			<div class="loginbottom">欢迎您进入健康科学研究院预约平台系统，如需帮助请戳&nbsp;&nbsp;&nbsp;&nbsp;<a href="help.jsp">帮助文档</a>！&nbsp;&nbsp;&nbsp;&nbsp;如果需要取消预约，请您提前一天取消。</div>
			</div>
</div>
</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>