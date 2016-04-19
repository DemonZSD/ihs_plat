<%@ page language="java" contentType="text/html; charset=UTF-8" 
	import="java.util.*,edu.ahu.hs.platAppoint.beans.*,edu.ahu.hs.platAppoint.DBO.*"
    pageEncoding="UTF-8"%>
    <%
    DeviceBean db=(DeviceBean)request.getAttribute("deviceInfo");
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
		  <h2 class="breadcrumb"><span>您当前位置：</span><a href="http://ihs.ahu.edu.cn/">主页</a> > <a href="reservate.jsp">平台预约</a> > 仪器设备预约 >
		  </h2>
		  <%if(userName!=null){ %>
		  
		  <div class="log_info"><span>欢迎 &nbsp;
		  		<font color=blue><%=userName%></font>
		  		&nbsp;登录</span><span style="float:right"><a href="LoginServlet?type=quit">安全退出</a></span>
		  		<span class="log_info_span"><a href="OrderServlet?type=getBoList&username=<%=userName %>">查询您的预约记录</a></span>
		  </div><%} %>
		  
		  <div class="order">
		  <h3><%=db.getDeviceName()%> </h3>
			<table align="center" cellpadding="0" cellspacing="0" height="500">
				<tr>
				<td class="tr_cel_css" colspan="4"><div style="float: left;">设备基本信息：</div><div style="float: right; margin-right: 10px;">
				<a href="deseState.jsp?deviceId=<%=db.getDeviceId() %>">
				    	<img src="./images/acp_edit.gif" align="absmiddle" >预约</a></div></td>
				</tr>
				<tr><td class="colLable">设备名称：</td><td width="30%" class="colcon"><%=db.getDeviceName() %></td>
				<td rowspan="4" class="colLable">设备图片：</td><td rowspan="4" class="colcon" style="text-align: center;"  ><img height=230 src="./images/deviceImgs/<%=db.getPhoto() %>"></td></tr>
				<tr><td class="colLable">型号：</td><td width="30%" class="colcon"><%=db.getType() %></td></tr>
				<tr><td class="colLable">制造商：</td><td width="30%" class="colcon"><%=db.getMade() %></td></tr>
				<tr><td class="colLable">租用费用：</td><td width="30%" class="colcon"><%=db.getPrice() %></td></tr>
				<tr><td class="colLable">仪器介绍：</td><td colspan="3" class="colcon"><textarea style="border: 0;resize:none;"  readonly="readonly" rows="8" cols="80"><%=db.getExperiment() %></textarea> </td></tr>
				<tr><td class="colLable">注意事项：</td><td colspan="3" class="colcon"><textarea style="border: 0;resize:none;" readonly="readonly" rows="8" cols="80"> <%=db.getTrain() %></textarea></td></tr>
				<tr><td class="colLable">管理员：</td><td width="30%" class="colcon"><%=db.getAdminName()%></td>
				<td class="colLable">联系电话：</td><td width="30%" class="colcon"><%=db.getAdminPhone() %></td></tr>
			</table>
		</div><span class="return_list"><a href="deviceRe.jsp">返回预约列表</a></span><br>
</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>