package com.kh.dream.notice.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
 * Servlet implementation class NoticeInsertServlet
 */
@WebServlet("/nInsert.no")
public class NoticeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		if(!ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("error-msg", "멀티파트로 내놔");
			request.getRequestDispatcher("views/common/errorPage.jsp") .forward(request,
			response); 
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
		
		String nTitle = mre.getParameter("nTitle");
		String nContent = mre.getParameter("nContent");
		
		Notice n = new Notice(nTitle, nContent);
		NoticeService ns = new NoticeService();
		
		System.out.println("n 입니다 : " + n);
		
		try {
			System.out.println("n ");
			ns.insertNotice(n);
			System.out.println("등록 성공!");
			response.sendRedirect("/dream/nList.no");
			
		} catch (NoticeException e) {
			request.setAttribute("error-msg", "공지사항 게시글 등록 실패");
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
