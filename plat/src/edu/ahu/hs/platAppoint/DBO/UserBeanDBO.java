package edu.ahu.hs.platAppoint.DBO;
import java.sql.*;
import java.util.*;
import edu.ahu.hs.platAppoint.beans.*;

public class UserBeanDBO {

	private ResultSet rs=null;
	private Connection conn=null;
	private PreparedStatement ps=null;
	
	//验证用户名密码
	public boolean checkUser(String userName,String passWd){
		boolean flag=false;
		try {
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("select  passWd from usertable where userName=?");
			ps.setString(1,userName);
			rs=ps.executeQuery();
			if(rs.next()){
				String dbPassWd=rs.getString(1);
				if(dbPassWd.equals(passWd)){
					flag=true;
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		return flag;
	}
	//获取用户列表
	public ArrayList<UserBean> getUserList(){
		ArrayList<UserBean> al=new ArrayList<UserBean>();
		try {
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("select * from usertable");
			rs=ps.executeQuery();
			while(rs.next()){
				UserBean ub=new UserBean();
				ub.setUserId(rs.getString(1));
				ub.setUserName(rs.getString(2));
				ub.setPassWd(rs.getString(3));
				ub.setRealName(rs.getString(4));
				ub.setPhoneNum(rs.getString(5));
				ub.setEmail(rs.getString(6));
				ub.setDepartment(rs.getString(7));
				al.add(ub);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		return al;
	}
	
	//添加用户
	public boolean addUser(String userId,String userName,String passWd,String realName,String phoneNum,String email,String department){
		boolean flag=false;
		try {
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("insert into usertable (userId,userName,passWd,realName,phoneNum,email,department) values (?,?,?,?,?,?,?)");
			ps.setString(1, userId);
			ps.setString(2,userName);
			ps.setString(3,passWd);
			ps.setString(4,realName);
			ps.setString(5,phoneNum);
			ps.setString(6,email);
			ps.setString(7,department);
			int i=ps.executeUpdate();
			if(i>0){
				flag=true;
			}
			else{
				flag=false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return flag;
	}
	
	//查询用户信息
	public UserBean getUserInfo(String userName){
		UserBean ub=new UserBean();
		try {
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("select * from usertable where userName=?");
			ps.setString(1, userName);
			rs=ps.executeQuery();
			while(rs.next()){
				ub.setUserId(rs.getString(1));
				ub.setUserName(userName);
				ub.setPassWd(rs.getString(3));
				ub.setRealName(rs.getString(4));
				ub.setPhoneNum(rs.getString(5));
				ub.setEmail(rs.getString(6));
				ub.setDepartment(rs.getString(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return ub;
	}
	public UserBean getUser(String userId){
		UserBean ub=new UserBean();
		try {
			conn=new ConnDB().getConn();
			ps=conn.prepareStatement("select * from usertable where userId=?");
			ps.setString(1, userId);
			rs=ps.executeQuery();
			while(rs.next()){
				ub.setUserId(rs.getString(1));
				ub.setUserName(rs.getString(2));
				ub.setPassWd(rs.getString(3));
				ub.setRealName(rs.getString(4));
				ub.setPhoneNum(rs.getString(5));
				ub.setEmail(rs.getString(6));
				ub.setDepartment(rs.getString(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return ub;
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
