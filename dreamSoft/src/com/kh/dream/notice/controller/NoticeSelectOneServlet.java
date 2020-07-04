package com.kh.dream.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dream.notice.exception.NoticeException;
import com.kh.dream.notice.model.service.NoticeService;
import com.kh.dream.notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeSelectOneServlet
 */
@WebServlet("/selectOne.no")
public class NoticeSelectOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeSelectOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		NoticeService ns = new NoticeService();
		
		int nno = Integer.parseInt(request.getParameter("nno")); 
		
		try {
			
			Notice n = ns.selectOne(nno);
			
			request.setAttribute("notice", n);
			request.getRequestDispatcher("views/notice/noticeView.jsp")
				   .forward(request, response);
			
		} catch (NoticeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			request.setAttribute("error-msg", "공지사항 상세보기 실패");
			request.setAttribute("exception", e);
			request.getRequestDispatcher("views/common/errorPage.jsp")
				   .forward(request, response);
			
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
