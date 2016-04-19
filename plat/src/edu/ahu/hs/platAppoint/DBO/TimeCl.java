package edu.ahu.hs.platAppoint.DBO;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import edu.ahu.hs.platAppoint.beans.TimeList;

public class TimeCl {

	/**
	 * 
	 * @param current 当前日期时间
	 * @return
	 */
	public ArrayList<TimeList> getDateList(Date current){
		ArrayList<TimeList> list = new ArrayList<TimeList>();
		//格式化日期 
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
		//格式化星期  
		SimpleDateFormat sdfWeek = new SimpleDateFormat("EEE");
		Date fdate;
		Long fTime=current.getTime();
		
		//两周循环显示
		for(int i=0;i<14;i++){
			fdate = new Date();
			fdate.setTime(fTime+ (i * 24 * 3600000));
			TimeList tl=new TimeList();
			//获取当前日期
			tl.setDate(sdfDate.format(fdate));
			//获取当前星期几     格式‘星期*’
			tl.setWeek(sdfWeek.format(fdate));
			list.add(tl);
		}
		
		return list;
	}
}
