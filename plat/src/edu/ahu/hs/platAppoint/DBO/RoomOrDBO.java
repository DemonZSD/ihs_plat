package edu.ahu.hs.platAppoint.DBO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import edu.ahu.hs.platAppoint.beans.RmOrBean;

public class RoomOrDBO {
	private ResultSet rs=null;
	private Connection conn=null;
	private PreparedStatement ps=null;
	
	
	public ArrayList<RmOrBean> getRoomOrState(String roomId){
		ArrayList<RmOrBean> al=new ArrayList<RmOrBean>();
		 try {
			 conn=new ConnDB().getConn();
				ps=conn.prepareStatement("select * from rmortable where roomId =  ? ");
				ps.setString(1,roomId);
				rs = ps.executeQuery();
				while(rs.next()){
					RmOrBean rob=new RmOrBean();
					rob.setRmOrId(rs.getString(1));
					rob.setOrName(rs.getString(2));
					rob.setContact(rs.getString(3));
					rob.setEmail(rs.getString(4));
					rob.setReDate(rs.getString(5));
					rob.setNoon(rs.getInt(6));
					rob.setSubmitTime(rs.getString(7).substring(0, 16));
					rob.setMoney(rs.getString(8));
					rob.setRoomId(rs.getString(9));
					rob.setUserId(rs.getString(10));
					rob.setFunction(rs.getString(17));
					rob.setAdminName(rs.getString(16));
					rob.setDepartment(rs.getString(19));
					rob.setRoomNo(rs.getString(18));
					rob.setPurpose(rs.getString(15));
				}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		 return al;
	}
	
	public RmOrBean getRmOrByTimeRoomIdNoon(String roomId,String reDate,int noon){
		 RmOrBean rob=new RmOrBean();
		 try {
			 conn=new ConnDB().getConn();
				ps=conn.prepareStatement("select * from rmortable where roomId =  ? and reDate= ? and noon= ? ");
				ps.setString(1,roomId);
				ps.setString(2,reDate);
				ps.setInt(3, noon);
				rs = ps.executeQuery();
				while(rs.next()){
					rob.setRmOrId(rs.getString(1));
					rob.setOrName(rs.getString(2));
					rob.setContact(rs.getString(3));
					rob.setEmail(rs.getString(4));
					rob.setReDate(rs.getString(5));
					rob.setReTime(rs.getString(6));
					rob.setNoon(rs.getInt(7));
					rob.setSubmitTime(rs.getString(8).substring(0, 16));
					rob.setMoney(rs.getString(9));
					rob.setRoomId(rs.getString(10));
					rob.setUserId(rs.getString(11));
					rob.setFunction(rs.getString(17));
					rob.setAdminName(rs.getString(16));
					rob.setDepartment(rs.getString(19));
					rob.setRoomNo(rs.getString(18));
					rob.setPurpose(rs.getString(15));
				}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		 return rob;
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
