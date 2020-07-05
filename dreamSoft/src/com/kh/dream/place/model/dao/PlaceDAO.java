package com.kh.dream.place.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.dream.notice.exception.NoticeException;
import com.kh.dream.notice.model.vo.Notice;
import com.kh.dream.place.exception.PlaceException;
import com.kh.dream.place.model.vo.Place;
import static com.kh.dream.common.JDBCTemplate.*;

public class PlaceDAO {
	
	private Properties prop;
	public PlaceDAO() {
	
		prop = new Properties();
		
		String filePath = PlaceDAO.class
						  .getResource("/config/place.properties")
						  .getPath();
		
		try {
			
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}
	
	public ArrayList<Place> placeList(Connection con) throws PlaceException {
		// 레벨 1
		ArrayList<Place> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("placeList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Place>();
			
			while(rset.next()) {
				
				Place p = new Place();
				
				p.setpNo(rset.getInt("PNO"));
				p.setcName(rset.getString("CNAME"));
				p.setoId(rset.getString("OID"));
				p.setpImg(rset.getString("PIMG"));
				p.setpName(rset.getString("PNAME"));
				p.setpCall(rset.getString("PCALL"));
				p.setpAddress(rset.getString("PADDRESS"));
				
				list.add(p);
			}
		}  catch (SQLException e) {
			
			e.printStackTrace();
			throw new PlaceException("DAO에러 : " + e.getMessage());
		
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public Place selectOne(Connection con, int pno) throws PlaceException {
		
		Place p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOne");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, pno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Place();
			
			p.setpNo(rset.getInt("PNO"));
			p.setcNo(rset.getInt("CNO"));
			p.setoId(rset.getString("OID"));
			p.setpImg(rset.getString("PIMG"));
			p.setpName(rset.getString("PNAME"));
			p.setpContent(rset.getString("PCONTENT"));
			p.setpCall(rset.getString("PCALL"));
			p.setpAddress(rset.getString("PADDRESS"));
			p.setpTime(rset.getString("PTIME"));
			p.setpBreaktime(rset.getString("PBREAKTIME"));
			
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
			throw new PlaceException("DAO에러 : " + e.getMessage());
			
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return p;
	}
	
	public int insertPlace(Connection con, Place p) throws PlaceException {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertPlace");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, p.getpNo());
			pstmt.setInt(2, p.getcNo());
			pstmt.setString(3, p.getoId());
			pstmt.setString(4, p.getpImg());
			pstmt.setString(5, p.getpName());
			pstmt.setString(6, p.getpContent());
			pstmt.setString(7, p.getpCall());
			pstmt.setString(8, p.getpAddress());
			pstmt.setString(8, p.getpTime());
			pstmt.setString(8, p.getpBreaktime());
			
			
			
			result = pstmt.executeUpdate();
			
			System.out.println("다오입니다 : " + result);
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PlaceException("DAO에러 : " + e.getMessage());
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int updatePlace(Connection con, Place p) throws PlaceException {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateNotice");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, p.getpNo());
			pstmt.setInt(2, p.getcNo());
			pstmt.setString(3, p.getoId());
			pstmt.setString(4, p.getpImg());
			pstmt.setString(5, p.getpName());
			pstmt.setString(6, p.getpContent());
			pstmt.setString(7, p.getpCall());
			pstmt.setString(8, p.getpAddress());
			pstmt.setString(8, p.getpTime());
			pstmt.setString(8, p.getpBreaktime());
			
			result = pstmt.executeUpdate();
			System.out.println("result 나와요? : " + result);
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new PlaceException("DAO에러 : " + e.getMessage());
		} finally {
			close(pstmt);
		}
		
		return result;
	
	}
		
	public int deletePlace(Connection con, int pno) throws PlaceException {
			
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deletePlace");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, pno);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
			throw new PlaceException("DAO에러 : " + e.getMessage());
		}
		
		return result;
		
	}
	
	public ArrayList<Place> selectList(Connection con, int currentPage, int limit) throws PlaceException {
		// 카테고리, 검색 없는 페이징처리
		ArrayList<Place> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit -1;
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Place>();
			
			while(rset.next()) {
				Place p = new Place();
				
				p.setpNo(rset.getInt("PNO"));
				p.setcName(rset.getString("CNAME"));
				p.setoId(rset.getString("OID"));
				p.setpImg(rset.getString("PIMG"));
				p.setpName(rset.getString("PNAME"));
				p.setpCall(rset.getString("PCALL"));
				p.setpAddress(rset.getString("PADDRESS"));
				
				list.add(p);
			}
		
		} catch(SQLException e) {
			  e.printStackTrace();
			throw new PlaceException("DAO에러 : " + e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}
				
		return list;
	}

	public ArrayList<Place> searchList(Connection con, String category, String keyword, int currentPage, int limit) throws PlaceException {
		// 카테고리, 검색 있는 페이징 처리
		ArrayList<Place> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			
			int cat = Integer.parseInt(category);
			
			pstmt.setString(1, keyword);
			pstmt.setInt(2, cat);
			pstmt.setInt(3, endRow);
			pstmt.setInt(4, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Place>();
			
			while(rset.next()) {
				Place p = new Place();
				
				p.setpNo(rset.getInt("PNO"));
				p.setcName(rset.getString("CNAME"));
				p.setoId(rset.getString("OID"));
				p.setpImg(rset.getString("PIMG"));
				p.setpName(rset.getString("PNAME"));
				p.setpCall(rset.getString("PCALL"));
				p.setpAddress(rset.getString("PADDRESS"));
				
				list.add(p);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
			throw new PlaceException("DAO에러 : " + e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public ArrayList<Place> searchKeyList(Connection con, String keyword, int currentPage, int limit) throws PlaceException {
		// 검색 있는 페이징 처리
		ArrayList<Place> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchKeyList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			
			pstmt.setString(1, keyword);
			pstmt.setInt(2, endRow);
			pstmt.setInt(3, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Place>();
			
			while(rset.next()) {
				Place p = new Place();
				
				p.setpNo(rset.getInt("PNO"));
				p.setcName(rset.getString("CNAME"));
				p.setoId(rset.getString("OID"));
				p.setpImg(rset.getString("PIMG"));
				p.setpName(rset.getString("PNAME"));
				p.setpCall(rset.getString("PCALL"));
				p.setpAddress(rset.getString("PADDRESS"));
				
				list.add(p);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
			throw new PlaceException("DAO에러 : " + e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public ArrayList<Place> searchCatList(Connection con, String category, int currentPage, int limit) throws PlaceException {
		// 카테고리 있는 페이징 처리
		ArrayList<Place> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchCatList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			
			int cat = Integer.parseInt(category);
			
			pstmt.setInt(1, cat);
			pstmt.setInt(2, endRow);
			pstmt.setInt(3, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Place>();
			
			while(rset.next()) {
				Place p = new Place();
				
				p.setpNo(rset.getInt("PNO"));
				p.setcName(rset.getString("CNAME"));
				p.setoId(rset.getString("OID"));
				p.setpImg(rset.getString("PIMG"));
				p.setpName(rset.getString("PNAME"));
				p.setpCall(rset.getString("PCALL"));
				p.setpAddress(rset.getString("PADDRESS"));
				
				list.add(p);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
			throw new PlaceException("DAO에러 : " + e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}


	public int getListCount(Connection con) throws PlaceException {
		// 검색, 카테고리 없는 페이지 수 카운트
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("getListCount");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
			throw new PlaceException("DAO에러 : " + e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	
	public int getSearchListCount(Connection con, String category, String keyword) throws PlaceException {
		// 검색, 카테고리 있는 페이지 수 카운트
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("getSearchListCount");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			int cat = Integer.parseInt(category);
			
			pstmt.setString(1, keyword);
			pstmt.setInt(2, cat);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
			throw new PlaceException("DAO에러 : " + e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	public int getKeyListCount(Connection con, String keyword) throws PlaceException {
		// 검색, 카테고리 있는 페이지 수 카운트
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("getKeyListCount");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, keyword);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
			throw new PlaceException("DAO에러 : " + e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	public int getCatListCount(Connection con, String category) throws PlaceException {
		// 검색, 카테고리 있는 페이지 수 카운트
		
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("getCatListCount");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			int cat = Integer.parseInt(category);
			
			pstmt.setInt(2, cat);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
			throw new PlaceException("DAO에러 : " + e.getMessage());
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

}