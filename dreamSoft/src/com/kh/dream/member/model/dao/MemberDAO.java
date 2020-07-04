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
			
			pstmt.setString(1, m.getmId());
			pstmt.setString(2, m.getmPwd());
			pstmt.setString(3, m.getmName());
			pstmt.setString(4, m.getmPhone());
			pstmt.setString(5, m.getmEmail());
			pstmt.setString(6, m.getmBirth());
			
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
			pstmt.setString(1, m.getmId());
			pstmt.setString(2, m.getmPwd());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = new Member();
				
				result.setmId(m.getmId());
				result.setmPwd(m.getmPwd());
				result.setmName(rset.getString("mname"));
				result.setmPhone(rset.getString("mphone"));
				result.setmEmail(rset.getString("memail"));
				result.setmBirth(rset.getString("mbirth"));
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
