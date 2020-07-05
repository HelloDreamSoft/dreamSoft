package com.kh.dream.owner.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.dream.owner.model.vo.Owner;
import com.kh.dream.owner.model.service.OwnerService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
		int maxSize = 1024 * 1024 * 10;
		if(! ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("error-msg", "multipart로 전송되지 않았습니다.");
			request.getRequestDispatcher("").forward(request,response);
		}
		String root = request.getServletContext().getRealPath("/");
		String savePath= root +"resources/oregimgUploadFiles";
		
		MultipartRequest mre = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		String oId = mre.getParameter("id");
		String oPw = mre.getParameter("pw");
		String oName= mre.getParameter("name");
		String oPhone= mre.getParameter("phone");
		String oEmail = mre.getParameter("email");
		String oRegno= mre.getParameter("oregno");
		String filename = mre.getFilesystemName("file");
		
		Owner o = new Owner(oId, oPw, oName, oPhone, oEmail, oRegno, filename);
		
		int result = new OwnerService().InsertOwner(o);
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
