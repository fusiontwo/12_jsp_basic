package _07_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/servletEx04CartList")
public class servletEx04CartList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();  // 세션 객체 생성
		
		String id = (String)session.getAttribute("id");  // session.getAttribute("세션명");  메서드를 사용하여 세션값을 가져온다.
		session.getAttribute("");
		
		/*
		 * 세션 정보를 사용하여 관련정보를 DB에서 가져오는 비즈니스 로직
		 * 
		 * 
		 */
		
		request.setAttribute("title", "카트리스트");
		request.setAttribute("name", "익명2");
		request.setAttribute("contact", "010-3333-5555");
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter07_servlet/servletEx04CartList.jsp");
		dis.forward(request, response);
	}

}
