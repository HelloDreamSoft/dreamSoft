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
				p.setcNo(rset.getInt("CNO"));
				p.setoId(rset.getString("OID"));
				p.setpImg(rset.getString("PIMG"));
				p.setpName(rset.getString("PNAME"));
				p.setpContent(rset.getString("PCONTENT"));
				p.setpCall(rset.getString("PCALL"));
				p.setpAddress(rset.getString("PADDRESS"));
				p.setpTime(rset.getString("PTIME"));
				p.setpBreaktime(rset.getString("PBREAKTIME"));
				
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
	
	public int insertPlace(Connection con, Place p) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertPlace");
		
//		insertPlace=INSERT INTO PLACE VALUES (SEQ_PNO.NEXTVAL, ?, ?, ?, ?, ?, ?, ?)
		// 1:CNO, 2: OID, 3:PIMG, 4:PNAME, 5:PCONTENT, 6:PCALL, 7:PADDRESS, 8:PTIME, 9:PBREAKTIME
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, p.getcNo());
			pstmt.setString(2, p.getoId());
			pstmt.setString(3, p.getpImg());
			pstmt.setString(4, p.getpName());
			pstmt.setString(5, p.getpContent());
			pstmt.setString(6, p.getpCall());
			pstmt.setString(7, p.getpAddress());
			pstmt.setString(8, p.getpTime());
			pstmt.setString(9, p.getpBreaktime());
			
			
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("PlaceDAO에러 : pInsert도중 문제 발생함 : " + e.getMessage());
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
	
	public int getListCount(Connection con) throws PlaceException {
		
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

	

	public ArrayList<Place> selectList(Connection con, int currentPage, int limit) throws PlaceException {
		
		ArrayList<Place> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit -1;
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Place>();
			
			while(rset.next()) {
				Place p = new Place();
				
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
}