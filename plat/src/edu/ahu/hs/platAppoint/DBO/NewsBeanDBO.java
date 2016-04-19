package edu.ahu.hs.platAppoint.DBO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import edu.ahu.hs.platAppoint.IDBO.*;
import edu.ahu.hs.platAppoint.beans.*;

public class NewsBeanDBO implements NewsBeanIDBO{
	private ResultSet rs=null;
	private Connection conn=null;
	private PreparedStatement ps=null;
	@Override
	public ArrayList<NewsBean> getAllNews() {
		ArrayList<NewsBean> newsList = new ArrayList<NewsBean>();
		
		try {
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("select * from newstable order by sort asc,time desc limit 0,10");
			rs=ps.executeQuery();
			while(rs.next()){
				NewsBean newsbean = new NewsBean();
				newsbean.setNewsId(rs.getInt(1));
				newsbean.setTitle(rs.getString(2));
				newsList.add(newsbean);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		return newsList;
	}
	
	//根据newsid获取
	@Override
	public NewsBean getNewsById(int newsId) {
		NewsBean newsbean = new NewsBean();
		try {
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("select * from newstable where id=?");
			ps.setInt(1,newsId);
			rs=ps.executeQuery();
			if(rs.next()){
				newsbean.setNewsId(rs.getInt(1));
				newsbean.setTitle(rs.getString(2));
				newsbean.setOwner(rs.getString(3));
				newsbean.setContent(rs.getString(4));
				newsbean.setOrder(rs.getInt(5));
				newsbean.setTime(rs.getString(6));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		return newsbean;
	}

	//关闭资源
	public void close(){
		try{
			if(rs!=null){
				rs.close();
				rs=null;
			}
			if(ps!=null){
				ps.close();
				ps=null;
			}
			if(conn!=null){
				conn.close();
				conn=null;
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}

	
}
