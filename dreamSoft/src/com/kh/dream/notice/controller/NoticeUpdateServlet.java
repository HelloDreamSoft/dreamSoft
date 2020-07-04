package com.kh.dream.notice.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.dream.notice.exception.NoticeException;
import com.kh.dream.notice.model.service.NoticeService;
import com.kh.dream.notice.model.vo.Notice;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class NoticeUpdateServlet
 */
@WebServlet("/nUpdate.no")
public class NoticeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(!ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("error-msg", "멀티파트로 보내주세요");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
		
		int maxSize = 1024*1024*10;
		
		String root = request.getServletContext().getRealPath("/resources");
		String savePath = root + "/noticeUploadFiles/";
		
		MultipartRequest mre = new MultipartRequest(
										  request
										, savePath
										, maxSize
										, "UTF-8"
										, new DefaultFileRenamePolicy()
										);
		
		int nNo = Integer.parseInt(mre.getParameter("nNo"));
		String nTitle = mre.getParameter("nTitle");
		String nContent = mre.getParameter("nContent");
		Date nDate = Date.valueOf(mre.getParameter("nDate"));
		
		Notice n = new Notice(nNo, nTitle, nContent, nDate);
		NoticeService ns = new NoticeService();
		
		try {
			ns.updateNotice(n);
			System.out.println("수정 성공!");
			response.sendRedirect("/dream/nList.no");
			
		} catch (NoticeException e) {
			request.setAttribute("error-msg", "공지사항 게시글 수정 실패");
			request.setAttribute("exception", e);
			
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			
			view.forward(request, response);
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
