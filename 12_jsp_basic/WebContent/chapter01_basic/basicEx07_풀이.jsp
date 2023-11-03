<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Random ran = new Random();
		int randomNum = ran.nextInt(3);
		
		if (randomNum == 0) {
	%>
			<select>
				<option>HTML5</option>
				<option>CSS3</option>
				<option>JAVASCRIPT</option>
			</select>
	<%		
		}
		else if (randomNum == 1) {
	%>
		
			<input type = "checkbox" name = "chkLanguages" value="html5">HTML5 &emsp;
			<input type = "checkbox" name = "chkLanguages" value="css3">CSS3 &emsp;
			<input type = "checkbox" name = "chklanguages" value="javascript">JAVASCRIPT &emsp;
	<%	
		}
		else {
	%>
			<input type = "radio" name = "rdoLanguages" value="html5">HTML5 &emsp;
			<input type = "radio" name = "rdoLanguages" value="css3">CSS3 &emsp;
			<input type = "radio" name = "rdoLanguages" value="javascript">JAVASCRIPT &emsp;
	<%		
		}
	%>
</body>
</html>