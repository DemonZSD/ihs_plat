package edu.ahu.hs.platAppoint.DBO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import edu.ahu.hs.platAppoint.beans.DeOrBean;

public class DeviceOrDBO {
	private ResultSet rs=null;
	private Connection conn=null;
	private PreparedStatement ps=null;
	
	
	public DeOrBean getDeOrInfo(String deviceId,String reDate,int noon){
		DeOrBean dob=new DeOrBean();
		 try {
			 conn=new ConnDB().getConn();
				ps=conn.prepareStatement("select * from deortable where deviceId =  ? and reDate= ? and noon= ? ");
				ps.setString(1,deviceId);
				ps.setString(2,reDate);
				ps.setInt(3, noon);
				rs = ps.executeQuery();
				while(rs.next()){
					dob.setDeOrId(rs.getString(1));
					dob.setOrName(rs.getString(2));
					dob.setContact(rs.getString(3));
					dob.setEmail(rs.getString(4));
					dob.setReDate(rs.getString(5));
					dob.setReTime(rs.getString(6));
					dob.setNoon(rs.getInt(7));
					dob.setSubmitTime(rs.getString(8).substring(0, 16));
					dob.setMoney(rs.getString(9));
					dob.setDeviceId(rs.getString(10));
					dob.setUserId(rs.getString(11));
					dob.setDepartment(rs.getString(19));
					dob.setAdminRealName(rs.getString(18));
					dob.setDeviceName(rs.getString(16));
					dob.setDeviceType(rs.getString(17));
					dob.setPurpose(rs.getString(15));
				}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		 return dob;
	
	}
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
