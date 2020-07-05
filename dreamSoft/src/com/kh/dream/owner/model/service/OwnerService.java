package com.kh.dream.owner.model.service;

import java.sql.Connection;

import com.kh.dream.owner.model.dao.OwnerDAO;
import com.kh.dream.owner.model.vo.Owner;
import static com.kh.dream.common.JDBCTemplate.*;
public class OwnerService {
	
	private Connection con;
	private OwnerDAO oDAO = new OwnerDAO();
	
	public int InsertOwner(Owner o) {
		con = getConnection();
		int result = oDAO.insertOwner(con, o);
		if(result>0)commit(con);
		else rollback(con);
		
		return result;
	}

	public Owner selectOwner(Owner o) {
		con = getConnection();
		Owner result = oDAO.selectOwner(con, o);
		close(con);
		return result;
	}

}
