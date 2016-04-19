<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,edu.ahu.hs.platAppoint.beans.*"
    pageEncoding="UTF-8"%>
    <%
    UserBean ub=(UserBean)request.getAttribute("userInfo");
    DeviceBean db=(DeviceBean)request.getAttribute("deviceInfo");
    int noon=Integer.parseInt(request.getParameter("noon"));
    String reDate=request.getParameter("reDate");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/jquery.ui.theme.css">
<link rel="stylesheet" href="./timejs/jquery.datetimepicker.css"/>
<script type="text/javascript"  src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/Ajax.js"></script>
<script src="js/jquery-1.9.0.js"></script>
<script src="js/jquery.ui.core.js"></script>
<link rel="shortcut icon" href="./images/title.ico"/>
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
	function checkPur(){
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
		  <h2 class="breadcrumb"><span>您当前位置：</span><a href="http://ihs.ahu.edu.cn/">主页</a> > <a href="reservate.jsp">平台预约</a> > 
		  </h2>
		  
		  <%if(userName!=null){ %>
		  <div class="log_info"><span>欢迎 &nbsp;
		  		<font color=blue><%=userName%></font>
		  		&nbsp;登录</span><span style="float:right"><a href="LoginServlet?type=quit">安全退出</a></span>
		  		<span class="log_info_span"><a href="OrderServlet?type=getBoList&userid=<%=ub.getUserId() %>">查询您的预约记录</a></span>
		  </div><%} %>
		  <div class="order">
		  <form name="form1" action="OrderServlet?type=insertDeOrder&noon=<%= noon %>&reDate=<%= reDate %>" method="post" onsubmit="return checkPur();" >
		   <div class="table_title">请核对预约信息</div>
		   <input type="hidden"  name="userid" value="<%=ub.getUserId() %>" />
		   <input type="hidden" name="deviceid" value="<%=db.getDeviceId()%>"/>
		  <table align="center" cellpadding="0" cellspacing="0" height="600">
		 	<tr ><td colspan="4" class="tr_cel_css">预约人信息</td></tr>
	  	<tr><td class="cel_css">单位：</td><td class="row_css"><input type="text" name="department" value="<%=ub.getDepartment() %>" /></td>
	  	<td class="cel_css">姓名：</td><td class="row_css"><input type="text" name="realname"  value="<%=ub.getRealName() %>" /></td></tr>
	  	<tr><td class="cel_css">联系电话：</td><td class="row_css"><input type="text" name="phonenum" value="<%=ub.getPhoneNum() %>"  /></td>
	  	<td class="cel_css">邮箱：</td><td class="row_css"><input type="text" name="email" value="<%=ub.getEmail() %>"  /></td></tr>
	  	<tr><td class="cel_css">用途：</td><td class="row_css"><input type="text" id="purpose" name="purpose" /><font color="red">*</font></td>
	  	<td class="cel_css">备注信息：</td><td class="row_css"><input type="text" name="remark" /></td></tr>
	  	<tr><td colspan="4" class="tr_cel_css">仪器设备信息</td></tr>
	  	<tr><td class="cel_css">仪器名称：</td><td class="row_css">
	  	<input type="text" name="devicename" readonly="readonly" value="<%=db.getDeviceName() %>" /></td>
	  	<td class="cel_css">仪器型号：</td><td class="row_css">
	  	<input type="text" name="devicetype" readonly="readonly" value="<%=db.getType() %>" /></td></tr>
	  	<tr><td class="cel_css">制造商：</td><td class="row_css">
	  	<input type="text" name="made" value="<%=db.getMade() %>" readonly="readonly" /></td>
	  	<td class="cel_css">价格：</td><td class="row_css">
	  	<input type="text" name="price"  readonly="readonly" value="<%=db.getPrice() %>" /></td></tr>
	  	<tr>
	  	<td class="cel_css">管理员：</td><td class="row_css">
	  	<input type="text" name="adminname"  readonly="readonly" value="<%=db.getAdminName() %>" /></td>
	  	<td class="cel_css">管理员联系电话：</td><td class="row_css">
	  	<input type="text" name="phone" value="<%=db.getAdminPhone() %>" readonly="readonly" /></td></tr>
	  	<tr><td class="cel_css">实验内容：</td><td colspan="3" class="row_css"> 
	  	<textarea style="float: left;" rows="4" cols="80" readonly="readonly"> <%=db.getExperiment()+"" %></textarea> </td></tr>
	  	<tr><td class="cel_css">样本要求：</td><td colspan="3" class="row_css">
	  	<textarea style="float: left;" rows="4" cols="80"  readonly="readonly"><%=db.getTrain() %></textarea> </td></tr>
	  	<tr><td colspan="4" class="tr_cel_css">租用时间</td></tr>
	  	<tr><td colspan="4" class="row_css">您租用的时间为：<%=reDate %> &nbsp;&nbsp; 
	  	<input id="reTime<%=noon %>" name="reTime1" type="text" style="width:60px;" readonly="readonly"  />
	  		-<input id="reTime2<%=noon %>" style="width:60px;" name="reTime2" type="text" readonly="readonly" />(<font color="red">注意：开始时间必须小于结束时间</font>)</td></tr>
		  </table><input type="hidden" name="formhash" id="formhash" value="<%=formhash%>" />
		  <div class="sub_div"><input type="submit" value="提交"></div>
		  </form>
		  </div>
		  <span class="return_list"><a href="deviceRe.jsp">返回预约列表</a></span><br>
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
	allowBlank:true,
	maxTime:'11:30',
	step:30
});
$('#reTime21').datetimepicker({
	datepicker:false,
	format:'H:i',
	value:'11:30',
	minTime:'08:00',
	maxTime:'11:30',
	allowBlank:true,
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