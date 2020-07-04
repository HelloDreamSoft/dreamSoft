package com.kh.dream.owner.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
			
			pstmt.setString(1, o.getoId());
			pstmt.setString(2, o.getoPwd());
			pstmt.setString(3, o.getoName());
			pstmt.setString(4, o.getoPhone());
			pstmt.setString(5, o.getoEmail());
			pstmt.setString(6, o.getoRegno());
			pstmt.setString(7, o.getoRegimg());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}

	public Owner selectOwner(Connection con, Owner o) {
		Owner result = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOwner");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, o.getoId());
			pstmt.setString(2, o.getoPwd());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = new Owner();
				
				result.setoId(o.getoId());
				result.setoPwd(o.getoPwd());
				result.setoName(rset.getString("oname"));
				result.setoPhone(rset.getString("ophone"));
				result.setoEmail(rset.getString("oemail"));
				result.setoRegno(rset.getString("oregno"));
				result.setoRegimg(rset.getString("oregimg"));
				
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}

}
