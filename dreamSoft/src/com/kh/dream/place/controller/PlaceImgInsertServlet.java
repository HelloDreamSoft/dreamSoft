package com.kh.dream.place.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class PlaceImgInsertServlet
 */
@WebServlet("/pImgInsert.pl")
public class PlaceImgInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlaceImgInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		if(!ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("error-msg", "멀티파트 형식으로 보내주세요");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request,response);
		}
		
		int maxSize = 1024*1024*10;
		
		String root = request.getServletContext().getRealPath("/resources");
		String savePath = root + "/placeUploadFiles/desc/";
		
		MultipartRequest mre = new MultipartRequest(
										request
									  , savePath
									  , maxSize
									  , "UTF-8"
									  , new DefaultFileRenamePolicy()
				);
		
		String originFileName = mre.getFilesystemName("file");
		System.out.println(originFileName);
		
		if(originFileName != null) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmss");
			
			long currentTimes = System.currentTimeMillis();
			int randomNumber = (int)(Math.random() * 10000);
			
			String name = originFileName;
			String body = ""; // 파일명 (test.jpg --> test)
			String ext = ""; // 확장 (test.jpg --> .jpg)
			
			int dot = name.lastIndexOf('.'); // test.jpg.zip
			
			if(dot != -1) {
				
				body = name.substring(0, dot);
				ext = name.substring(dot);
			} else {
				// 확장자가 없다면
				body = name;
			}
			
			String renameFileName = sdf.format(new Date(currentTimes))
					+ "_" + randomNumber + ext;
			
			// 파일명 바꾸기 하려면 File 객체의 renameTo() 사용함
			File originFile = new File(savePath + "/" + originFileName);
			File renameFile = new File(savePath + "/" + renameFileName);
			
			// 파일 이름 바꾸기 실행 >> 실패할 경우 직접 바꾸기함
			// 새 파일 만들고 원래 파일내용 읽어서 복사 기록하고
			// 원 파일 삭제함
			if (!originFile.renameTo(renameFile)) {
				int read = -1;
				byte[] buf = new byte[1024];
				// 한 번에 읽을 배열 크기 지정
				FileInputStream fin = new FileInputStream(originFile);
				FileOutputStream fout = new FileOutputStream(renameFile);
				
				while ((read = fin.read(buf, 0, buf.length)) != -1) {
					fout.write(buf, 0, read);
				}
				
				fin.close();
				fout.close();
				originFile.delete();
			}
			
			PrintWriter out = response.getWriter();
			out.print("http://localhost:8088/dream/resources/placeUploadFiles/desc/" + renameFileName);
			out.flush();
			out.close();
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
