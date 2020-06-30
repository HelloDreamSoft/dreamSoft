package com.kh.dream.owner.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.dream.owner.model.vo.Owner;
import static com.kh.dream.common.JDBCTemplate.*;

public class OwnerDAO {
	
	private Properties prop;
	
	public OwnerDAO() {
		prop = new Properties();
		String filePath = OwnerDAO.class.getResource("/config/owner.properties").getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertOwner(Connection con, Owner o) {
		int result = 0; 
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertOwner");
	
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, o.getOid());
			pstmt.setString(2, o.getOpwd());
			pstmt.setString(3, o.getOname());
			pstmt.setString(4, o.getOphone());
			pstmt.setString(5, o.getOemail());
			pstmt.setString(6, o.getOregno());
			pstmt.setString(7, o.getOregimg());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}

}