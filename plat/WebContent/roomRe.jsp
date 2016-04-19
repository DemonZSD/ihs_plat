<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,edu.ahu.hs.platAppoint.beans.*,edu.ahu.hs.platAppoint.DBO.*"
    pageEncoding="UTF-8"%>
    <%
    	DeviceBeanDBO dbd =new DeviceBeanDBO();
    	OrderDBO od=new OrderDBO();
		int pageSize=8;
		int pageNow=1;
		String s_pageNow=(String)request.getAttribute("pageNow");
		if(s_pageNow!=null){
			pageNow=Integer.parseInt(s_pageNow);
		}
		int pageCount=dbd.getRPageCount(pageSize);
    	ArrayList<RoomBean> alr=dbd.getRoomListByPage(pageSize, pageNow);
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
	 if(userName!=null){
	 }
	 else{
		//返回登录界面
		response.sendRedirect("login.jsp?errType=3");
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
			<%if(userName!=null){ 
				UserBeanDBO ubd=new UserBeanDBO();
			%>
		  		
		  <div class="log_info"><span>欢迎 &nbsp;
		  		<font color=blue><%=userName%></font>
		  		&nbsp;登录</span><span style="float:right"><a href="LoginServlet?type=quit">安全退出</a></span>
		  		<span class="log_info_span"><a href="OrderServlet?type=getBoList&userid=<%=ubd.getUserInfo(userName).getUserId() %>">查询您的预约记录</a></span>
		  </div><%} %>
			<div class="selection">
			<div ><a style="float: right;margin-right: 40px;margin-bottom: 20px;" href="reservate.jsp">返回</a></div>
			<h4>教室预约：</h4> <br>
			<div class="table_css table1">
				<table width="100%" border="0" align="center">
				  <tr class="tr_title">
				    <td width="7%">序号</td>
				    <td width="17%">类别</td>
				    <td width="7%">房间号</td>
				    <td width="17%">功用</td>
				    <td width="7%">租用费用</td>
				    <td width="10%">管理员</td>
				    <td width="17%">联系电话</td>
				    <td width="17%">操作</td>
				  </tr>
				  <%
				  	for(int i=0;i<alr.size();i++){
				  		RoomBean rb=alr.get(i);
				  %>
				  <tr>
				    <td><input type="hidden" name="roomId" value=" <%=rb.getRoomId()%>" /><%=i+1+(pageSize*(pageNow-1)) %></td>
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
				<div style="margin:0 auto;text-align: center;margin-top:40px;">
				
				 [<a href="DeviceServlet?type=Rpaging&pageNow=1">首页</a>]&nbsp;&nbsp;&nbsp;&nbsp;
				<%
				if(pageNow!=1){%>
				[<a href="DeviceServlet?type=Rpaging&pageNow=<%=pageNow-1%>">上一页</a>]		
				<%
				}
				for(int i=1;i<=pageCount;i++){
				%>&nbsp;&nbsp;<a href="DeviceServlet?type=Rpaging&pageNow=<%=i%>">[<%=i %>]</a><%
				}
				if(pageNow!=pageCount){ %>
					&nbsp;&nbsp;[<a href="DeviceServlet?type=Rpaging&pageNow=<%=pageNow+1%>">下一页</a>]
				<%}
				%>&nbsp;&nbsp;&nbsp;&nbsp; [<a href="DeviceServlet?type=Rpaging&pageNow=<%=pageCount %>">末页</a>]</div>
			</div>
			
		</div>
		
</div>
</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>