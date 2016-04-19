package edu.ahu.hs.platAppoint.DBO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import edu.ahu.hs.platAppoint.beans.*;


public class DeviceBeanDBO {
	private ResultSet rs=null;
	private Connection conn=null;
	private PreparedStatement ps=null;
	
	//获取room列表 根据pagesize
	public ArrayList<RoomBean> getRoomListByPage(int pageSize,int pageNow){
		ArrayList<RoomBean> al=new ArrayList<RoomBean>();
		AdminBeanDBO abd=new AdminBeanDBO();
		try {
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("select * from roomtable limit "+(pageSize*(pageNow-1))+","+pageSize);
			rs=ps.executeQuery();
			while(rs.next()){
				RoomBean rb=new RoomBean();
				rb.setRoomId(rs.getString(1));
				rb.setRoomNo(rs.getString(2));
				rb.setRoomType(rs.getString(3));
				rb.setFunction(rs.getString(4));
				rb.setAddr(rs.getString(5));
				rb.setPrice(rs.getString(6));
				rb.setAdminId(rs.getString(7));
				rb.setContain(rs.getInt(8));
				rb.setAdminName((abd.getAdminInfo(rs.getString(7))).getRealName());
				rb.setAdminPhone((abd.getAdminInfo(rs.getString(7))).getAdminPhone());
				al.add(rb);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		return al;
	}
	//获取room列表
	public ArrayList<RoomBean> getAllRoom(){
		ArrayList<RoomBean> al=new ArrayList<RoomBean>();
		AdminBeanDBO abd=new AdminBeanDBO();
		try {
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("select * from roomtable");
			rs=ps.executeQuery();
			while(rs.next()){
				RoomBean rb=new RoomBean();
				rb.setRoomId(rs.getString(1));
				rb.setRoomNo(rs.getString(2));
				rb.setRoomType(rs.getString(3));
				rb.setFunction(rs.getString(4));
				rb.setAddr(rs.getString(5));
				rb.setPrice(rs.getString(6));
				rb.setAdminId(rs.getString(7));
				rb.setContain(rs.getInt(8));
				rb.setAdminName((abd.getAdminInfo(rs.getString(7))).getRealName());
				rb.setAdminPhone((abd.getAdminInfo(rs.getString(7))).getAdminPhone());
				al.add(rb);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		return al;
	}
	//根据pageSize 获取device列表
	
	public ArrayList<DeviceBean> getDeviceListByPage(int pageSize,int pageNow){
		ArrayList<DeviceBean> al=new ArrayList<DeviceBean>();
		AdminBeanDBO abd=new AdminBeanDBO();
		try {
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("select * from devicetable limit "+(pageSize*(pageNow-1))+","+pageSize);
			rs=ps.executeQuery();
			while(rs.next()){
				DeviceBean db=new DeviceBean();
				db.setDeviceId(rs.getString(1));
				db.setDeviceName(rs.getString(2));
				db.setType(rs.getString(3));
				db.setPhoto(rs.getString(4));
				db.setExperiment(rs.getString(5));
				db.setTrain(rs.getString(6));
				db.setTrainNum(rs.getInt(7));
				db.setPrice(rs.getString(8));
				db.setAdminId(rs.getString(9));
				db.setMade(rs.getString(10));
				db.setAdminName((abd.getAdminInfo(rs.getString(9))).getRealName());
				db.setAdminPhone((abd.getAdminInfo(rs.getString(9))).getAdminPhone());
				al.add(db);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		
		return al;
	}
	
	//获取device列表
		public ArrayList<DeviceBean> getAllDevice(){
			ArrayList<DeviceBean> al=new ArrayList<DeviceBean>();
			AdminBeanDBO abd=new AdminBeanDBO();
			try {
				conn=new ConnDB().getConn();
				ps=conn.prepareStatement("select * from devicetable");
				rs=ps.executeQuery();
				while(rs.next()){
					DeviceBean db=new DeviceBean();
					db.setDeviceId(rs.getString(1));
					db.setDeviceName(rs.getString(2));
					db.setType(rs.getString(3));
					db.setPhoto(rs.getString(4));
					db.setExperiment(rs.getString(5));
					db.setTrain(rs.getString(6));
					db.setTrainNum(rs.getInt(7));
					db.setPrice(rs.getString(8));
					db.setAdminId(rs.getString(9));
					db.setMade(rs.getString(10));
					db.setAdminName((abd.getAdminInfo(rs.getString(9))).getRealName());
					db.setAdminPhone((abd.getAdminInfo(rs.getString(9))).getAdminPhone());
					al.add(db);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally{
				this.close();
			}
			
			
			return al;
		}
		//获取room的详细信息
		public RoomBean getRoomDetail(String roomId){
			RoomBean rb=new RoomBean();
			AdminBeanDBO abd=new AdminBeanDBO();
			try{
				conn=new ConnDB().getConn();
				ps=conn.prepareStatement("select * from roomtable where roomId=?");
				ps.setString(1, roomId);
				rs=ps.executeQuery();
				if(rs.next()){
					rb.setRoomId(rs.getString(1));
					rb.setRoomNo(rs.getString(2));
					rb.setRoomType(rs.getString(3));
					rb.setFunction(rs.getString(4));
					rb.setAddr(rs.getString(5));
					rb.setPrice(rs.getString(6));
					rb.setAdminId(rs.getString(7));
					AdminBean ab=abd.getAdminInfo(rs.getString(7));
					rb.setContain(rs.getInt(8));
					rb.setAdminName(ab.getRealName());
					rb.setAdminPhone(ab.getAdminPhone());
				}
			}catch(Exception ex){
				ex.printStackTrace();
			}finally{
				this.close();
			}
			return rb;
			
		}
		
		//获取device详细信息
		public DeviceBean getDevice(String deviceId){
			DeviceBean db=new DeviceBean();
			AdminBeanDBO abd=new AdminBeanDBO();
			
			try{
				conn=new ConnDB().getConn();
				ps=conn.prepareStatement("select * from devicetable where deviceId=?");
				ps.setString(1, deviceId);
				rs=ps.executeQuery();
				if(rs.next()){
					db.setDeviceId(rs.getString(1));
					db.setDeviceName(rs.getString(2));
					db.setType(rs.getString(3));
					db.setPhoto(rs.getString(4));
					db.setExperiment(rs.getString(5));
					db.setTrain(rs.getString(6));
					db.setTrainNum(rs.getInt(7));
					db.setPrice(rs.getString(8));
					db.setAdminId(rs.getString(9));
					db.setMade(rs.getString(10));
					AdminBean ab=abd.getAdminInfo(rs.getString(9));
					db.setAdminName(ab.getRealName());
					db.setAdminPhone(ab.getAdminPhone());
				}
			}catch(Exception ex){
				ex.printStackTrace();
			}finally{
				this.close();
			}
			return db;
		}
		//完成分页功能
		
		public int getRPageCount(int pageSize){
			int rowCount=0;
			int pageCount=0;
			try {
				conn=new ConnDB().getConn();
				ps=conn.prepareStatement("select count(*) from roomtable ");
				rs=ps.executeQuery();
				if(rs.next()){
					rowCount=rs.getInt(1);
				}
				
				if(rowCount%pageSize!=0){
					pageCount=rowCount/pageSize+1;
				}else
					pageCount=rowCount/pageSize;
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				this.close();
			}
			return pageCount;
		}
		public int getPageCount(int pageSize){
			int rowCount=0;
			int pageCount=0;
			try {
				conn=new ConnDB().getConn();
				ps=conn.prepareStatement("select count(*) from devicetable ");
				rs=ps.executeQuery();
				if(rs.next()){
					rowCount=rs.getInt(1);
				}
				
				if(rowCount%pageSize!=0){
					pageCount=rowCount/pageSize+1;
				}else
					pageCount=rowCount/pageSize;
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				this.close();
			}
			return pageCount;
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
