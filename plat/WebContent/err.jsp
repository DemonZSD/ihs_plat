<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	String err=(String)request.getParameter("errType");
	if(err!=null){
		if(err.equals("addfail")){
			out.print("<font color=red>操作失败，请稍后再试！</font>");
		}else if(err.equals("delfail")){
			out.print("<font color=red>操作失败，请联系管理员！</font>");
		}
	}
	out.print("<font color=red>操作失败，请联系管理员！</font>");
	%>
<h1>出错了</h1>
</body>
</html>