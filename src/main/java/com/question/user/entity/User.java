package com.question.user.entity;

public class User {

	private Integer Uid;
	
	private String Uname;
	
	private String Upassword;
	
	private String sex;
	
	private String address;
	
	private String phone;
	
	private String head;

	public Integer getUid() {
		return Uid;
	}

	public void setUid(Integer uid) {
		Uid = uid;
	}

	public String getUname() {
		return Uname;
	}

	public void setUname(String uname) {
		Uname = uname;
	}

	public String getUpassword() {
		return Upassword;
	}

	public void setUpassword(String upassword) {
		Upassword = upassword;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head;
	}
	
	
	
}
