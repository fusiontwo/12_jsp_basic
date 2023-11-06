<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>process</title>
</head>
<body>
	
	<%
		
		request.setCharacterEncoding("utf-8");
	
		String dbId = request.getParameter("dbId");
		String dbPw = request.getParameter("dbPw");
		String myId = request.getParameter("id");
		String myPw = request.getParameter("pw");
		
		String result = "로그인 실패";
		if (dbId.equals(myId) && dbPw.equals(myPw))
			result = "로그인 성공";
	%>
	
	<h2> 결과 : <%=result %> </h2>

</body>
</html>