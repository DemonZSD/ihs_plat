package edu.ahu.hs.platAppoint.beans;

public class RoomBean {

	private String roomId;
	private String roomNo;
	private String roomType;
	private int TypeId;
	private String function;
	private String addr;
	private String price;
	private String adminId;
	private String adminName;
	private String adminPhone;
	
	
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	private int contain;
	
	public int getContain() {
		return contain;
	}
	public void setContain(int contain) {
		this.contain = contain;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public int getTypeId() {
		return TypeId;
	}
	public void setTypeId(int typeId) {
		TypeId = typeId;
	}
	public String getFunction() {
		return function;
	}
	public void setFunction(String function) {
		this.function = function;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPhone() {
		return adminPhone;
	}
	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone;
	}
	
}
