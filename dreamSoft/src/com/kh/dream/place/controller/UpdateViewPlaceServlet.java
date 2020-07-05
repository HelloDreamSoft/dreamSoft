package com.kh.dream.place.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dream.place.model.service.PlaceService;
import com.kh.dream.place.model.vo.Place;

@WebServlet("/pUpdateView.pl")
public class UpdateViewPlaceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateViewPlaceServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		
		System.out.println("pUpdateView서블릿에서 pno출력 : " + pno);
		
		Place p = new PlaceService().selectOne(pno);
		System.out.println("pUpdateView서블릿에서 객체 p를 잘 가져왔나 확인 : " + p);
		
		String page = "";
		
		if(p != null) {
			request.setAttribute("place", p);
			
			page = "views/place/placeUpdate.jsp";
		} else {
			request.setAttribute("error-msg", "p가 없다오~!");
			page = "views/common/errorPage.jsp";
			System.out.println("pUpdateView서블릿에서 p가져오기 실패함.");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
