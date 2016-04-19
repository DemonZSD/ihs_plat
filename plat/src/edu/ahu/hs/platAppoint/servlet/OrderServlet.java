package edu.ahu.hs.platAppoint.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import edu.ahu.hs.platAppoint.DBO.*;
import edu.ahu.hs.platAppoint.beans.*;


public class OrderServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type=request.getParameter("type");
		if(type.equals("deviceOrder")){    
			//获取租用订单所需的仪器信息和user信息 传给deviceOrder.jsp
			String userName=request.getParameter("userName");
			String deviceId=request.getParameter("deviceId");
			UserBeanDBO ubd=new UserBeanDBO();
			UserBean ub=ubd.getUserInfo(userName);
			DeviceBeanDBO dbd=new DeviceBeanDBO();
			DeviceBean db=dbd.getDevice(deviceId);
			request.setAttribute("userInfo",ub);
			request.setAttribute("deviceInfo",db);
			request.getRequestDispatcher("deviceOrder.jsp").forward(request, response);
		}else if(type.equals("insertRoOrder")){
			//插入教室预约信息
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			String nowDate=sdf.format(Calendar.getInstance().getTime());
			String roomId=request.getParameter("roomid");
			String userId=request.getParameter("userid");
			String roomNo=request.getParameter("roomno");
			roomNo=new String(roomNo.getBytes("ISO-8859-1"),"UTF-8");
			String function=request.getParameter("function");
			function=new String(function.getBytes("ISO-8859-1"),"UTF-8");
			String realName=request.getParameter("realname");
			realName=new String(realName.getBytes("ISO-8859-1"),"UTF-8");
			String phoneNum=request.getParameter("phonenum");
			String reDate=request.getParameter("reDate");
			int noon=Integer.parseInt(request.getParameter("noon"));
			String reTime=request.getParameter("reTime1")+"-"+request.getParameter("reTime2");
			String money=request.getParameter("price");
			money=new String(money.getBytes("ISO-8859-1"),"UTF-8");
			String email=request.getParameter("email");
			String department=request.getParameter("department");
			String purpose=request.getParameter("purpose");
			purpose=new String(purpose.getBytes("ISO-8859-1"),"UTF-8");
			String remark=request.getParameter("remark");
			remark=new String(remark.getBytes("ISO-8859-1"),"UTF-8");
			department=new String(department.getBytes("ISO-8859-1"),"UTF-8");
			String adminName = request.getParameter("adminname");
			adminName=new String(adminName.getBytes("ISO-8859-1"),"UTF-8");
			
			OrderDBO od=new OrderDBO();
			String rmOrId=UUID.randomUUID().toString();
			RmOrBean rob=new RmOrBean();
			rob.setRmOrId(rmOrId);//预约id
			rob.setRoomNo(roomNo);//房间号
			rob.setFunction(function);//功用
			rob.setOrName(realName);//预约人姓名
			rob.setContact(phoneNum);//预约人联系电话
			rob.setEmail(email);//预约人email
			rob.setReDate(reDate);
			rob.setReTime(reTime);
			rob.setNoon(noon);
			rob.setSubmitTime(nowDate);
			rob.setDepartment(department);//预约人单位
			rob.setRoomId(roomId);//房间id
			rob.setUserId(userId);//用户id
			rob.setMoney(money);//费用
			rob.setPurpose(purpose);
			rob.setRemark(remark);
			rob.setAdminName(adminName);
			
			String formhash = request.getParameter("formhash");
			HttpSession session=request.getSession();
	         // 拿到session里面的集合
	        Set<String> formhashSession = (Set<String>) session.getAttribute("formhashSession");
	          // 如果没有，则是重复提交，或者非法提交
	        if (formhashSession == null || !formhashSession.contains(formhash)) {
	        	request.setAttribute("boRoInfo",rob);
				request.getRequestDispatcher("boRoInfo.jsp").forward(request, response);
	        }else{
				if(od.addRmOr(rob)){
					request.setAttribute("boRoInfo",rob);
					request.getRequestDispatcher("boRoInfo.jsp").forward(request, response);
				}else{
					request.getRequestDispatcher("err.jsp?err=1").forward(request, response);
				}
			}
	        formhashSession.remove(formhash);
	        session.setAttribute("formhashSession", formhashSession);
		}else if(type.equals("insertDeOrder")){//插入预约设备信息
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			String nowDate=sdf.format(Calendar.getInstance().getTime());
			String deviceId=request.getParameter("deviceid");
			String userId=request.getParameter("userid");
			String deviceName=request.getParameter("devicename");
			deviceName=new String(deviceName.getBytes("ISO-8859-1"),"UTF-8");
			String deviceType=request.getParameter("devicetype");
			deviceType=new String(deviceType.getBytes("ISO-8859-1"),"UTF-8");
			String realName=request.getParameter("realname");
			realName=new String(realName.getBytes("ISO-8859-1"),"UTF-8");
			String UserContact=request.getParameter("phonenum");
			String reDate=request.getParameter("reDate");
			int noon=Integer.parseInt(request.getParameter("noon"));
			String reTime=request.getParameter("reTime1")+"-"+request.getParameter("reTime2");
			String money=request.getParameter("price");
			money=new String(money.getBytes("ISO-8859-1"),"UTF-8");
			String email=request.getParameter("email");
			String department=request.getParameter("department");
			department=new String(department.getBytes("ISO-8859-1"),"UTF-8");
			String purpose=request.getParameter("purpose");
			
			purpose=new String(purpose.getBytes("ISO-8859-1"),"UTF-8");
			String remark=request.getParameter("remark");
			remark=new String(remark.getBytes("ISO-8859-1"),"UTF-8");
			String adminName = request.getParameter("adminname");
			adminName=new String(adminName.getBytes("ISO-8859-1"),"UTF-8");
			String deOrId=UUID.randomUUID().toString();
			DeOrBean dob=new DeOrBean();
			dob.setDeOrId(deOrId);
			dob.setDeviceName(deviceName);
			dob.setOrName(realName);
			dob.setContact(UserContact);
			dob.setEmail(email);
			dob.setReDate(reDate);
			dob.setReTime(reTime);
			dob.setNoon(noon);
			dob.setSubmitTime(nowDate);
			dob.setDepartment(department);
			dob.setMoney(money);
			dob.setDeviceId(deviceId);
			dob.setDeviceType(deviceType);
			dob.setUserId(userId);
			dob.setRemark(remark);
			dob.setPurpose(purpose);
			dob.setAdminRealName(adminName);
			OrderDBO od=new OrderDBO();
			String formhash = request.getParameter("formhash");
			HttpSession session=request.getSession();
	         // 拿到session里面的集合
	        Set<String> formhashSession = (Set<String>) session.getAttribute("formhashSession");
	          // 如果没有，则是重复提交，或者非法提交
	        if (formhashSession == null || !formhashSession.contains(formhash)) {
	        	request.setAttribute("boDeInfo",dob);
				request.getRequestDispatcher("boDeInfo.jsp").forward(request, response);
	        }else{
				if(od.addDeOr(dob)){
					request.setAttribute("boDeInfo",dob);
					request.getRequestDispatcher("boDeInfo.jsp").forward(request, response);
				}else{
					request.getRequestDispatcher("err.jsp?err=addfail").forward(request, response);
				}
	        }
	        formhashSession.remove(formhash);
	        session.setAttribute("formhashSession", formhashSession);
		}else if(type.equals("getBoList")){
			//获取预约记录列表
			String  userId=request.getParameter("userid");
//			String userName=request.getParameter("username");
			if(userId!=null){
				OrderDBO od=new OrderDBO();
				ArrayList<RmOrBean> al=od.getRoOrList(userId);
				ArrayList<DeOrBean> al1=od.getDeOrList(userId);
				request.setAttribute("boRoList",al);
				request.setAttribute("boDeList",al1);
				request.getRequestDispatcher("BoList.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("login.jsp?errType=2").forward(request, response);
			}
		}else if(type.equals("delBoRoom")){
			//删除教室预约记录
			String rmOrId=request.getParameter("rmorid");
			String  userId=request.getParameter("userid");
			OrderDBO od=new OrderDBO();
			if(od.dellBoRoom(rmOrId)){
				request.getRequestDispatcher("OrderServlet?type=getBoList&userid="+userId).forward(request, response);
			}else{
				request.getRequestDispatcher("err.jsp?errType=delfail").forward(request, response);
			}
		}else if(type.equals("delBoDevice")){
			//删除仪器设备预约记录
			String deOrId=request.getParameter("deorid");
			String userId=request.getParameter("userid");
			OrderDBO od=new OrderDBO();
			if(od.dellBoDevice(deOrId)){
				request.getRequestDispatcher("OrderServlet?type=getBoList&userid="+userId).forward(request, response);
			}else{
				request.getRequestDispatcher("err.jsp?errType=delfail").forward(request, response);
			}
		}
		else if(type.equals("rmordetail")){
			//获取教室预约详细信息
			String rmOrId=request.getParameter("rmorid");
			String  userName=request.getParameter("username");
			OrderDBO od=new OrderDBO();
			RmOrBean rob=od.getRoomOrDetail(rmOrId);
			if(userName!=null){
				request.setAttribute("rmordetail",rob);
				request.getRequestDispatcher("roPrint.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("err.jsp").forward(request, response);
			}
		}else if(type.equals("deordetail")){
			//获取仪器预约详细信息
			String deOrId=request.getParameter("deorid");
			String  userName=request.getParameter("username");
			OrderDBO od=new OrderDBO();
			DeOrBean dob=od.getDeviceOrDetail(deOrId);
			if(userName!=null){
				request.setAttribute("deordetail",dob);
				request.getRequestDispatcher("dePrint.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("err.jsp").forward(request, response);
			}
		}else if(type.equals("time")){
			String time=request.getParameter("name");
			String time2=request.getParameter("name2");
		}
	}

}
