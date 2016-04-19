package edu.ahu.hs.platAppoint.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ahu.hs.platAppoint.DBO.NewsBeanDBO;
import edu.ahu.hs.platAppoint.beans.NewsBean;

/**
 * Servlet implementation class NewsServlet
 */
public class NewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type = request.getParameter("type");
		if(type.equals("newsinfo")){
			String id = request.getParameter("id");
			int newsId = Integer.parseInt(id);
			NewsBeanDBO nbd = new NewsBeanDBO();
			NewsBean newsbean = nbd.getNewsById(newsId);
			request.setAttribute("newsinfo",newsbean);
			request.getRequestDispatcher("newsinfo.jsp").forward(request, response);
		}else if(type.equals("")){
			
		}
	}

}
