package com.kh.dream.place.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dream.place.exception.PlaceException;
import com.kh.dream.place.model.service.PlaceService;
import com.kh.dream.place.model.vo.Place;

/**
 * Servlet implementation class PlaceSelectOneServlet
 */
@WebServlet("/selectOne.pl")
public class PlaceSelectDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlaceSelectDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PlaceService ps = new PlaceService();
		
		int pno = Integer.parseInt(request.getParameter("pno")); 
		
		try {
			
			Place p = ps.selectOne(pno);
			
			request.setAttribute("place", p);
			request.getRequestDispatcher("views/place/placeDetail.jsp")
				   .forward(request, response);
			
		} catch (PlaceException e) {
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
