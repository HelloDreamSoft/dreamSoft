package com.kh.dream.notice.model.service;

import java.net.ConnectException;
import java.sql.Connection;
import java.util.ArrayList;

import com.kh.dream.common.NoticeException;
import com.kh.dream.notice.model.dao.NoticeDAO;
import com.kh.dream.notice.model.vo.Notice;

import static com.kh.dream.common.JDBCTemplate.*;

public class NoticeService {

	private Connection con;
	private NoticeDAO nDAO = new NoticeDAO();
	
	public ArrayList<Notice> noticeList() throws NoticeException {
		
		con = getConnection();
		ArrayList<Notice> list = nDAO.noticeList(con);
		
		close(con);
		
		return list;
	}

	public Notice selectOne(int nno) throws NoticeException {
		
		con = getConnection();
		Notice n = nDAO.selectOne(con, nno);
		
		close(con);
		
		return n;
	}

	public int insertNotice(Notice n) throws NoticeException {
		
		con = getConnection();
		int result = nDAO.insertNotice(con, n);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		return result;
	}

}
