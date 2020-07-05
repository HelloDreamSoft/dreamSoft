package com.kh.dream.place.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.dream.place.model.service.PlaceService;
import com.kh.dream.place.model.vo.Place;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/pUpdate.pl")
public class PlaceUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PlaceUpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PlaceService ps = new PlaceService();
		
		int maxSize = 1024 * 1024 * 10;
		
		if(! ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("error-msg", 
					             "multipart로 전송되지 않았습니다.");
			
			request.getRequestDispatcher("views/common/errorPage.jsp")
			       .forward(request, response);
		}
		
		String root = request.getServletContext().getRealPath("/");
		String savePath = root + "resources/placeUploadFiles";

		MultipartRequest mre = new MultipartRequest(
				request, savePath, maxSize, "UTF-8",
				new DefaultFileRenamePolicy()
		);
		
		int pno = Integer.parseInt(mre.getParameter("pno"));
		String pName = mre.getParameter("pName");
		int pType = Integer.parseInt(mre.getParameter("pType"));
		String pCall = mre.getParameter("pCall");
		String pAddress = mre.getParameter("pAddress");
		String pContent = mre.getParameter("pContent");
		String pTime = mre.getParameter("pTime");
		String pBreaktime = mre.getParameter("pBreaktime");
		
		String pImg = mre.getFilesystemName("thumbnailImg1");
		
		Place p = ps.selectOne(pno);
		
		if(pImg != null && pImg.length() > 0) {
			if(p.getpImg() != null) {
				File originFile = new File(savePath + "/" + p.getpImg());
				System.out.println("pUpdate중 기존의 pImg 삭제 확인 : " + originFile.delete());
			}
			
			p.setpImg(pImg);
			
		}
		
		p.setpName(pName);
		p.setcNo(pType); // pType은 cno 
		p.setpCall(pCall);
		p.setpAddress(pAddress);
		p.setpImg(pImg);
		p.setpContent(pContent);
		
		int result = new PlaceService().updatePlace(p);
		
		if(result > 0) {
			response.sendRedirect("pList.pl");
		} else {
			request.setAttribute("error-msg", "수정 실패");
			System.out.println("수정실패함.");
			request.getRequestDispatcher("views/common/errorPage.jsp")
			.forward(request, response);
		}
		
		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
