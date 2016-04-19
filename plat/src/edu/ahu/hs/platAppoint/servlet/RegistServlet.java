package edu.ahu.hs.platAppoint.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;

import edu.ahu.hs.platAppoint.DBO.UserBeanDBO;
import edu.ahu.hs.platAppoint.beans.UserBean;


public class RegistServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userId=request.getParameter("userId");
		String userName=request.getParameter("username");
		String passwd1=request.getParameter("password1");
		String realName=request.getParameter("realname");
		realName=new String(realName.getBytes("ISO-8859-1"),"UTF-8");
		String phonenum=request.getParameter("phonenum");
		String email=request.getParameter("email");
		String department=request.getParameter("department");
		department=new String(department.getBytes("ISO-8859-1"),"UTF-8");
		UserBeanDBO ubb=new UserBeanDBO();
		//判断用户名存在或者为空
		if(this.IsExist(userName,ubb)){
			request.getRequestDispatcher("regist.jsp?errType=2").forward(request, response);
		}else{
			if(ubb.addUser(userId,userName, passwd1, realName, phonenum, email, department)){
				request.getSession().setAttribute("userinfo", userName);
				request.getRequestDispatcher("reservate.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("regist.jsp?errType=1").forward(request, response);
		
			}
			
		}
		
	}
	public boolean IsExist(String userName,UserBeanDBO ubd){
		ArrayList<UserBean> al=ubd.getUserList();
		for(int i=0;i<al.size();i++){
			if(userName.equals(al.get(i).getUserName()))
				return true;
			else{
				continue;
			}
		}
		return false;
	}

}
