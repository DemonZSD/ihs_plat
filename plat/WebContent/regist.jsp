<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"  src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript"  src="js/regist.js"></script>
<link rel="shortcut icon" href="./images/title.ico"/>
<script type="text/javascript" language="javascript">
	//保存一个密码用于校验
    var _pass;
    /**
    *检查用户名
    */
    String.prototype.Trim = function() { 
    	return this.replace(/(^\s*)|(\s*$)/g, ""); 
    }
    //---------------------------------------------------------------------------
    function check_username(){
	     var username;
	     username = document.getElementById('uname').value;
	     username = username.Trim();
		     if (username == ""||username==null) {
		      	document.getElementById('username_error').innerHTML = "请输入用户名!";
		      } else {
			       if (/^\w{6,20}$/.test(username)) {
			        	document.getElementById('username_error').innerHTML ="";
			        } else {
			        	document.getElementById('username_error').innerHTML = "请输入6~20 字符,字母或数字!";
			        }
		     }
    }
    /**
     *检查姓名
     */
     //---------------------------------------------------------------------------
     function check_realName(){
 	     var realName;
 	     realName = document.getElementById('rname').value;
 	    realName = realName.Trim();
 	     if (realName == ""||realName==null) {
 	      document.getElementById('realName_error').innerHTML = "请输入姓名";
 	      }else{
 	    	 document.getElementById('realName_error').innerHTML = "";
 	      }
      }
    
    /**
    *检查联系方式
    */
    function check_phoneNum(){
    	 var phoneNum;
    	 phoneNum = document.getElementById('phoneNo').value;
    	 phoneNum = phoneNum.Trim();
 	     if (phoneNum == ""||phoneNum==null) {
 	      document.getElementById('phoneNum_error').innerHTML = "请输入联系方式！";
 	      } else{
 	    	  if(/^[0-9]{1,20}$/.test(phoneNum)){
 	    		 document.getElementById('phoneNum_error').innerHTML = "";
 	    	  }else{
 	    		 document.getElementById('phoneNum_error').innerHTML = "您输入的格式不正确！";
 	    	  }
 	      }
    }
    /**
    *检查Email
    */
    //---------------------------------------------------------------------------
    function check_email(){
	     var email;
	     email = document.getElementById('e_mail').value;
	     email = email.Trim();
	     if (email == ""||email==null) {
	      document.getElementById('email_error').innerHTML = "请输入Email";
	      } else {
	       if (/^[\w-]+[\.]*[\w-]+[@][\w\-]{1,}([.]([\w\-]{1,})){1,3}$/.test(email)) {
	        document.getElementById('email_error').innerHTML ="";
	        } else {
	        document.getElementById('email_error').innerHTML = "请输入有效的Email地址";
	        }      
	      }
     }
    /**
    *检查密码
    */
    //---------------------------------------------------------------------------
    function check_pass(){
	     var pass;
	     pass = document.getElementById('pw1').value;
	     pass = pass.Trim();
	     _pass = pass;
	     if (pass == ""||pass==null) {
	      document.getElementById('pass_error').innerHTML = "请输入密码";
	      } else {
	       if (/^\w{6,20}$/.test(pass)) {
	        document.getElementById('pass_error').innerHTML ="";
	        } else {
	        document.getElementById('pass_error').innerHTML = "请输入6~20 字符,字母或数字!";
	        }      
	      }
     }
    /**
    *检查rpass
    */
    //---------------------------------------------------------------------------
    function check_rpass(){
	     var rpass;
	     rpass = document.getElementById('pw2').value;
	     rpass = rpass.Trim();
	     if (rpass == "") {
	      document.getElementById('rpass_error').innerHTML = "请输入确认密码";
	      } 
	     else if (rpass != _pass) {
	      document.getElementById('rpass_error').innerHTML = "密码不一致";
	      }
	     else {
	      document.getElementById('rpass_error').innerHTML ="";
	      }    
     }
    //检查身份证号
   function checkIdcard(idcard){
// 		var idcard=document.getElementById('idcard').value;
		var Errors=new Array(
		"验证通过!",
		"身份证号码位数不对!",
		"身份证号码出生日期超出范围或含有非法字符!",
		"身份证号码校验错误!",
		"身份证地区非法!"
		);
		var area={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江",
				31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",
				42:"湖北",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",
				52:"贵州",53:"云南",54:"西藏",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",
				65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外"}
		var idcard,Y,JYM;
		var S,M;
		var idcard_array = new Array();
		idcard_array = idcard.split("");
		//地区检验
		if(area[parseInt(idcard.substr(0,2))]==null) return false;
		//身份号码位数及格式检验
		switch(idcard.length){
			case 15:
				if ( (parseInt(idcard.substr(6,2))+1900) % 4 == 0 || ((parseInt(idcard.substr(6,2))+1900) %
				100 == 0 && (parseInt(idcard.substr(6,2))+1900) % 4 == 0 )){
					ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/;//测试出生日期的合法性
				} else {
					ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/;//测试出生日期的合法性
				}
				if(ereg.test(idcard)){
					return true;
				}else
				{
					return false;
				}
				break;
			case 18:
				//18位身份号码检测
				//出生日期的合法性检查
				//闰年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))
				//平年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))
				if ( parseInt(idcard.substr(6,4)) % 4 == 0 || (parseInt(idcard.substr(6,4)) % 100 == 0 &&
				parseInt(idcard.substr(6,4))%4 == 0 )){
				ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;//闰年出生日期的合法性正则表达式
				} else {
					ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;//平年出生日期的合法性正则表达式
				}
				if(ereg.test(idcard)){//测试出生日期的合法性
					//计算校验位
						S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7
						+ (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9
						+ (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10
						+ (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5
						+ (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8
						+ (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4
						+ (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2
						+ parseInt(idcard_array[7]) * 1
						+ parseInt(idcard_array[8]) * 6
						+ parseInt(idcard_array[9]) * 3 ;
						Y = S % 11;
						M = "F";
						JYM = "10X98765432";
						M = JYM.substr(Y,1);//判断校验位
							if(M == idcard_array[17]) 
							{
								return true;
							}else {
								return false;	
							}
					}else{
							return false;
						}
					break;
			default:
				return false;
				break;
		}
	}
	//-->
	function check(){
	   if(checkIdcard(document.form1.idcard.value))
	   {
			document.getElementById('uid_error').innerHTML ="";
			return true;
	 	}else{
	 		document.getElementById('uid_error').innerHTML="身份证号码信息不正确"
			    return false;
	 	}
	   
	}
    function regist(){
	     var username_error=document.getElementById('username_error').innerHTML;
	     var pass_error=document.getElementById('pass_error').innerHTML;
	     var rpass_error=document.getElementById('rpass_error').innerHTML;
	     var realname_error=document.getElementById("realName_error").innerHTML;
	     var phoneNo_error=document.getElementById("phoneNum_error").innerHTML;
	     var email_error=document.getElementById('email_error').innerHTML;
	     var uid_error=document.getElementById('uid_error').innerHTML;
	     var uname=document.getElementById('uname').value;
	     var pw1=document.getElementById('pw1').value;
	     var pw2=document.getElementById('pw2').value;
	     var realname=document.getElementById("rname");
	     var phoneNum=document.getElementById("phoneNo");
	     var e_mail=document.getElementById('e_mail').value;
	     var userId=document.getElementById('idcard').value;
	     //判断错误信息全部为空并且文本框全部不为空
	     if ((username_error == "" && pass_error == "" && rpass_error == "" && realname_error==""&& phoneNo_error=="" && email_error == "" && uid_error== "" )
	    		 	&&(uname != "" && pw1 != "" && pw2 != "" && realname!="" && phoneNum!="" && e_mail != "" && userId!= "")) {
	      } else {
	    	document.form1.submit.disabled = true;
	    	alert ("您填写的信息不完整，请重新填写!");
	    	window.location.reload(true);
	    	
	       }
     }       
</script>
<title>用户注册</title>
</head>
<body>
<jsp:include page="head.jsp" flush="true"></jsp:include>
<div class="contentbg">	
  <div class="content wrapper">
	<h2 class="contenttitle">平台预约</h2>
		<div class="contianer centerblock">
		  <h2 class="breadcrumb"><span>您当前位置：</span>
		  <a href="http://ihs.ahu.edu.cn/">主页</a> > <a href="reservate.jsp">平台预约</a> > <a href="regist.jsp">用户注册</a> > 
		  </h2>
		  <div class="reg_page"><h3>用户注册</h3>		  
	<form name="form1" action="RegistServlet" method="post">
		<span>
		<% 
			String errType=(String)request.getParameter("errType");
			if(errType!=null){
				if(errType.equals("1")){
					out.print("<font color=red>注册失败，请重新注册！</font>");
				}else if(errType.equals("2")){
					out.print("<font color=red>用户名已存在！</font>");
				}
			}
		%> 
		</span>

	<table align="center">
	  <tr>
	    <td><div align="right">用&nbsp;&nbsp;户&nbsp;&nbsp;名：</div></td>
	    <td><div align="left">
<!-- 	    输入用户名框  -->
	          <input name="username"  id="uname" type="text" size="17" onblur="check_username()" /><font color=red>*</font>
	     
	    6-20个字符 <font color=red><span id="username_error" class="after_input"></span></font></div></td>
	  </tr>
	  <tr>
	    <td><div align="right">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</div></td>
	    <td><div align="left">
		<!--   输入密码框 -->
	      <input name="password1" type="password" size="17" id="pw1" onblur="check_pass();"/><font color=red>*</font>
	    <font color=red><span id="pass_error" class="after_input"></span></font></div></td>
	  </tr>
	   <tr>
	    <td><div align="right">确认密码：</div></td>
	    <td><div align="left">
<!-- 	      确认密码框 -->
	      <input name="password2" type="password" id="pw2" size="17" onblur="check_rpass();" /><font color=red>*</font>
	   <font color=red><span id="rpass_error" class="after_input"></span></font></div></td>
	  </tr>
	   <tr>
	    <td><div align="right">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</div></td>
	    <td><div align="left">
<!-- 	      输入真实姓名框 -->
	      <input name="realname" type="text" size="17" id="rname" /><font color=red>*</font>
	    <font color=red><span id="realName_error" class="after_input"></span></font></div></td>
	  </tr>
	  <tr>
	    <td><div align="right">身份证号：</div></td>
	    <td><div align="left">
<!-- 	      输入身份证信息 -->
	      <input name="userId" type="text" size="17" id="idcard" onblur="check();" /><font color=red>*</font>
	    <font color=red><span id="uid_error" class="after_input"></span></font></div></td>
	  </tr>
	    <tr>
	    <td><div align="right">联系电话：</div></td>
	    <td><div align="left">
		<!--  输入电话号码框 -->
	      <input name=phonenum type="text" size="17" id="phoneNo" /><font color=red>*</font>
	    <font color=red><span id="phoneNum_error" class="after_input"></span></font></div></td>
	  </tr>
	   <tr>
	    <td><div align="right">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</div></td>
	    <td><div align="left">
			<!-- 	    输入邮箱框 -->
	      <input name="email" id="e_mail" type="text" size="17" onblur="check_email()"/><font color=red>*</font>
	    <font color=red><span id="email_error" class="after_input"></span></font></div></td>
	  </tr>
	   <tr>
	    <td><div align="right">所属单位：</div></td>
	    <td><div align="left">
<!-- 	    所属部门 -->
	      <input name="department" type="text" size="17" id="dement" />
	    </div></td>
	  </tr>
	 	</table>
	<div class="reg_sub">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input name="submit" type="submit" value="提交" onclick="regist()"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置" />&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
</form>
</div>
</div>
</div>
</div>
<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>