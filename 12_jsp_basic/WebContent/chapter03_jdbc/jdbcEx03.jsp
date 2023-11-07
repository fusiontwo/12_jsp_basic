<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert,update,delete</title>
</head>
<body>

	<% 
	
		Connection conn         = null;
		PreparedStatement pstmt = null;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");	
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBC_EX?serverTimezone=Asia/Seoul", "root", "1234");

			// 선처리문 쿼리 작성
			String sql = "INSERT INTO PRODUCT VALUES(?,?,?,NOW())";
			pstmt = conn.prepareStatement(sql);    // INSERT INTO PRODUCT VALUES(?,?,?,NOW())
			
			// 선처리문 쿼리 완성
			pstmt.setString(1, "테스트 상품코드"); // INSERT INTO PRODUCT VALUES("테스트 상품코드",?,?,NOW())
			pstmt.setString(2, "테스트 상품이름"); // INSERT INTO PRODUCT VALUES("테스트 상품코드","테스트 상품이름",?,NOW())
			pstmt.setInt(3, 10000);				   // INSERT INTO PRODUCT VALUES("테스트 상품코드","테스트 상품이름",10000,NOW())	
			
			//INSERT , UPDATE , DELETE 쿼리문 실행 : executeUpdate();
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pstmt.close();
			conn.close();
		}
		
	%>



</body>
</html>