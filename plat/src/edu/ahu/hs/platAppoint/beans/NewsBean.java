package edu.ahu.hs.platAppoint.beans;

public class NewsBean {
	private int newsId;
	private String title;
	private String content;
	private int order;
	private String time;
	private String owner;
	public NewsBean(){
		
	}
	public NewsBean( String title, String content, int order,
			String time, String owner) {
		super();
		this.title = title;
		this.content = content;
		this.order = order;
		this.time = time;
		this.owner = owner;
	}
	
	public NewsBean(int newsId, String title, String content, int order,
			String time, String owner) {
		super();
		this.newsId = newsId;
		this.title = title;
		this.content = content;
		this.order = order;
		this.time = time;
		this.owner = owner;
	}
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getOrder() {
		return order;
	}
	public void setOrder(int order) {
		this.order = order;
	}
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	@Override
	public String toString() {
		return "NewsBean [newsId=" + newsId + ", title=" + title + ", content="
				+ content + ", order=" + order + ", time=" + time + ", owner="
				+ owner + "]";
	}
	
	

}
