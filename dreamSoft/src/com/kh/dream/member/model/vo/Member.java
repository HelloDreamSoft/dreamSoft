package com.kh.dream.member.model.vo;

import java.io.Serializable;

public class Member implements Serializable{

	private static final long serialVersionUID = 11L;
	
	private String mId;
	private String mPwd;
	private String mName;
	private String mPhone;
	private String mEmail;
	private String mBirth;
	
	public Member() {
		super();
	}

	public Member(String mId, String mPwd, String mName, String mPhone, String mEmail, String mBirth) {
		super();
		this.mId = mId;
		this.mPwd = mPwd;
		this.mName = mName;
		this.mPhone = mPhone;
		this.mEmail = mEmail;
		this.mBirth = mBirth;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmPwd() {
		return mPwd;
	}

	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmPhone() {
		return mPhone;
	}

	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public String getmBirth() {
		return mBirth;
	}

	public void setmBirth(String mBirth) {
		this.mBirth = mBirth;
	}

	@Override
	public String toString() {
		return "Member [mId=" + mId + ", mPwd=" + mPwd + ", mName=" + mName + ", mPhone=" + mPhone + ", mEmail="
				+ mEmail + ", mBirth=" + mBirth + "]";
	}
	
	
	
	
	

}

