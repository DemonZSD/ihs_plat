<%@ page language="java" contentType="text/html; charset=UTF-8" 
	import = "edu.ahu.hs.platAppoint.beans.*,java.util.*,edu.ahu.hs.platAppoint.DBO.*,java.text.*"
    pageEncoding="UTF-8"%>
    <%
    	String roomId=request.getParameter("roomId");
    	DeviceBeanDBO dbd = new DeviceBeanDBO();
    	TimeCl tc = new TimeCl();
    	RoomOrDBO  rod = new RoomOrDBO();
    	 Date current = new Date();
    	 SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
    	ArrayList<RoomBean> roomlist = dbd.getAllRoom();
	    ArrayList<TimeList> al = tc.getDateList(current);
		String userName=(String)session.getAttribute("userinfo");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"  src="js/jquery-1.9.1.min.js"></script>
<link rel="shortcut icon" href="./images/title.ico"/>
<title>预约系统</title>
</head>
<script type="text/javascript">
	$(function() {
	    $("table tr:nth-child(odd)").addClass("odd-row");
		$("table td:first-child, table th:first-child").addClass("first");
		$("table td:last-child, table th:last-child").addClass("last");
	});
// 	setInterval("time_list_1.innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000); 
	</script>
<style>
	th, td {padding:15px 20px 15px; text-align:center; }
	th {padding-top:20px; text-shadow: 1px 1px 1px #fff; background:#e8eaeb;}
	td {border-top:1px solid #e0e0e0; border-right:1px solid #e0e0e0;}
	tr.odd-row td {background:#f6f6f6;}
	td.first, th.first {text-align:left}
	td.last {border-right:none;}
	td {
		background: -moz-linear-gradient(100% 25% 90deg, #fefefe, #f9f9f9);
		background: -webkit-gradient(linear, 0% 0%, 0% 25%, from(#f9f9f9), to(#fefefe));
	}
	tr.odd-row td {
	background: -moz-linear-gradient(100% 25% 90deg, #f6f6f6, #f1f1f1);
	background: -webkit-gradient(linear, 0% 0%, 0% 25%, from(#f1f1f1), to(#f6f6f6));
	}
	th {
		background: -moz-linear-gradient(100% 20% 90deg, #e8eaeb, #ededed);
		background: -webkit-gradient(linear, 0% 0%, 0% 20%, from(#ededed), to(#e8eaeb));
	}
	tr:first-child th.first {
		-moz-border-radius-topleft:5px;
		-webkit-border-top-left-radius:5px; /* Saf3-4 */
	}
	tr:first-child th.last {
		-moz-border-radius-topright:5px;
		-webkit-border-top-right-radius:5px; /* Saf3-4 */
	}
	tr:last-child td.first {
		-moz-border-radius-bottomleft:5px;
		-webkit-border-bottom-left-radius:5px; /* Saf3-4 */
	}
	tr:last-child td.last {
		-moz-border-radius-bottomright:5px;
		-webkit-border-bottom-right-radius:5px; /* Saf3-4 */
	}
</style>
<body>
<div><jsp:include page="head.jsp" flush="true"></jsp:include></div>
<div class="contentbg">	
  <div class="content wrapper">
<h2 class="contenttitle">平台预约</h2>
		<div class="contianer centerblock">
		  <h2 class="breadcrumb"><span>您当前位置：</span><a href="http://ihs.ahu.edu.cn/">主页</a> > <a href="reservate.jsp">平台预约</a> > </h2>
		  <%if(userName!=null){ 
				UserBeanDBO ubd=new UserBeanDBO();
			%>
		  <div class="log_info"><span>欢迎 &nbsp;
		  		<font color=blue><%=userName %></font>
		  		&nbsp;登录</span><span style="float:right"><a href="LoginServlet?type=quit">安全退出</a></span>
		  		<span class="log_info_span"><a href="OrderServlet?type=getBoList&userid=<%=ubd.getUserInfo(userName).getUserId() %>">查询您的预约记录</a></span>
		  </div><%} %>
			<div class="list">
			<%for(int k=0;k<roomlist.size();k++){ %>
			<a href="reseState.jsp?roomId=<%= roomlist.get(k).getRoomId() %>"><span class="lists"><%= roomlist.get(k).getRoomType()+roomlist.get(k).getRoomNo() %></span></a>
			<% } %>
			</div>
		<table width="100%" border="0" align="center"><caption><font size="5"><%=dbd.getRoomDetail(roomId).getRoomType()+dbd.getRoomDetail(roomId).getRoomNo() %>预约情况</font></caption>
			<tr><th width="15%">日期</th><th>星期</th><th width="25%">上午(08:00-11:30)</th><th width="25%">下午(14:00-17:30)</th><th width="25%">晚上(19:00-21:00)</th></tr>
		  <% for(int i=0;i<al.size();i++){ %>
		  <tr>
		    <td><div id="time_list_1"><%= al.get(i).getDate() %></div></td>
		    <td><div ><%=al.get(i).getWeek() %></div></td>
		    	<%for(int j=1;j<4;j++){
		    		RmOrBean robBean = rod.getRmOrByTimeRoomIdNoon(roomId, al.get(i).getDate(), j);
		    		if(robBean.getRmOrId()!=""&&robBean.getRmOrId()!=null){%>
		    		<td style="color:#fff;background: #F7CE56">预约人：<%=robBean.getOrName() %><br>
		    			用途：<%=robBean.getPurpose() %><br>
		    			<u>预约时间：<%= robBean.getReTime() %></u><br>
		    			<%
		    				int st=Integer.parseInt(robBean.getReTime().substring(0,2));
		    				int et=Integer.parseInt(robBean.getReTime().substring(6,8));
		    				switch(j){
		    				case 1:
		    					if(st>8||et<11){
		    		    			%><font color="red">可预约(请联系管理员:0551-63861807)</font><%} 
		    		    			break;
		    		    	case 2:
		    		    		if(st>14||et<17){%>
		    		    			<font color="red">可预约(请联系管理员:0551-63861807)</font>
		    		    		<%} 
		    		    			break;
		    		    	case 3:
		    		    		if(st>19||et<21){
		    		    		%><font color="red">可预约(请联系管理员:0551-63861807)</font>
		    				<% }
		    					break;
		    				default:
		    					break;
		    				}
		    				%>
		    		</td><%}else{ %>
		    			<td><a href="RoomOrState?roomId=<%=roomId %>&noon=<%=j %>&reDate=<%=al.get(i).getDate() %>">可预约</a></td>
		    		<%} %>
		    	<%} %>
		  </tr>
		  <%} %>
		</table>
		</div>
</div>
</div>
	
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>