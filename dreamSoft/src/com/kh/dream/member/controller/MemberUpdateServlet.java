package com.kh.dream.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.dream.common.MemberException;
import com.kh.dream.member.model.service.MemberService;
import com.kh.dream.member.model.vo.Member;

@WebServlet("/mUpdate.me")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberUpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mName = request.getParameter("mName");
		String mPhone = request.getParameter("mPhone");
		String mEmail = request.getParameter("mEmail");
		String mBirth = request.getParameter("mBirth");
		String mPwd = request.getParameter("mPwd");
		
		String mPwck = request.getParameter("mPwck");
		
		HttpSession session = request.getSession(false);
		
		Member m = (Member)session.getAttribute("member");
		
		m.setmName(mName);
		m.setmPhone(mPhone);
		m.setmEmail(mEmail);
		m.setmBirth(mBirth);
		m.setmPwd(mPwd);
		
		System.out.println("mUpdate서블릿에서 변경된 회원 정보 확인 : " + m);
		
		MemberService ms = new MemberService();
		
		try {
			ms.updateMember(m);
			System.out.println("mUpdate서블릿에서 회원정보 수정 완료!");
			response.sendRedirect("index.jsp");
			
		} catch (MemberException e) {
			e.printStackTrace();
			
			System.out.println("회원정보 수정 중 에러 발생.");
			request.setAttribute("exception", e);
			
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
		
		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
