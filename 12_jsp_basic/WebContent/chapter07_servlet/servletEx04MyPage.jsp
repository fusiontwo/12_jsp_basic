<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>servletEx04MyPage</title>
</head>
<body>
	
	<h3>세션 확인</h3>
	<p>${sessionScope.id }</p>
	<p>${sessionScope.role }</p>
	<p>${sessionScope.isMobile }</p>
	
	<hr>
	
	<h3>리퀘스트 확인</h3>
<%--<p>${requestScope.title }</p>
	<p>${requestScope.name }</p>
	<p>${requestScope.contact }</p> --%>

	<p>${title }</p>
	<p>${name }</p>
	<p>${contact }</p>
		
</body>
</html>