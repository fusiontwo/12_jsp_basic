<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>servletEx04Action</title>
</head>
<body>

	<h3>session 확인 : ${sessionScope.id } / ${sessionScope.role } / ${sessionScope.isMobile } </h3>
	
	<p><a href="servletEx04MyPage">마이페이지로 이동하기</a></p>
	<p><a href="servletEx04CartList">카트리스트로 이동하기</a></p>
	
</body>
</html>