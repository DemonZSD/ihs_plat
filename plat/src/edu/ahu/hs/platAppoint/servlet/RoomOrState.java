package edu.ahu.hs.platAppoint.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ahu.hs.platAppoint.DBO.DeviceBeanDBO;
import edu.ahu.hs.platAppoint.DBO.UserBeanDBO;
import edu.ahu.hs.platAppoint.beans.RoomBean;
import edu.ahu.hs.platAppoint.beans.UserBean;

/**
 * Servlet implementation class RoomOrState
 */
public class RoomOrState extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RoomOrState() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName=(String) request.getSession().getAttribute("userinfo");
		if(userName==null||userName==""){
			response.sendRedirect("login.jsp?errType=3");
		}else{
			//获取租用订单所需的教室信息和user信息 传给roomOrder.jsp
			String roomId=request.getParameter("roomId");
			String noon=request.getParameter("noon");
			String reDate=request.getParameter("reDate");
			UserBeanDBO ubd=new UserBeanDBO();
			UserBean ub=ubd.getUserInfo(userName);
			DeviceBeanDBO dbd=new DeviceBeanDBO();
			RoomBean rb=dbd.getRoomDetail(roomId);
			request.setAttribute("userInfo",ub);
			request.setAttribute("roomInfo",rb);
			request.setAttribute("noon", noon);
			request.setAttribute("reDate", reDate);
			request.getRequestDispatcher("roomOrder.jsp").forward(request, response);
		}
	}

}
