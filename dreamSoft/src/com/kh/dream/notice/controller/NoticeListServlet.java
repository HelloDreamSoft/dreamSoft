package com.kh.dream.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dream.common.NoticeException;
import com.kh.dream.notice.model.service.NoticeService;
import com.kh.dream.notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeListServlet
 */
@WebServlet("/nList.no")
public class NoticeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Notice> list = new ArrayList<Notice>();
		NoticeService ns = new NoticeService();
		
		int startPage;
		int endPage;
		int maxPage;
		int currentPage;
		int limit;
		
		currentPage = 1;
		
		limit = 10;
		
		try {
			list = ns.noticeList();
			request.setAttribute("list", list);
			request.getRequestDispatcher("views/notice/noticeList.jsp")
				   .forward(request, response);
			
		} catch(NoticeException e) {
			
			System.out.println("공지사항 작성 실패!");
			request.getRequestDispatcher("views/common/errorPage.jsp")
				   .forward(request, response);
			
			request.setAttribute("error-msg", "공지사항 작성 실패");
			request.setAttribute("exception", e);
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
