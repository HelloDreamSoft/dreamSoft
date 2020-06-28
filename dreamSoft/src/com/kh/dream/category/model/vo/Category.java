package com.kh.dream.category.model.vo;

import java.io.Serializable;

public class Category implements Serializable{

	private static final long serialVersionUID = 111L;
	
	private String cName;
	private int cNo;
	
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Category(String cName, int cNo) {
		super();
		this.cName = cName;
		this.cNo = cNo;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	
	@Override
	public String toString() {
		return "Category [cName=" + cName + ", cNo=" + cNo + "]";
	}
	
	

}
