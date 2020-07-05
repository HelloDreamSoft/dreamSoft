package com.kh.dream.owner.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dream.owner.model.service.OwnerService;
import com.kh.dream.owner.model.vo.Owner;

/**
 * Servlet implementation class OwnerInsertServlet
 */
@WebServlet("/oJoin.ow")
public class OwnerInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OwnerInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String oId = request.getParameter("id");
		String oPwd = request.getParameter("pw");
		String oName = request.getParameter("name");
		String oPhone = request.getParameter("phone");
		String oEmail = request.getParameter("email");
		String oRegno = request.getParameter("oregno");
	
		
		Owner o = new Owner(oId, oPwd, oName,
								oPhone, oEmail,oRegno);	
		
		
		int result = new OwnerService().insertOwner(o);
		
		if(result>0) {response.sendRedirect("/dream/index.jsp");}
		else { request.setAttribute("error-msg", "멤버 등록 실패");}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
