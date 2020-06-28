package com.kh.dream.notice.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Notice implements Serializable {

	private static final long serialVersionUID = 123000L;

	private int nNo;
	private String nTitle;
	private String nContent;
	private Date nDate;
	
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Notice(int nNo, String nTitle, String nContent, Date nDate) {
		super();
		this.nNo = nNo;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nDate = nDate;
	}

	public Notice(String nTitle, String nContent) {
		super();
		this.nTitle = nTitle;
		this.nContent = nContent;
	}

	public int getnNo() {
		return nNo;
	}

	public void setnNo(int nNo) {
		this.nNo = nNo;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	public Date getnDate() {
		return nDate;
	}

	public void setnDate(Date nDate) {
		this.nDate = nDate;
	}

	@Override
	public String toString() {
		return "Notice [nNo=" + nNo + ", nTitle=" + nTitle + ", nContent=" + nContent + ", nDate=" + nDate + "]";
	}
	
	
	
}