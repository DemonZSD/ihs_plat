package edu.ahu.hs.platAppoint.DBO;

import java.util.*;
import java.sql.*;
import edu.ahu.hs.platAppoint.beans.*;

public class OrderDBO {

	private ResultSet rs=null;
	private Connection conn=null;
	private PreparedStatement ps=null;
	
	//插入room预约信息
	public boolean addRmOr(RmOrBean rob){
		boolean flag=false;
		try {
			conn=new ConnDB().getConn();
			String sql=" insert into rmortable "+
			" (rmOrId,orName,contact,email,reDate,reTime,noon,submitTime,money,roomId, "+
					" userId,remark,purpose,adminName,Function,roomNum,department) "+
			" values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
			ps=conn.prepareStatement(sql);
			ps.setString(1, rob.getRmOrId());
			ps.setString(2, rob.getOrName());
			ps.setString(3,rob.getContact());
			ps.setString(4, rob.getEmail());
			ps.setString(5, rob.getReDate());
			ps.setString(6, rob.getReTime());
			ps.setInt(7, rob.getNoon());
			ps.setString(8,rob.getSubmitTime());
			ps.setString(9, rob.getMoney());
			ps.setString(10, rob.getRoomId());
			ps.setString(11, rob.getUserId());
			ps.setString(12, rob.getRemark());
			ps.setString(13,rob.getPurpose());
			ps.setString(14, rob.getAdminName());
			ps.setString(15,rob.getFunction());
			ps.setString(16, rob.getRoomNo());
			ps.setString(17, rob.getDepartment());
			int kk=ps.executeUpdate();
			if(kk>0){
				flag=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return flag;
	}
	//获取教室预约详细信息
	public RmOrBean getRoomOrDetail(String rmOrId){
		RmOrBean rob=new RmOrBean();
		try {
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("select * from rmortable where rmOrId= ? ");
			ps.setString(1,rmOrId);
			rs=ps.executeQuery();
			if(rs.next()){
				rob.setRmOrId(rmOrId);
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
				rob.setRemark(rs.getString(14));
				rob.setPurpose(rs.getString(15));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		return rob;
	}
		//获取教室预约记录列表
		public ArrayList<RmOrBean> getRoOrList(String userId){
			ArrayList<RmOrBean> al=new ArrayList<RmOrBean>();
			try {
				conn=new ConnDB().getConn();
				ps=conn.prepareStatement("select * from rmortable where userId=? order by submitTime desc");//order by submitTime desc
				ps.setString(1, userId);
				rs=ps.executeQuery();
				while(rs.next()){
					RmOrBean rob=new RmOrBean();
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
					rob.setFunction(rs.getString(17));
					rob.setAdminName(rs.getString(16));
					rob.setDepartment(rs.getString(19));
					rob.setRoomNo(rs.getString(18));
					rob.setUserId(rs.getString(11));
					rob.setRemark(rs.getString(14));
					rob.setPurpose(rs.getString(15));
					
					al.add(rob);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				this.close();
			}
			return al;
		}
		//删除教室预约记录
		public boolean dellBoRoom(String rmOrId){
			boolean flag=false;
			try {
				conn=new ConnDB().getConn();
				ps=conn.prepareStatement("delete from rmortable where rmOrId=? ");
				ps.setString(1,rmOrId);
				int kk=ps.executeUpdate();
				if(kk>0){
					flag=true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				this.close();
			}
			return flag;
		}
		//插入device预约信息
		public boolean addDeOr(DeOrBean dob){
			boolean flag=false;
			try {
				conn=new ConnDB().getConn();
				
				String sql=" insert into deortable "+
				" (deOrId,orName,contact,email,reDate,reTime,noon, " + 
						" submitTime,money,deviceId,userId,remark,purpose,deviceName,type,adminName,department) "+
				" values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
				ps=conn.prepareStatement(sql);
				ps.setString(1, dob.getDeOrId());
				ps.setString(2, dob.getOrName());
				ps.setString(3,dob.getContact());
				ps.setString(4, dob.getEmail());
				ps.setString(5, dob.getReDate());
				ps.setString(6, dob.getReTime());
				ps.setInt(7, dob.getNoon());
				ps.setString(8,dob.getSubmitTime());
				ps.setString(9, dob.getMoney());
				ps.setString(10, dob.getDeviceId());
				ps.setString(11, dob.getUserId());
				ps.setString(12, dob.getRemark());
				ps.setString(13, dob.getPurpose());
				ps.setString(14, dob.getDeviceName());
				ps.setString(15, dob.getDeviceType());
				ps.setString(16, dob.getAdminRealName());
				ps.setString(17, dob.getDepartment());
				
				int kk=ps.executeUpdate();
				if(kk>0){
					flag=true;
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally{
				this.close();
			}
			return flag;
		}
		
		//获取设备预约详细信息
		public DeOrBean getDeviceOrDetail(String deOrId){
			DeOrBean dob=new DeOrBean();
			try {
				conn=new ConnDB().getConn();
				ps=conn.prepareStatement("select * from deortable where deOrId=? ");
				ps.setString(1,deOrId);
				rs=ps.executeQuery();
				if(rs.next()){
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
					dob.setAdminRealName(rs.getString(18));
					dob.setDepartment(rs.getString(19));
					dob.setDeviceName(rs.getString(16));
					dob.setRemark(rs.getString(14));
					dob.setPurpose(rs.getString(15));
					dob.setDeviceType(rs.getString(17));
				}
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}finally{
				this.close();
			}
			return dob;
		}
		//获取设备仪器预约记录列表
	public ArrayList<DeOrBean> getDeOrList(String userId){
		ArrayList<DeOrBean> al=new ArrayList<DeOrBean>();
		try {
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("select * from deortable where userId=? order by submitTime desc");//order by submitTime desc
			ps.setString(1, userId);
			rs=ps.executeQuery();
			while(rs.next()){
				DeOrBean dob=new DeOrBean();
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
				dob.setUserId(userId);
				dob.setAdminRealName(rs.getString(18));
				dob.setDepartment(rs.getString(19));
				dob.setDeviceName(rs.getString(16));
				dob.setDeviceType(rs.getString(17));
				dob.setRemark(rs.getString(14));
				dob.setPurpose(rs.getString(15));
				al.add(dob);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return al;
	}
	
	
	//删除仪器预约记录
	public boolean dellBoDevice(String deOrId){
		boolean flag=false;
		try {
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("delete  from deortable where deOrId=? ");
			ps.setString(1,deOrId);
			int kk=ps.executeUpdate();
			if(kk>0){
				flag=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return flag;
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
