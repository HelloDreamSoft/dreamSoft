package com.kh.dream.member.model.service;

import com.kh.dream.member.model.dao.MemberDAO;
import com.kh.dream.member.model.vo.Member;
import static com.kh.dream.common.JDBCTemplate.*;

import java.sql.Connection;

public class MemberService {
	
	private MemberDAO mDAO = new MemberDAO();
	private Connection con; 
	
	public int insertMember(Member m) {
		con = getConnection();
		int result = mDAO.insertMember(con, m);
		
		if(result>0)commit(con);
		else rollback(con);
		return result;
	}

	public Member selectMember(Member m) {
		con = getConnection();
		Member result = mDAO.selectMember(con, m);
		close(con);
		return result;
	}

}
