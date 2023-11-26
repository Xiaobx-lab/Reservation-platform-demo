package com.ls.pojo;

public class Users {
	private String user;
	private String sex;
	private String phone;
	private String address;
	private String note;
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	@Override
	public String toString() {
		return "Users [ user=" + user + ", sex=" + sex + ", phone=" + phone + ", address=" + address
				+ ", note=" + note + "]";
	}
	
}