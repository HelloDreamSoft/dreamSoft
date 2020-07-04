package com.kh.dream.owner.model.vo;

public class Owner {
	private String oId;
	private String oPwd;
	private String oName;
	private String oPhone;
	private String oEmail;
	private String oRegno;
	private String oStatus;
	private String oRegimg;
	
	public Owner() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Owner(String oId, String oPwd, String oName, String oPhone, String oEmail, String oRegno, String oStatus,
			String oRegimg) {
		super();
		this.oId = oId;
		this.oPwd = oPwd;
		this.oName = oName;
		this.oPhone = oPhone;
		this.oEmail = oEmail;
		this.oRegno = oRegno;
		this.oStatus = oStatus;
		this.oRegimg = oRegimg;
	}
	
	public Owner(String oId, String oPwd, String oName, String oPhone, String oEmail, String oRegno, String oRegimg) {
		super();
		this.oId = oId;
		this.oPwd = oPwd;
		this.oName = oName;
		this.oPhone = oPhone;
		this.oEmail = oEmail;
		this.oRegno = oRegno;
		this.oRegimg = oRegimg;
	}
	
	public Owner(String oId, String oPwd) {
		super();
		this.oId = oId;
		this.oPwd = oPwd;
	}

	public String getoId() {
		return oId;
	}

	public void setoId(String oId) {
		this.oId = oId;
	}

	public String getoPwd() {
		return oPwd;
	}

	public void setoPwd(String oPwd) {
		this.oPwd = oPwd;
	}

	public String getoName() {
		return oName;
	}

	public void setoName(String oName) {
		this.oName = oName;
	}

	public String getoPhone() {
		return oPhone;
	}

	public void setoPhone(String oPhone) {
		this.oPhone = oPhone;
	}

	public String getoEmail() {
		return oEmail;
	}

	public void setoEmail(String oEmail) {
		this.oEmail = oEmail;
	}

	public String getoRegno() {
		return oRegno;
	}

	public void setoRegno(String oRegno) {
		this.oRegno = oRegno;
	}

	public String getoStatus() {
		return oStatus;
	}

	public void setoStatus(String oStatus) {
		this.oStatus = oStatus;
	}

	public String getoRegimg() {
		return oRegimg;
	}

	public void setoRegimg(String oRegimg) {
		this.oRegimg = oRegimg;
	}

	@Override
	public String toString() {
		return "Owner [oId=" + oId + ", oPwd=" + oPwd + ", oName=" + oName + ", oPhone=" + oPhone + ", oEmail=" + oEmail
				+ ", oRegno=" + oRegno + ", oStatus=" + oStatus + ", oRegimg=" + oRegimg + "]";

	}
	

}
