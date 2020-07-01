package com.kh.dream.member.model.service;


import static com.kh.dream.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.dream.common.MemberException;
import com.kh.dream.member.model.dao.MemberDAO;
import com.kh.dream.member.model.vo.Member;

public class MemberService {
	private Connection con;
	private MemberDAO mDAO = new MemberDAO();

	public int updateMember(Member m) throws MemberException {
		con = getConnection();
		
		int result = mDAO.updateMember(con, m);
		
		if( result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
		
	}

}
