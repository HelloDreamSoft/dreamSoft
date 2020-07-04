package com.kh.dream.place.model.vo;

import java.io.Serializable;

public class Place implements Serializable{
	
	private static final long serialVersionUID = 1452L;
	
	private int pNo;
	private int cNo;
	private String oId;
	private String pImg;
	private String pName;
	private String pContent;
	private String pCall;
	private String pAddress;
	private String pTime;
	private String pBreaktime;
	
	public Place() {
		super();
	}
	
	public Place(int pNo, int cNo, String oId, String pImg, String pName, String pContent, String pCall,
			String pAddress, String pTime, String pBreaktime) {
		super();
		this.pNo = pNo;
		this.cNo = cNo;
		this.oId = oId;
		this.pImg = pImg;
		this.pName = pName;
		this.pContent = pContent;
		this.pCall = pCall;
		this.pAddress = pAddress;
		this.pTime = pTime;
		this.pBreaktime = pBreaktime;
	}
	
	public Place(int pNo, String oId, String pImg, String pName, String pCall, String pAddress) {
		super();
		this.pNo = pNo;
		this.oId = oId;
		this.pImg = pImg;
		this.pName = pName;
		this.pCall = pCall;
		this.pAddress = pAddress;
	}

	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public String getoId() {
		return oId;
	}
	public void setoId(String oId) {
		this.oId = oId;
	}
	public String getpImg() {
		return pImg;
	}
	public void setpImg(String pImg) {
		this.pImg = pImg;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpContent() {
		return pContent;
	}
	public void setpContent(String pContent) {
		this.pContent = pContent;
	}
	public String getpCall() {
		return pCall;
	}
	public void setpCall(String pCall) {
		this.pCall = pCall;
	}
	public String getpAddress() {
		return pAddress;
	}
	public void setpAddress(String pAddress) {
		this.pAddress = pAddress;
	}
	public String getpTime() {
		return pTime;
	}
	public void setpTime(String pTime) {
		this.pTime = pTime;
	}
	public String getpBreaktime() {
		return pBreaktime;
	}
	public void setpBreaktime(String pBreaktime) {
		this.pBreaktime = pBreaktime;
	}
	
	@Override
	public String toString() {
		return "Place [pNo=" + pNo + ", cNo=" + cNo + ", oId=" + oId + ", pImg=" + pImg + ", pName=" + pName
				+ ", pContent=" + pContent + ", pCall=" + pCall + ", pAddress=" + pAddress + ", pTime=" + pTime
				+ ", pBreaktime=" + pBreaktime + "]";
	}
	
	

}
