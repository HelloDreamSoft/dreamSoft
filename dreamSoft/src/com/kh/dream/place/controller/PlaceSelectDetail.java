package com.kh.dream.place.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.dream.place.exception.PlaceException;
import com.kh.dream.place.model.service.PlaceService;
import com.kh.dream.place.model.vo.Place;
@WebServlet("/selectOne.pl")
public class PlaceSelectDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PlaceSelectDetail() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pno = Integer.parseInt(request.getParameter("pno")); 
		
		Place p = new PlaceService().selectOne(pno);
		
		String page = "";
		
		if(p != null) {
			request.setAttribute("place", p);
			
			page = "views/place/placeDetail.jsp";
		} else {
			System.out.println("pSelect에서 게시물 조회 실패");
			request.setAttribute("error-msg", "플레이스 게시글 상세보기 실패");
			page = "views/comon/errorPage.jsp";
		}
		
		
		request.getRequestDispatcher(page).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
