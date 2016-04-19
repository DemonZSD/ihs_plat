<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,edu.ahu.hs.platAppoint.beans.*"
    pageEncoding="UTF-8"%>
    <%
   		 DeOrBean dob=(DeOrBean)request.getAttribute("boDeInfo");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/jquery.ui.datepicker.css">
<link rel="stylesheet" href="css/jquery.ui.theme.css">
<link rel="shortcut icon" href="./images/title.ico"/>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script src="js/jquery-1.9.0.js"></script>
<script src="js/jquery.ui.core.js"></script>
<script src="js/jquery.ui.widget.js"></script>
<script src="js/jquery.ui.datepicker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String userName=(String)session.getAttribute("userinfo");
// 	System.out.println(userName);
	if(userName==null){
		response.sendRedirect("login.jsp?errType=1");
	}
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
		  <div class="log_info"><span>欢迎 &nbsp;
		  		<font color=blue><%=userName%></font>
		  		&nbsp;登录</span><span style="float:right"><a href="LoginServlet?type=quit">安全退出</a></span>
		  		<span class="log_info_span"><a href="OrderServlet?type=getBoList&userid=<%=dob.getUserId() %>">查询您的预约记录</a></span>
		  </div>
		  <div class="order">
		  <div class="table_title">您的预约记录</div>
		  <table align="center" cellpadding="0" cellspacing="0" >
		  <tr><th width="10%">提交时间</th><th  width="20%">预约设备名称</th><th  width="15%">预约设备型号</th>
		  		<th  width="20%">预约使用时间</th><th width="10%">费用(元)</th><th>用途</th><th  width="15%">预约人</th><th  width="10%">操作</th></tr>
		  <tr><td><%=dob.getSubmitTime() %></td><td><%=dob.getDeviceName() %></td>
		  		<td><%=dob.getDeviceType() %></td><td><%=dob.getReDate()+"  "+dob.getReTime() %></td>
		  		<td><%=dob.getMoney() %></td>
		  		<td><%=dob.getPurpose()%></td>
		  		<td><%=dob.getOrName() %></td>
		  	  <td><a href="OrderServlet?type=delBoDevice&deorid=<%=dob.getDeOrId() %>&username=<%=userName%>">取消预约</a></td>		
		  </tr>
		  </table>
		   <button onclick="window.location.href='OrderServlet?type=getBoList&userid=<%=dob.getUserId()%>'">确定</button>
		  </div>
		  <span class="return_list"><a href="deviceRe.jsp">返回预约列表</a></span><br>
		</div>
</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>