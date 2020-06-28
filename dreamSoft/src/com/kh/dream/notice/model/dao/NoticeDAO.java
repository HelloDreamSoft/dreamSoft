package com.kh.dream.notice.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.dream.common.NoticeException;
import com.kh.dream.notice.model.vo.Notice;

import static com.kh.dream.common.JDBCTemplate.*;

public class NoticeDAO {

	private Properties prop;
	public NoticeDAO() {
		
		prop = new Properties();
		
		String filePath = NoticeDAO.class
						 .getResource("/config/notice.properties")
						 .getPath();
		
		try {
			
			prop.load(new FileReader(filePath));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}
	
	public ArrayList<Notice> noticeList(Connection con) throws NoticeException {
		
		ArrayList<Notice> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("noticeList");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Notice>();
			
			while(rset.next()) {
				
				Notice n = new Notice();
				
				n.setnNo(rset.getInt("NNO"));
				n.setnTitle(rset.getString("NTITLE"));
				n.setnContent(rset.getString("NCONTENT"));
				n.setnDate(rset.getDate("NDATE"));
				
				list.add(n);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			throw new NoticeException("DAO에러 : " + e.getMessage());
			
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public Notice selectOne(Connection con, int nno) throws NoticeException {
		
		Notice n = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOne");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, nno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				n = new Notice();
				
				n.setnNo(rset.getInt("NNO"));
				n.setnTitle(rset.getString("NTITLE"));
				n.setnContent(rset.getString("NCONTENT"));
				n.setnDate(rset.getDate("NDATE"));
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			throw new NoticeException("DAO에러 : " + e.getMessage());
			
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return n;
	}

	public int insertNotice(Connection con, Notice n) throws NoticeException {

		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertNotice");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, "NTITLE");
			pstmt.setString(2, "NCONTENT");
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new NoticeException("DAO에러 : " + e.getMessage());
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
