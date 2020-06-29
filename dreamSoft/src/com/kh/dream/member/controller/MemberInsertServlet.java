package com.kh.dream.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.dream.common.EncodingFilter;
import com.kh.dream.member.model.service.MemberService;
import com.kh.dream.member.model.vo.Member;

/**
 * Servlet implementation class MemberInsertServlet
 */
@WebServlet("/mJoin.me")
public class MemberInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberId = request.getParameter("id");
		String memberPw = request.getParameter("pw");
		String memberName = request.getParameter("name");
		String memberPhone = request.getParameter("phone");
		String memberEmail = request.getParameter("email");
		String memberBirth = request.getParameter("birth");
		
		Member m = new Member(memberId, memberPw, memberName,
								memberPhone, memberEmail,memberBirth);	
		
		
		int result = new MemberService().insertMember(m);
		
		if(result>0) {response.sendRedirect("/index.jsp");}
		else { request.setAttribute("error-msg", "멤버 등록 실");}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
