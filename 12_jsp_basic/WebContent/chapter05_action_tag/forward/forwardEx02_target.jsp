<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>target2</title>
</head>
<body>

	<h1 align="center">포워딩 된 페이지2 입니다.</h1>
	
	<%
		String pdCd = request.getParameter("pdCd");
		String pdNm = request.getParameter("pdNm");
	%>
	
	<h3>파라메타1 : <%=pdCd %></h3>
	<h3>파라메타2 : <%=pdNm %></h3>
	
</body>
</html>