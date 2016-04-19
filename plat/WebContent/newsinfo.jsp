<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.ahu.hs.platAppoint.beans.*,java.util.ArrayList"%>
    <%
    	NewsBean newsbean = (NewsBean)request.getAttribute("newsinfo");
    	String title = newsbean.getTitle();
    	String content = newsbean.getContent();
    	String owner = newsbean.getOwner();
    	String time = newsbean.getTime();
    	
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"  src="js/jquery-1.9.1.min.js"></script>
<link rel="shortcut icon" href="./images/title.ico"/>
<title>预约系统通知</title>
</head>
<body>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<div class="contentbg">	
  <div class="content wrapper">
<h2 class="contenttitle">平台预约</h2>
		<div class="contianer centerblock">
		  <h2 class="breadcrumb"><span>您当前位置：</span><a href="http://ihs.ahu.edu.cn/">主页</a> &gt;
		  		<a href="reservate.jsp">平台预约</a> &gt; 最新通知  &gt;</h2>
			<div class="helpCon">
				<h3 align="center" style="margin-top:20px;"><%=title %></h3><br>
				<div class="articlinfo">
				<span class="nm">发表日期：<%=time %></span>
				<span>发表人：<%=owner %></span>
				</div>
				<div class="articl"><%=content %></div>
			</div>
			<a href="login.jsp" style="float:right;margin-bottom: 20px;" >返回&gt;&gt;</a>
		</div>
</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>