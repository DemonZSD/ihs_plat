<%@page import="java.text.Format"%>
<%@page import="edu.ahu.hs.platAppoint.DBO.UserBeanDBO"%>
<%@page import="org.apache.catalina.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	import="java.util.*,edu.ahu.hs.platAppoint.beans.*,java.text.*"
    pageEncoding="UTF-8"%>
    <%
   	ArrayList<RmOrBean> al=(ArrayList<RmOrBean>)request.getAttribute("boRoList");
    ArrayList<DeOrBean> al1=(ArrayList<DeOrBean>)request.getAttribute("boDeList");
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
	DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	Date date2=new Date();
	String userName=(String)session.getAttribute("userinfo");
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
		  预约记录  > </h2>
		   <%if(userName!=null){ 
			   UserBeanDBO ubd=new UserBeanDBO();
		   %>
		  
		  <div class="log_info"><span>欢迎 &nbsp;
		  		<font color=blue><%=userName%></font>
		  		&nbsp;登录</span><span style="float:right"><a href="LoginServlet?type=quit">安全退出</a></span>
		  		<span class="log_info_span"><a href="OrderServlet?type=getBoList&userid=<%=ubd.getUserInfo(userName).getUserId() %>">查询您的预约记录</a></span>
		  </div><%} %>
		  
		  
		  <div class="order order_list">
		  <div class="table_title">您的预约记录 </div>
		  
		  <div class="orhead">教室会议室预约记录</div>
		  <%
		  String color[]={"#F3F3F4","#fff"};
		  if(al.size()==0){
			  out.print("<font color=red>无预约记录！<a href="+"roomRe.jsp"+">欢迎您预约</a></font>");
		  }else{
			  %>
		  
		  <table align="center" cellpadding="0" cellspacing="0" >
		  <tr style="background-color: #cbcfed" ><th width="18%">预约提交时间</th><th  width="10%">教室房间号</th><th width="15">功用</th>
		  		<th  width="25%">预约使用时间</th><th width="9%">费用(元)</th><th  width="12%">预约人</th><th  width="15%">操作</th></tr>
		  		<%
// 		  			System.out.println(al.size());
		  		
		  			for(int i=0;i<al.size();i++){
		  				RmOrBean rob=al.get(i);
		  			%>
		  <tr style="background-color: <%=color[i%2] %>;"><td><%=rob.getSubmitTime() %></td><td><%=rob.getRoomNo() %></td>
		  		<td><%=rob.getFunction() %></td>
		  		<td><%=rob.getReDate()+"  "+rob.getReTime() %></td>
		  		<td><%=rob.getMoney() %></td>
		  		<td><%=rob.getOrName() %></td>
		  	  <td>
		  	  <a href="OrderServlet?type=rmordetail&username=<%=userName %>&rmorid=<%=rob.getRmOrId() %>">下载预约申请表</a>
		  	  <br>
		  	  	<% 
		  	  		
		  	  		Date date1=(Date)format.parse(rob.getReDate()+" "+"00:00:01");
			  	  	if(date1.compareTo(date2)>0) {%>
		  	 	 		<a href="OrderServlet?type=delBoRoom&rmorid=<%=rob.getRmOrId() %>&userid=<%=rob.getUserId()%>">取消预约</a>
		  	  		<%} %>
		  	  </td>	
		  </tr><%} %>
		  </table>
		  <%}%>
		  <div class="orhead">设备仪器预约记录</div>
		  <%
		  	if(al1.size()==0)
		  	{
		  		out.print("<font color=red>无预约记录！<a href="+"deviceRe.jsp"+">欢迎您预约</a></font>");
		  	}else{
		  %>
		  <table align="center" cellpadding="0" cellspacing="0" >
		  <tr style="background-color: #cbcfed"><th width="10%">提交时间</th><th  width="20%">预约设备名称</th><th  width="15%">预约设备型号</th>
		  		<th  width="20%">预约使用时间</th><th width="10%">费用(元)</th><th  width="15%">预约人</th><th  width="10%">操作</th></tr>
		  		
		  		<%
// 		  			System.out.println(al.size());
		  			for(int j=0;j<al1.size();j++){
		  				DeOrBean dob=al1.get(j);
		  			%>
		  		
		  <tr style="background-color: <%=color[j%2] %>;" ><td><%=dob.getSubmitTime() %></td><td><%=dob.getDeviceName() %></td>
		  		<td><%=dob.getDeviceType() %></td><td><%=dob.getReDate()+"  "+dob.getReTime() %></td>
		  		<td><%=dob.getMoney() %></td>
		  		<td><%=dob.getOrName() %></td>
		  	  <td><a href="OrderServlet?type=deordetail&username=<%=userName %>&deorid=<%=dob.getDeOrId() %>">下载预约申请表</a>
					<br>
					<%
					Date date1=(Date)format.parse(dob.getReDate()+" "+"00:00:01");
			  	  	if(date1.compareTo(date2)>0) {%>
					<a href="OrderServlet?type=delBoDevice&deorid=<%=dob.getDeOrId() %>&userid=<%=dob.getUserId()%>">取消预约</a>
					<%} %>		  	  
		  	  </td>		
		  </tr>
		  <%} %>
		  </table>
		  <%} %>
		  </div>
		  <span class="return_list"><a href="reservate.jsp">返回预约</a></span><br>
		</div>
</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>