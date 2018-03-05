package com.question.manager.entity;


public class Manager {

	private Integer Mid;
	
	private String Mname;
	
	private String Mpassword;

	public Integer getMid() {
		return Mid;
	}

	public void setMid(Integer mid) {
		Mid = mid;
	}

	public String getMname() {
		return Mname;
	}

	public void setMname(String mname) {
		Mname = mname;
	}

	public String getMpassword() {
		return Mpassword;
	}

	public void setMpassword(String mpassword) {
		Mpassword = mpassword;
	}

	@Override
	public String toString() {
		return "Manager [Mid=" + Mid + ", Mname=" + Mname + ", Mpassword=" + Mpassword + "]";
	}
	
	
	
}
