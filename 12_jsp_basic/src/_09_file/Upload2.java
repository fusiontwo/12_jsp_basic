package _09_file;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload2")
public class Upload2 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String saveDirectory = "C:\\Users\\19_web_cyr\\git\\12_jsp_basic\\12_jsp_basic\\WebContent\\chapter09_file\\fileRepository";
		
		MultipartRequest multipartRequest = new MultipartRequest(request,saveDirectory,1024 * 1024 * 100,"utf-8",new DefaultFileRenamePolicy());
		
		Enumeration<?> files = multipartRequest.getFileNames();
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String uploadDate = sdf.format(new Date());
		
		while (files.hasMoreElements()) {
			
			String element = (String)files.nextElement();
			
			if (multipartRequest.getOriginalFileName(element) != null) { // 파일을 업로드 했으면(원본파일이 있으면)
				
				String originalFileName = multipartRequest.getOriginalFileName(element);
				
				UUID uuid = UUID.randomUUID(); // UUID.randomUUID(); > 해쉬데이터 생성 메서드
				
				String renameFileName = uploadDate + "_"+ uuid + "_" + originalFileName;
				
				System.out.println("originalFileName : " + originalFileName);
				System.out.println("renameFileName : " + renameFileName);
				System.out.println();
				
				File originalFile = new File(saveDirectory + "\\" + originalFileName); // 기존에 업로드한 파일객체 생성
				File renameFile = new File(saveDirectory + "\\" + renameFileName);	   // 리네임을 적용한 파일객체 생성
				originalFile.renameTo(renameFile);									   // 기존의 업로드한 파일명을 리네임된 파일명으로 이름변경
			
			}
			
			
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String jsScript = "<script>";
			   jsScript += "alert('파일을 업로드 하였습니다.');";
			   jsScript += "location.href='fileMain';";
			   jsScript += "</script>";
		
		out.print(jsScript);
		
	}

}
