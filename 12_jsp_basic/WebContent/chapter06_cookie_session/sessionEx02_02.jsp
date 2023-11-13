<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>
	
	<% 
	
		request.setCharacterEncoding("utf-8");
	
		String id     = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		/*
			DAO 클래스에서 SELECT쿼리 인증 로직
			- (가정)성공 - 
		*/
		
		// 세션등록 > session.setAttribute("세션명", 데이터);
		session.setAttribute("id", id);
		session.setAttribute("role", "admin");
		
	%>

	<h3>로그인 되었습니다.</h3>
	<p>아이디 : <%=id %></p>
	
	<hr>
	<p><a href="sessionEx02_03.jsp">마이페이지</a></p>
	<p><a href="sessionEx02_04.jsp">장바구니</a></p>
	<p><a href="sessionEx02_05.jsp">로그아웃</a></p>
	
	
</body>
</html>