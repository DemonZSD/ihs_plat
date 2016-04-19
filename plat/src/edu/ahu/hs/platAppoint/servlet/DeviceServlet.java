package edu.ahu.hs.platAppoint.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ahu.hs.platAppoint.DBO.DeviceBeanDBO;
import edu.ahu.hs.platAppoint.beans.*;

/**
 * Servlet implementation class DeviceServlet
 */
public class DeviceServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type=request.getParameter("type");
		if(type.equals("room")){
			
		}else if(type.equals("device")){
			
		}else if(type.equals("showRoomDetail")){
			String roomId=request.getParameter("roomId");
			DeviceBeanDBO dbd=new DeviceBeanDBO();
			RoomBean rb=dbd.getRoomDetail(roomId);
			request.setAttribute("roomInfo",rb);
			request.getRequestDispatcher("roomDetail.jsp").forward(request, response);
		}else if(type.equals("showDeviceDetail")){
			String deviceId=request.getParameter("deviceId");
			DeviceBeanDBO dbd=new DeviceBeanDBO();
			DeviceBean db=dbd.getDevice(deviceId);
			request.setAttribute("deviceInfo",db);
			request.getRequestDispatcher("deviceDetail.jsp").forward(request, response);
		}else if(type.equals("Dpaging")){
			String pageNow=request.getParameter("pageNow");
			request.setAttribute("pageNow", pageNow);
			request.getRequestDispatcher("deviceRe.jsp").forward(request, response);
		}else if(type.equals("Rpaging")){
			
			String pageNow=request.getParameter("pageNow");
			request.setAttribute("pageNow", pageNow);
			request.getRequestDispatcher("roomRe.jsp").forward(request, response);
		}
	}

}
