package com.kh.dream.member.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import static com.kh.dream.common.JDBCTemplate.*;
import com.kh.dream.member.model.vo.Member;

public class MemberDAO {
	
	private Properties prop;
	
	public MemberDAO() {
		prop = new Properties();
		
		String filePath = MemberDAO.class.getResource("/config/member.properties")
				.getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertMember(Connection con, Member m) {
		int result = 0;
		PreparedStatement pstmt = null; 
		
		String sql = prop.getProperty("insertMember");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, m.getMid());
			pstmt.setString(2, m.getMpwd());
			pstmt.setString(3, m.getMname());
			pstmt.setString(4, m.getMphone());
			pstmt.setString(5, m.getMemail());
			pstmt.setString(6, m.getMbirth());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public Member selectMember(Connection con, Member m) {
		Member result = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMember");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, m.getMid());
			pstmt.setString(2, m.getMpwd());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = new Member();
				
				result.setMid(m.getMid());
				result.setMpwd(m.getMpwd());
				result.setMname(rset.getString("mname"));
				result.setMphone(rset.getString("mphone"));
				result.setMemail(rset.getString("memail"));
				result.setMbirth(rset.getString("mbirth"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return result;
		
	}

	
	
}