<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table border = "1">
		<%
			int i = 1;
			while(i <= 10) {
				if (i % 2 == 0) {
					
		%>		
				<tr>
					<td style="background-color: skyblue;"><%=i %> 번</td>
				</tr>
		<%	
				}
				
				else {
		%>
				<tr>
					<td style="background-color: yellow;"><%=i %> 번</td>
				</tr>		
		<%					
				}
				i++;
			}
		%>
	</table>
</body>
</html>