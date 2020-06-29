package com.kh.dream.member.model.vo;

import java.io.Serializable;

public class Member implements Serializable {

	private static final long serialVersionUID = 1004L;
		
	private String mid;
	private String mpwd;
	private String mname;
	private String mphone;
	private String memail;
	private String mbirth;
	
	public Member() {super();}
	
	// 회원 등록
	public Member(String mid, String mpwd, String mname, String mphone, String memail, String mbirth) {
		super();
		this.mid = mid;
		this.mpwd = mpwd;
		this.mname = mname;
		this.mphone = mphone;
		this.memail = memail;
		this.mbirth = mbirth;
	}

	// 로그인용 
	public Member(String mid, String mpwd) {
		super();
		this.mid = mid;
		this.mpwd = mpwd;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpwd() {
		return mpwd;
	}

	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMbirth() {
		return mbirth;
	}

	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}
	
	
	
	
	
	
}
