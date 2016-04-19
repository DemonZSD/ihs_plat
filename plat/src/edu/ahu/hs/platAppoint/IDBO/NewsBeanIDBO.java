package edu.ahu.hs.platAppoint.IDBO;

import java.util.ArrayList;

import edu.ahu.hs.platAppoint.beans.NewsBean;

public interface NewsBeanIDBO {
	//获取所有newsinfo列表
	public ArrayList<NewsBean> getAllNews();
	public NewsBean getNewsById(int newsId);

}
