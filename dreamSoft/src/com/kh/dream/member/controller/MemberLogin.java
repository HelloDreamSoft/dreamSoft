package com.kh.dream.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.dream.member.model.service.MemberService;
import com.kh.dream.member.model.vo.Member;

/**
 * Servlet implementation class MemberLogin
 */
@WebServlet("/mLogin.me")
public class MemberLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String memberId = request.getParameter("id");
		String memberPw = request.getParameter("pw");
		String originPw = (String)request.getAttribute("originPw");
		
		Member m = new Member(memberId, memberPw);
		
		MemberService ms = new MemberService();
		
		m = ms.selectMember(m);
		
		HttpSession session = request.getSession();
		
		session.setAttribute("member", m);
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
