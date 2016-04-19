<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,edu.ahu.hs.platAppoint.beans.*,edu.ahu.hs.platAppoint.DBO.*"
    pageEncoding="UTF-8"%>
    <%
    	DeviceBeanDBO dbd =new DeviceBeanDBO();
    	ArrayList<RoomBean> alr=dbd.getAllRoom();
    	ArrayList<DeviceBean> ald=dbd.getAllDevice();
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
		  <h2 class="breadcrumb"><span>您当前位置：</span><a href="http://ihs.ahu.edu.cn/">主页</a> > <a href="platAppiont.jsp">平台预约</a> > 
			</h2>
			<%if(userName!=null){ 
				UserBeanDBO ubd=new UserBeanDBO();
			%>
		  		
		  <div class="log_info"><span>欢迎 &nbsp;
		  		<font color=blue><%=userName%></font>
		  		&nbsp;登录</span><span style="float:right"><a href="LoginServlet?type=quit">安全退出</a></span>
		  		<span class="log_info_span"><a href="OrderServlet?type=getBoList&userid=<%=ubd.getUserInfo(userName).getUserId() %>">查询您的预约记录</a></span>
		  </div><%} %>
			<div class="selection">
			<h3>请选择您所预约的设备：</h3>
			<h4>教室预约：</h4><br>
			<div class="table_css table1">
				<table width="100%" border="0" align="center">
				  <tr class="tr_title">
				    <td>序号</td>
				    <td>类别</td>
				    <td>房间号</td>
				    <td>功用</td>
				    <td>租用费用</td>
				    <td>管理员</td>
				    <td>联系电话</td>
				    <td>操作</td>
				  </tr>
				  <%
				  	for(int i=0;i<alr.size();i++){
				  		RoomBean rb=alr.get(i);
				  %>
				  <tr>
				    <td><input type="hidden" name="roomId" value=" <%=rb.getRoomId()%>" /><%=i+1 %></td>
				    <td><%=rb.getRoomType() %> </td>
				    <td><%=rb.getRoomNo() %></td>
				    <td><%=rb.getFunction() %></td>
				    <td><%=rb.getPrice() %></td>
				    
				    <td><%=rb.getAdminName() %></td>
				    <td><%=rb.getAdminPhone()%></td>
				    <td><a href="reseState.jsp?roomId=<%=rb.getRoomId() %>">
				    	<img src="./images/acp_edit.gif" align="absmiddle" >预约</a><br>
					<img src="./images/acp_edit.gif" align="absmiddle" ><a href="DeviceServlet?type=showRoomDetail&roomId=<%=rb.getRoomId() %>">详情</a></td>
				  </tr>
				  <%
				  	}
				  %>
				</table>
			</div>
			<h4>实验仪器设备预约：</h4><br>
			<div class="table_css table2">
				<table  width="100%" border="0" align="center">
				<tr class="tr_title">
					<td width=40px>序号</td>
					<td>设备图片</td>
					<td>设备名称</td>
					<td>型号</td>
					<td>操作</td>
				</tr>
				 <%
				  	for(int i=0;i<ald.size();i++){
				  		DeviceBean db=ald.get(i);
				  		
				  	
				  %>
					<tr>
				    <td width=40px><input type="hidden" name="deviceId" value="<%=db.getDeviceId() %>" /><%=i+1 %></td>
				    <td width=100px > <img src="./images/deviceImgs/<%=db.getPhoto() %>" style="height:100px;width:100px;" >  </td>
				    <td width=120px><%=db.getDeviceName() %> </td>
				    <td width=120px><%=db.getType() %> </td>
				    
				    <td width=120px><a href="deseState.jsp?deviceId=<%=db.getDeviceId() %>">
				    	<img src="./images/acp_edit.gif" align="absmiddle" >预约</a><br>
					<img src="./images/acp_edit.gif" align="absmiddle" ><a href="DeviceServlet?type=showDeviceDetail&deviceId=<%=db.getDeviceId() %>">详情</a></td>
				  </tr>
				   <%
				  	}
				  %>
				</table>
			</div>
		</div>
		
</div>
</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>