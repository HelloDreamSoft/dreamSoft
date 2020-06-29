package com.kh.dream.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.dream.notice.exception.NoticeException;
import com.kh.dream.notice.model.service.NoticeService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class NoticeDeleteServlet
 */
@WebServlet("/nDelete.no")
public class NoticeDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (!ServletFileUpload.isMultipartContent(request)) {

			request.setAttribute("error-msg", "멀티 파트 형식으로 보내주세요~");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}

		// 최대 크기 설정
		int maxSize = 1024 * 1024 * 10;

		// 저장할 경로 설정
		String root = request.getServletContext().getRealPath("/resources");
		String savePath = root + "/noticeUploadFiles/";

		MultipartRequest mre = new MultipartRequest(
										request
									  , savePath
									  , maxSize
									  , "UTF-8"
									  , new DefaultFileRenamePolicy()
		);
		
		
		int nno = Integer.parseInt(mre.getParameter("nNo"));
		NoticeService ns = new NoticeService();
		System.out.println(nno);
		
		try {
			
			ns.deleteNotice(nno);
			
			response.sendRedirect("/dream/nList.no");
			
		} catch (NoticeException e) {
			
			request.setAttribute("error-msg", "공지사항 삭제 실패");
			request.setAttribute("exception", e);
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			
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
