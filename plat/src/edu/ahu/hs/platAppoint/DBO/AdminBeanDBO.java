package edu.ahu.hs.platAppoint.DBO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import edu.ahu.hs.platAppoint.beans.*;

public class AdminBeanDBO {
	private ResultSet rs=null;
	private Connection conn=null;
	private PreparedStatement ps=null;
	
	//鑾峰彇绠＄悊鍛樹俊鎭�
	public AdminBean getAdminInfo(String adminId){
		AdminBean ab=new AdminBean();
		try {
			
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("select * from admintable where adminId=?");
			ps.setString(1, adminId);
			rs=ps.executeQuery();
			if(rs.next()){
				ab.setAdminId(adminId);
				ab.setAdminName(rs.getString(2));
				ab.setPassWd(rs.getString(3));
				ab.setRealName(rs.getString(4));
				ab.setAdminPhone(rs.getString(5));
				ab.setEmail(rs.getString(6));
				ab.setGrade(rs.getInt(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return ab;
	}
	//鍏抽棴璧勬簮
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
