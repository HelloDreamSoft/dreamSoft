package com.kh.dream.place.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.dream.owner.model.vo.Owner;
import com.kh.dream.place.model.service.PlaceService;
import com.kh.dream.place.model.vo.Place;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/pInsert.pl")
public class PlaceInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PlaceInsertServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=utf-8"); 
		
		System.out.println("request getContentType : " + request.getContentType());
		
		
		
		if(!ServletFileUpload.isMultipartContent(request)) {
			System.out.println("pInsert.pl : 멀티파트로 전송이 안됐는데?");
			request.setAttribute("error-msg", "멀티파트로 내놔");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
		
		System.out.println("pInsert.pl : 좋아! 멀티파트로 잘 왔어!");
		int maxSize = 1024*1024*10;
		
		
		String root = request.getServletContext().getRealPath("/resources");
		String savePath = root + "/placeUploadFiles/";
		
		MultipartRequest mre = new MultipartRequest(request, savePath, maxSize
												    ,"UTF-8", new DefaultFileRenamePolicy()
					);
		
		// 가게이름, 음식종류, 가게전번, 가게주소, 영업시간, 브레이크타임, 소개글 받기 
		
		String pName = mre.getParameter("pName");
		int cNo = Integer.parseInt(mre.getParameter("pType"));
		String pCall = mre.getParameter("pCall");
		String pAddress = mre.getParameter("pAddress");
		String pTime = mre.getParameter("pTime");
		String pBreaktime = mre.getParameter("pBreaktime");
		String pContent = mre.getParameter("pContent");
		
		String pImg = mre.getFilesystemName("thumbnailImg1");
		System.out.println("pInsert에서 IMG왔나 확인 : " + pImg);
		
		HttpSession session = request.getSession(false);
		
		// 오너 로그인이 안되니 일단 임의로 등록해놓음.
		Owner o = (Owner)session.getAttribute("owner");
		String oId = o.getoId();
		
		
		
		Place p = new Place(cNo, oId, pImg, pName, pContent, pCall, pAddress, pTime, pBreaktime);
		
		System.out.println("pInsert.pl에서 생성된 place정보 조회 : " + p);
		
		// 보내보자 보내보자~ 어디 보내보자~
		// place 생성해보자~
		PlaceService ps = new PlaceService();
		
		int result = ps.insertPlace(p);
		
		if(result > 0) {
			System.out.println("PLACE 생성 성공함");
			response.sendRedirect("index.jsp");
		} else {
			System.out.println("PLACE 생성 실패했다리...");
			RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
			
			request.setAttribute("error-msg", "플레이스 생성 실패");
			
			view.forward(request, response);
			
		}
		
		
				
				
				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
