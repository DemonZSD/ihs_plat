<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,edu.ahu.hs.platAppoint.beans.*"
    pageEncoding="UTF-8"%>
    <%
    //from OrderServlet
    UserBean ub=(UserBean)request.getAttribute("userInfo");
    RoomBean rb=(RoomBean)request.getAttribute("roomInfo");
    int noon=Integer.parseInt(request.getParameter("noon"));
    String reDate=request.getParameter("reDate");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="css/jquery.ui.theme.css"/>
<link rel="stylesheet" href="js/ligerUI/skins/Aqua/css/ligerui-all.css"/>
<link rel="stylesheet" href="./timejs/jquery.datetimepicker.css"/>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="./images/title.ico"/>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.core.js"></script>
<script src="js/ligerUI/js/core/base.js" type="text/javascript"></script>
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String userName=(String)session.getAttribute("userinfo");
// 	System.out.println(userName);
	if(userName!=null){
	}
	else{
		//返回登录界面
		response.sendRedirect("login.jsp?errType=3");
	}
	Random ran = new Random();
    String formhash = String.valueOf(ran.nextInt());
    //读取当前session里面的hashCode集合，此处使用了Set，方便判断。
    Set<String> formhashSession = (Set<String>) session.getAttribute("formhashSession");
    if (formhashSession == null) {
         formhashSession = new HashSet<String>();
    }
    // 检测重复问题
    while (formhashSession.contains(formhash)) {
         formhash = String.valueOf(ran.nextInt());
    }
    // 保存到session里面
    formhashSession.add(formhash);
    // 保存
    session.setAttribute("formhashSession", formhashSession);
    
%>
<script type="text/javascript">
	function checkTT(){
		var str=document.getElementById("purpose").value;
		if(str==null||str==""){
		document.form1.purpose.focus();
		alert("请填写‘用途’");
		return false;
		}
	}
</script>
<title>健康研究院实验设备预约平台</title>

</head>
<body>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<div class="contentbg">	
  <div class="content wrapper">
	<h2 class="contenttitle">平台预约</h2>
	<div class="contianer centerblock">
	  <h2 class="breadcrumb"><span>您当前位置：</span><a href="http://ihs.ahu.edu.cn/">主页</a> > <a href="reservate.jsp">平台预约</a> > <a target="_self">核对信息 > </a>
	  </h2>
	  
	   <%if(userName!=null){ %>
	  <div class="log_info"><span>欢迎 &nbsp;
	  		<font color=blue><%=userName%></font>
	  		&nbsp;登录</span><span style="float:right"><a href="LoginServlet?type=quit">安全退出</a></span>
	  		<span class="log_info_span"><a href="OrderServlet?type=getBoList&userid=<%=ub.getUserId() %>">查询您的预约记录</a></span>
	  </div><%} %>
	  <div class="order">
	  <form name="form1" action="OrderServlet?type=insertRoOrder&noon=<%= noon %>&reDate=<%= reDate %>" method="post" onsubmit="return checkTT();" >
	  <div class="table_title">请填写预约信息</div>
	  <input type="hidden"  name="userid" value="<%=ub.getUserId() %>" />
	  <input type="hidden"  name="roomid" value="<%=rb.getRoomId() %>" />
	  <table align="center" cellpadding="0" cellspacing="0" border="0" height="500">
	  	<tr ><td colspan="4" class="tr_cel_css">预约人信息</td></tr>
	  	<tr><td class="cel_css">单位：</td><td class="row_css"><input type="text" name="department" value="<%=ub.getDepartment() %>" /></td>
	  	<td class="cel_css">姓名：</td><td class="row_css"><input type="text" name="realname"  value="<%=ub.getRealName() %>" /></td></tr>
	  	<tr><td class="cel_css">联系电话：</td><td class="row_css"><input type="text" name="phonenum" value="<%=ub.getPhoneNum() %>"  /></td>
	  	<td class="cel_css">邮箱：</td><td class="row_css"><input type="text" name="email" value="<%=ub.getEmail() %>"  /></td></tr>
	  	<tr><td class="cel_css">用途：</td><td class="row_css"><input type="text" id="purpose" name="purpose"  /><font color="red">*</font></td>
	  	<td class="cel_css">备注信息：</td><td class="row_css"><input type="text" name="remark" /></td></tr>
	  	<tr><td colspan="4" class="tr_cel_css">会议室信息</td></tr>
	  	<tr><td class="cel_css">房间号：</td><td class="row_css"><input type="text" name="roomno" readonly="readonly" value="<%=rb.getRoomNo() %>" /></td>
	  	<td class="cel_css">功用：</td><td class="row_css"><input type="text" name="function" readonly="readonly" value="<%=rb.getFunction() %>" /></td></tr>
	  	<tr><td class="cel_css">租用费用：</td><td class="row_css"><input type="text" name="price" value="<%=rb.getPrice() %>" readonly="readonly" /></td>
	  	<td class="cel_css">管理员：</td><td class="row_css"><input type="text" name="adminname"  readonly="readonly" value="<%=rb.getAdminName() %>" /></td></tr>
	  	<tr><td class="cel_css">地址：</td><td  class="row_css"> <input type="text" width="200px"  value="<%=rb.getAddr() %>" readonly="readonly" /></td>
	  	<td class="cel_css">管理员电话：</td><td class="row_css"><input type="text" name="phone" value="<%=rb.getAdminPhone() %>" readonly="readonly" /></tr>
	  	<tr><td colspan="4" class="tr_cel_css">租用时间</td></tr>
	  	<tr><td colspan="4" class="row_css">您租用的时间为：<%=reDate %> &nbsp;&nbsp; <input style="width:60px;" id="reTime<%=noon %>" readonly="readonly" name="reTime1" type="text" />
	  		-<input id="reTime2<%=noon %>" name="reTime2" style="width:60px;" readonly="readonly"  />(<font color="red">注意：开始时间必须小于结束时间</font>)</td></tr>
	  </table><input type="hidden" name="formhash" id="formhash" value="<%=formhash%>" />
	 	<input type="submit" value="提交"  ></form>
	  </div><span class="return_list"><a href="roomRe.jsp">返回预约列表</a></span><br>
	</div>
</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
<script type="text/javascript" src="./timejs/jquery.js"></script>
<script type="text/javascript" src="./timejs/jquery.datetimepicker.js"></script>
<script>
$('#reTime1').datetimepicker({
	datepicker:false,
	format:'H:i',
	value:'08:00',
	minTime:'08:00',
	maxTime:'11:30',
	step:30
});
$('#reTime21').datetimepicker({
	datepicker:false,
	format:'H:i',
	value:'11:30',
	minTime:'08:00',
	maxTime:'11:30',
	step:30
});
$('#reTime2').datetimepicker({
	datepicker:false,
	format:'H:i',
	value:'14:00',
	minTime:'14:00',
	maxTime:'17:31',
	step:30
});
$('#reTime22').datetimepicker({
	datepicker:false,
	format:'H:i',
	value:'17:30',
	minTime:'14:00',
	maxTime:'17:31',
	step:30
});
$('#reTime3').datetimepicker({
	datepicker:false,
	format:'H:i',
	value:'19:00',
	minTime:'19:00',
	maxTime:'21:00',
	step:30
});
$('#reTime23').datetimepicker({
	datepicker:false,
	format:'H:i',
	value:'21:00',
	minTime:'19:00',
	maxTime:'21:00',
	step:30
});

</script>
</html>