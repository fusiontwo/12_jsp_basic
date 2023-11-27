package _09_file;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/update")
public class Update extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		String saveDirectory = "C:\\Users\\user\\git\\12_jsp_basic\\12_jsp_basic\\WebContent\\chapter09_file\\fileRepository";
		
		MultipartRequest multipartRequest = new MultipartRequest(request , saveDirectory , 1024*1024*30 , "utf-8" , new DefaultFileRenamePolicy());// 새로운 파일 업로드
		String deleteFileName = multipartRequest.getParameter("deleteFileName");
		
		new File(saveDirectory + "\\" + deleteFileName).delete(); 		// 기존 파일 삭제
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String jsScript = "<script>";
			   jsScript += "alert('수정 되었습니다.');";
			   jsScript += "location.href='fileMain';";
			   jsScript += "</script>";
		
		out.print(jsScript);
		
		
	}

}
