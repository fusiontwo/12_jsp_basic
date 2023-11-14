<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward2</title>
</head>
<body>

	<!-- javascript -->
	<script>
	
/* 		var pdCd = "0x001";
		var pdNm = "keyboard";
		
		var url = "forwardEx02_target.jsp?pdCd="+pdCd+"&pdNm="+pdNm;
		
		var url = "forwardEx02_target.jsp";
			url += "?pdCd=" + pdCd;
			url += "&pdNm=" + pdNm;
		
		location.href = url; */
	
	</script>
	<!-- jsp(java) -->
	<%
/* 		String pdCd = "0x002";
		String pdNm = "mouse";
		
		String url = "forwardEx02_target.jsp";
			   url += "?pdCd=" + pdCd;
			   url += "&pdNm=" + pdNm;
			   
		response.sendRedirect(url); */
	%>

	<!-- action tag -->
	<jsp:forward page="forwardEx02_target.jsp">
		<jsp:param value="0x003"    name="pdCd"/>
		<jsp:param value="long pad" name="pdNm"/>
	</jsp:forward>
</body>
</html>


