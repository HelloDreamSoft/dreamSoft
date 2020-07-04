package com.kh.dream.place.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dream.place.exception.PlaceException;
import com.kh.dream.place.model.service.PlaceService;
import com.kh.dream.place.model.vo.Place;
import com.kh.dream.notice.model.vo.PageInfo;

/**
 * Servlet implementation class PlaceListServlet
 */
@WebServlet("/pList.pl")
public class PlaceListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PlaceListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ArrayList<Place> list = new ArrayList<Place>();
		PlaceService pl = new PlaceService();

		int startPage;
		int endPage;
		int maxPage;
		int currentPage;
		int limit;

		currentPage = 1;

		limit = 10;

		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currnetPage"));
		}
		try {
			int listCount = pl.getListCount();

			maxPage = (int)((double)listCount / limit + 0.9);

			startPage = ((int)((double)currentPage / limit + 0.9) - 1) * limit + 1;

			endPage = startPage + limit - 1;

			if (endPage > maxPage) {
				endPage = maxPage;
			}

			// ---------- 페이지 처리는 끝

			list = pl.selectList(currentPage, limit);

			System.out.println("총 게시글 수 : " + listCount);

			list = pl.placeList();

			PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);

			request.setAttribute("list", list);
			request.setAttribute("pi", pi);

			request.getRequestDispatcher("views/place/placeList.jsp")
				   .forward(request, response);

		} catch(PlaceException e) { // 왜 얘는 트라이캐치가 안됨?? 이거  dao에 가보면 다 안 써놔서 그런거임 // OK해결

			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);

			request.setAttribute("error-msg", "공지사항 작성 실패");
			request.setAttribute("exception", e);

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
