package com.kh.dream.owner.model.vo;

import java.io.Serializable;

public class Owner implements Serializable {

	private static final long serialVersionUID = 1010L;
	
	private String oid;
	private String opwd;
	private String oname;
	private String ophone;
	private String oemail;
	private String oregno;
	private int ostatus;
	private String oregimg;
	
	public Owner() {super();}

	
	public Owner(String oid, String opwd, String oname, String ophone, String oemail, String oregno, int ostatus,
			String oregimg) {
		super();
		this.oid = oid;
		this.opwd = opwd;
		this.oname = oname;
		this.ophone = ophone;
		this.oemail = oemail;
		this.oregno = oregno;
		this.ostatus = ostatus;
		this.oregimg = oregimg;
	}


	public Owner(String oid, String opwd, String oname, String ophone, String oemail, String oregno, String oregimg) {
		super();
		this.oid = oid;
		this.opwd = opwd;
		this.oname = oname;
		this.ophone = ophone;
		this.oemail = oemail;
		this.oregno = oregno;
		this.oregimg = oregimg;
	}


	public Owner(String oid, String opwd) {
		super();
		this.oid = oid;
		this.opwd = opwd;
	}


	public String getOid() {
		return oid;
	}


	public void setOid(String oid) {
		this.oid = oid;
	}


	public String getOpwd() {
		return opwd;
	}


	public void setOpwd(String opwd) {
		this.opwd = opwd;
	}


	public String getOname() {
		return oname;
	}


	public void setOname(String oname) {
		this.oname = oname;
	}


	public String getOphone() {
		return ophone;
	}


	public void setOphone(String ophone) {
		this.ophone = ophone;
	}


	public String getOemail() {
		return oemail;
	}


	public void setOemail(String oemail) {
		this.oemail = oemail;
	}


	public String getOregno() {
		return oregno;
	}


	public void setOregno(String oregno) {
		this.oregno = oregno;
	}


	public int getOstatus() {
		return ostatus;
	}


	public void setOstatus(int ostatus) {
		this.ostatus = ostatus;
	}


	public String getOregimg() {
		return oregimg;
	}


	public void setOregimg(String oregimg) {
		this.oregimg = oregimg;
	}
	
	
	
	
}
