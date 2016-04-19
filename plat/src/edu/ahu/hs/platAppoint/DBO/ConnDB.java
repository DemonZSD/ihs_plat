package edu.ahu.hs.platAppoint.DBO;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnDB {

	private Connection conn=null;
	
	//获得连接
	public Connection getConn(){
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
//			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/platform","ihs_plat","ihs_db_pwd");
			conn=DriverManager.getConnection("jdbc:mysql://rdsiemb2miemb2m.mysql.rds.aliyuncs.com:3306/r12e6iy8qq8uce6u","r12e6iy8qq8uce6u","platform");
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return conn; 
	}
}