package edu.ahu.hs.platAppoint.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.ahu.hs.platAppoint.DBO.UserBeanDBO;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type=request.getParameter("type");
		
		if(type.equals("log")){
			String username=request.getParameter("userName").trim();
			username=new String(username.getBytes("ISO-8859-1"),"UTF-8");
			String passwd=request.getParameter("passWd").trim();
			UserBeanDBO ubb=new UserBeanDBO();
			if(ubb.checkUser(username, passwd)){
				//将用户名放入session以备后用
				request.getSession().setAttribute("userinfo", username);
				
				request.getRequestDispatcher("reservate.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("login.jsp?errType=2").forward(request, response);
			}
		}else if(type.equals("quit")){
			request.getSession().removeAttribute("userinfo");
			request.getSession().invalidate();
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		

	}

}
