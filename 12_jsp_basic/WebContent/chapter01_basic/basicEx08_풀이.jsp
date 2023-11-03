<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 	<%
		for(int i = 2021; i >= 1900; i--) {
	%>
			<select>
				<option><%=i %>년</option>
			</select>
	<%
		}
	%> --%>
	<select>
		<%
			for(int i = 2021; i >= 1900; i--) {
		%>
				<option value=<%=i %>><%=i %></option>
		<%
			}
		%>
	</select>년
	
	<select>
		<%
			for(int i = 1; i <= 12; i++) {
		%>
				<option value=<%=i %>><%=i %></option>
		<%
			}
		%>
	</select>월
	
	
</body>
</html>