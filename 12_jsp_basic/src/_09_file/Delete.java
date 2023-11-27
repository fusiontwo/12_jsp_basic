package _09_file;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		
		String deleteFileName = request.getParameter("deleteFileName");
		// 파일의 저장 경로는 웹서비스의 접근 경로가 아닌 물리적인 실제 경로를 적어주어야 한다.
		String saveDirectory = "C:\\Users\\user\\git\\12_jsp_basic\\12_jsp_basic\\WebContent\\chapter09_file\\fileRepository";

		File file = new File(saveDirectory + "\\" + deleteFileName);  // 파일 삭제
		
		String jsScript = "";
		if (file.exists()) {  // 파일이 존재하면
			file.delete();  // 파일 삭제
			jsScript = "<script>";
			jsScript += "alert('삭제되었습니다.');";
			jsScript += "location.href='fileMain';";
			jsScript += "</script>";
		}
		else {
			jsScript = "<script>";
			jsScript += "alert('존재하지 않는 파일입니다.');";
			jsScript += "location.href='fileMain';";
			jsScript += "</script>";
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jsScript);
	}

}
