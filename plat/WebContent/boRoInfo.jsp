<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,edu.ahu.hs.platAppoint.beans.*"
    pageEncoding="UTF-8"%>
    <%
    RmOrBean rob=(RmOrBean)request.getAttribute("boRoInfo");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/jquery.ui.theme.css">
<link rel="shortcut icon" href="./images/title.ico"/>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script src="js/jquery-1.9.0.js"></script>
<script src="js/jquery.ui.core.js"></script>
<script type="text/javascript">
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String userName=(String)session.getAttribute("userinfo");
// 	System.out.println(userName);
	if(userName!=null){
	}
	else{
		//返回登录界面
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
		  
		   <%if(userName!=null){ %>
		  
		  <div class="log_info"><span>欢迎 &nbsp;
		  		<font color=blue><%=userName%></font>
		  		&nbsp;登录</span> <span style="float:right"><a href="LoginServlet?type=quit">安全退出</a></span>
		  		<span class="log_info_span"><a href="OrderServlet?type=getBoList&userid=<%=rob.getUserId() %>">查询您的预约记录</a></span>
		 </div><%} %>
		  
		  <div class="order">
		  <div class="table_title">您的预约记录</div>
		  <table align="center" cellpadding="0" cellspacing="0" >
		  <tr><th width="18%">预约提交时间</th><th  width="8%">教室房间号</th><th width="8%">功用</th>
		  		<th  width="20%">预约使用时间</th><th width="8%">费用(元)</th><th width="15%">用途</th><th  width="10%">预约人</th><th  width="15%">操作</th></tr>
		  <tr><td><%=rob.getSubmitTime() %></td><td><%=rob.getRoomNo() %></td>
		  		<td><%=rob.getFunction() %></td>
		  		<td><%=rob.getReDate() +"  "+rob.getReTime() %></td>
		  		<td><%=rob.getMoney() %></td>
		  		<td><%=rob.getPurpose() %></td>
		  		<td><%=rob.getOrName() %></td>
		  	  <td><a href="OrderServlet?type=delBoRoom&rmorid=<%=rob.getRmOrId() %>&userid=<%=rob.getUserId()%>">取消预约</a></td>	
		  </tr>
		  </table>
		  <button onclick="window.location.href='OrderServlet?type=getBoList&userid=<%=rob.getUserId() %>'">确定</button>
		  </div>
		  <span class="return_list"><a href="roomRe.jsp">返回预约列表</a></span><br>
		</div>
</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>