<%@page import="edu.ahu.hs.platAppoint.DBO.NewsBeanDBO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.ahu.hs.platAppoint.servlet.*,edu.ahu.hs.platAppoint.beans.*,java.util.ArrayList" %>
    <%
    	NewsBeanDBO nbd = new NewsBeanDBO();
    	ArrayList<NewsBean> newslist = 	nbd.getAllNews();
    	
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"  src="js/jquery-1.9.1.min.js"></script>
<link rel="shortcut icon" href="./images/title.ico"/>
<title>健康研究院平台预约登录</title>
<script>
	function clearDefaultText (el,message)
	{
		var obj = el;
		if(typeof(el) == "string")
		obj = document.getElementById(id);
		if(obj.value == message)
		{
			obj.value = "";
		}
		obj.onblur = function()
		{
			if(obj.value == "")
			{
			   obj.value = message;
			}
		}
	}

</script>
</head>
<body>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<div class="contentbg">	
  <div class="content wrapper">
<h2 class="contenttitle">平台预约</h2>
		<div class="contianer centerblock">
		  <h2 class="breadcrumb"><span>您当前位置：</span><a href="http://ihs.ahu.edu.cn/">主页</a> > <a href="reservate.jsp">平台预约</a> > </h2>
		  	<div class="logincss">
			<div class="login_left" >
			<div class="news_title">
				<div class="list1">
						<h3 class="m_3">通知公告</h3>
				</div>
			</div>
			<div class="news_list">
					<div class="box">
					  <div class="box_content r_comments">
					      <ul style="margin-top: 0px;" id="rcslider">
					      <%for(int i=0;i<newslist.size();i++){ 
					    	  NewsBean newsbean = newslist.get(i);
					      %>
					       <li style="opacity: 0.8;"> 
					       	<a href="NewsServlet?id=<%=newsbean.getNewsId()%>&type=newsinfo"><%=newsbean.getTitle()%>
					       	</a><br></li>
					      <%} %>
					      
					    </ul>
					  </div>
					
					</div>
					</div><a href="help.jsp" class="loginfootleft"> <span>帮助文档</span></a>
					
			</div>
			<form action="LoginServlet?type=log" method="post">
			<div class="login_right">
			<div class="news_grid">
				<div class="list1">
<!-- 						<i class="speech"></i> -->
						<h3 class="m_3">登录</h3>
				</div>
			</div>
			<div class="loginIn">
				<div class="login_main">
				<input name="userName" value="用户名" class="ur" onclick="clearDefaultText(this,'用户名')" />
       			 	<input name="passWd" class="pw" value="密  &nbsp;&nbsp;码"
       			 		onfocus="if(this.value==defaultValue) {this.value='';this.type='password'}" 
       			 		onblur="if(!value) {value=defaultValue; this.type='text';}"  /></div>
				
       			 <div><input type="submit" value="登录" class="bn" /></div><a href="regist.jsp"><span>立即注册</span></a>
       			 <%
				String errType=(String)request.getParameter("errType");
				if(errType!=null){
					if(errType.equals("1")){
						out.print("<font color=red>用户没有登录！</font>");
					}else if(errType.equals("2")){
						out.print("<font color=red>用户名或密码错误！</font>");
					}else if(errType.equals("3")){
						out.print("<font color=red>登录后才能预约，请您登录</font>");
					}
				}
			%>
			</div>
			<a href="computing.jsp" class="loginfootright"><span>高性能集群服务器</span></a>
			</div></form>
			</div>
		</div>
</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
<script type="text/javascript">
jQuery(function(a) {
    a(function() {
        var b;
        a("#rcslider").hover(function() {
            clearInterval(b)
        },
        function() {
            b = setInterval(function() {
                var b = a("#rcslider"),
                c = b.find("li:last").height();
                b.animate({
                    marginTop: c + 3 + "px"
                },
                1e3,
                function() {
                    b.find("li:last").prependTo(b),
                    b.find("li:first").hide(),
                    b.css({
                        marginTop: 0
                    }),
                    b.find("li:first").fadeIn(1e3)
                })
            },
            3e3)
        }).trigger("mouseleave")
    }),
    a(document).ready(function() {
        a("#rcslider li").css({
            opacity: ".6"
        }),
        a("#rcslider li").hover(function() {
            a(this).stop().fadeTo(300, 1)
        },
        function() {
            a(this).stop().fadeTo(300, .6)
        })
    })
});
</script>
</body>
</html>