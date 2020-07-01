package com.kh.dream.member.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.dream.common.MemberException;
import com.kh.dream.member.model.vo.Member;

import static com.kh.dream.common.JDBCTemplate.*;

public class MemberDAO {
	
	private Properties prop;
	
	public MemberDAO() {
		prop = new Properties();
		
		String filePath = MemberDAO.class
				          .getResource("/config/member.properties")
				          .getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}

	public int updateMember(Connection con, Member m) throws MemberException {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMember");
		
		try {
			
			pstmt = con.prepareStatement(sql);
			
//			pstmt.setString(1, m.);
//			pstmt.setString(2, m.);
//			pstmt.setString(3, m.);
//			pstmt.setString(4, m.);
//			pstmt.setString(5, m.);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
			System.out.println("MemberDAO에서 updateM을 하던 중 SQL에러 발생");
			
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}

}
