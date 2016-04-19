package edu.ahu.hs.platAppoint.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ahu.hs.platAppoint.DBO.AdminBeanDBO;
import edu.ahu.hs.platAppoint.DBO.DeviceBeanDBO;
import edu.ahu.hs.platAppoint.DBO.UserBeanDBO;
import edu.ahu.hs.platAppoint.beans.*;

/**
 * Servlet implementation class DeviceOrState
 */
public class DeviceOrState extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeviceOrState() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName=(String) request.getSession().getAttribute("userinfo");
		if(userName==null||userName==""){
			response.sendRedirect("login.jsp?errType=3");
		}else{
			//获取租用订单所需的教室信息和user信息 传给roomOrder.jsp
			String deviceId=request.getParameter("deviceId");
			String noon=request.getParameter("noon");
			String reDate=request.getParameter("reDate");
			UserBeanDBO ubd=new UserBeanDBO();
			UserBean ub=ubd.getUserInfo(userName);
			DeviceBeanDBO dbd=new DeviceBeanDBO();
			DeviceBean db=dbd.getDevice(deviceId);
			request.setAttribute("userInfo",ub);
			request.setAttribute("deviceInfo",db);
			request.setAttribute("noon", noon);
			request.setAttribute("reDate", reDate);
			request.getRequestDispatcher("deviceOrder.jsp").forward(request, response);
		}
	}

}
