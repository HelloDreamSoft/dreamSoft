package com.kh.dream.place.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.dream.place.exception.PlaceException;
import com.kh.dream.place.model.dao.PlaceDAO;
import com.kh.dream.place.model.vo.Place;

import static com.kh.dream.common.JDBCTemplate.*;

public class PlaceService {
	
	private Connection con;
	private PlaceDAO pDAO = new PlaceDAO();
	
	public ArrayList<Place> placeList(String category, String keyword, int currentPage, int limit) throws PlaceException {
		
		con = getConnection();
		ArrayList<Place> list = pDAO.placeList(con);
		
		if(keyword != null && (keyword.length() > 0 && !keyword.contentEquals("null"))
				&& category != null && (category.length() > 0 && !category.contentEquals("null"))){
			list = pDAO.searchList(con, category, keyword, currentPage, limit);
			
		} else if(keyword != null && (keyword.length() > 0 && !keyword.contentEquals("null"))
				&& category != null && (category.length() > 0 && !category.contentEquals("null"))) {
			list = pDAO.searchKeyList(con, keyword, currentPage, limit);
			
		} else if(keyword == null && category != null && (category.length() > 0 && !category.contentEquals("null"))) {
			list = pDAO.searchCatList(con, category, currentPage, limit);
			
		} else {
			list = pDAO.selectList(con, currentPage, limit);
		}
		
		close(con);
		
		return list;
	}
	
	public Place selectOne(int pno) throws PlaceException {
		
		con = getConnection();
		
		Place p = pDAO.selectOne(con, pno);
		
		close(con);
		
		return p;
	}
	
	public int insertPlace(Place p) throws PlaceException {
		
		con = getConnection();
		int result = pDAO.insertPlace(con, p);
		
		System.out.println("서비스입니다 : " + result);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
	
	public int updatePlace(Place p) throws PlaceException {
		
		con = getConnection();
		int result = pDAO.updatePlace(con, p);
		
		System.out.println("서비스입니다. " + result);
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
		
	}
	
	public int deletePlace(int pno) throws PlaceException {
		
		con = getConnection();
		
		int result = pDAO.deletePlace(con, pno);
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public int getListCount(String category, String keyword) throws PlaceException{
		
		con = getConnection();
		
		int result = 0;
		
		if(keyword != null && (keyword.length() > 0 && !keyword.contentEquals("null"))
				&& category != null && (category.length() > 0 && !category.contentEquals("null"))){
			result = pDAO.getSearchListCount(con, category, keyword);
			
		} else if(keyword != null && (keyword.length() > 0 && !keyword.contentEquals("null"))
				&& category != null && (category.length() > 0 && !category.contentEquals("null"))) {
			result = pDAO.getKeyListCount(con, keyword);
			
		} else if(keyword == null && category != null && (category.length() > 0 && !category.contentEquals("null"))) {
			result = pDAO.getCatListCount(con, category);
			
		} else {
			result = pDAO.getListCount(con);
		}
		
		
		
		close(con);
		
		return result;
		
		
		
	}

	public ArrayList<Place> selectList(int currentPage, int limit) throws PlaceException {

		con = getConnection();
		
		ArrayList<Place> list = pDAO.selectList(con, currentPage, limit);
		
		close(con);
		
		return list;
	}

}
