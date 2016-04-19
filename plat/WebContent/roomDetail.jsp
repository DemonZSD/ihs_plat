<%@page import="edu.ahu.hs.platAppoint.DBO.UserBeanDBO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	 import="java.util.*,edu.ahu.hs.platAppoint.beans.*,edu.ahu.hs.platAppoint.DBO.*"
    pageEncoding="UTF-8"%>
    <%
    RoomBean rb=(RoomBean)request.getAttribute("roomInfo");
    OrderDBO od=new OrderDBO();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"  src="js/jquery-1.9.1.min.js"></script>
<link rel="shortcut icon" href="./images/title.ico"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String userName=(String)session.getAttribute("userinfo");
%>
<title>健康研究院实验设备预约平台</title>
</head>
<body>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<div class="contentbg">	
  <div class="content wrapper">
	<h2 class="contenttitle">平台预约</h2>
		<div class="contianer centerblock">
		  <h2 class="breadcrumb"><span>您当前位置：</span><a href="http://ihs.ahu.edu.cn/">主页</a> > <a href="reservate.jsp">平台预约</a> > 
		  </h2>
		  
		  <%if(userName!=null){ 
		  		UserBeanDBO ubd=new UserBeanDBO();
		  %>
		  	
		  <div class="log_info"><span>欢迎 &nbsp;
		  		<font color=blue><%=userName%></font>
		  		&nbsp;登录</span><span style="float:right"><a href="LoginServlet?type=quit">安全退出</a></span>
		  		<span class="log_info_span"><a href="OrderServlet?type=getBoList&userid=<%=ubd.getUserInfo(userName).getUserId() %>">查询您的预约记录</a></span>
		  </div><%} %>
		  
		  
		  <div class="order">
		  <h4><%=rb.getRoomType() %></h4>
			<table align="center" cellpadding="0" cellspacing="0">
				  <tr>
				    <td colspan="4" class="tr_cel_css"><div style="float:left;">详细信息：</div><div style="float:right;margin-right:10px;">
				    <a href="reseState.jsp?roomId=<%=rb.getRoomId() %>">
				    	<img src="./images/acp_edit.gif" align="absmiddle" >预约</a></div></td>
				  </tr>
				  <tr>
				    <td class="colLable">房间号：</td><td width="30%" class="colcon"><%=rb.getRoomNo() %></td>
				    <td class="colLable">类别：</td><td width="30%" class="colcon"><%=rb.getRoomType() %></td>
				  </tr>
				  <tr>
				    <td class="colLable">功能：</td><td width="30%" class="colcon"><%=rb.getFunction() %></td>
				    <td class="colLable">容纳人数</td><td width="30%" class="colcon"><%=rb.getContain() %></td>
				  </tr>
				  <tr>
				    <td class="colLable">管理员：</td> <td width="30%" class="colcon"><%=rb.getAdminName() %></td>
				    <td class="colLable">联系电话：</td> <td width="30%" class="colcon"><%=rb.getAdminPhone() %></td>
				  </tr>
				  <tr>
				    <td class="colLable">教室地址：</td><td width="30%" class="colcon"><%=rb.getAddr() %></td>
				    <td class="colLable">费用：</td><td width="30%" class="colcon"><%=rb.getPrice() %>&nbsp;元/次</td>
				  </tr>
				  <tr>
				    <td class="colLable">开放时间：</td><td colspan="3" class="colcon">（周一到周五）    上午 09:00-11:30，下午  14:00-21:00</td>
				  </tr>
			</table>
		</div>
		<span class="return_list"><a href="roomRe.jsp">返回预约列表</a></span><br>
		</div>
</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>