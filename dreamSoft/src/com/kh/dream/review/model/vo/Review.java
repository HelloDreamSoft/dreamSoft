package com.kh.dream.review.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Review implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private int rNo;
	private int pNo;
	private String mId;
	private String rWriter;
	private int rLevel;
	private Date rDate;
	private String rImg;
	private int rScore;
	
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Review(int rNo, int pNo, String mId, String rWriter, int rLevel, Date rDate, String rImg, int rScore) {
		super();
		this.rNo = rNo;
		this.pNo = pNo;
		this.mId = mId;
		this.rWriter = rWriter;
		this.rLevel = rLevel;
		this.rDate = rDate;
		this.rImg = rImg;
		this.rScore = rScore;
	}
	
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getrWriter() {
		return rWriter;
	}
	public void setrWriter(String rWriter) {
		this.rWriter = rWriter;
	}
	public int getrLevel() {
		return rLevel;
	}
	public void setrLevel(int rLevel) {
		this.rLevel = rLevel;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	public String getrImg() {
		return rImg;
	}
	public void setrImg(String rImg) {
		this.rImg = rImg;
	}
	public int getrScore() {
		return rScore;
	}
	public void setrScore(int rScore) {
		this.rScore = rScore;
	}
	
	@Override
	public String toString() {
		return "Review [rNo=" + rNo + ", pNo=" + pNo + ", mId=" + mId + ", rWriter=" + rWriter + ", rLevel=" + rLevel
				+ ", rDate=" + rDate + ", rImg=" + rImg + ", rScore=" + rScore + "]";
	}
	
	

}
