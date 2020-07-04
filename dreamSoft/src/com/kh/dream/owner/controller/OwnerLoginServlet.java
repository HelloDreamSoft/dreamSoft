package com.kh.dream.owner.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.dream.owner.model.service.OwnerService;
import com.kh.dream.owner.model.vo.Owner;

/**
 * Servlet implementation class OwnerLoginServlet
 */
@WebServlet("/oLogin.ow")
public class OwnerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OwnerLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ownerId = request.getParameter("id");
		String ownerPw = request.getParameter("pw");
		String originPw = (String)request.getAttribute("originPw");
		
		Owner o = new Owner(ownerId, ownerPw);
	
		OwnerService os = new OwnerService();
		
		o = os.selectOwner(o);
		
		HttpSession session = request.getSession();
		
		System.out.println("owner:" + ownerId + "+"+ ownerPw);
		
		session.setAttribute("owner", o);
		response.sendRedirect("index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
