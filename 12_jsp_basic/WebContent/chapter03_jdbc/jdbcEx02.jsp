<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
</head>
<body>

	<% 
	
		// 데이터베이스를 연결하기 위한 객체
		Connection conn = null; // java.sql.Connection
	
		// 쿼리문을 실행하기 위한 객체
		PreparedStatement pstmt = null; // java.sql.PreparedStatement
	
		// select쿼리문의 결과를 저장할 객체
		ResultSet rs = null; // java.sql.ResultSet
		
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");	
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBC_EX?serverTimezone=Asia/Seoul", "root", "1234");
			
			pstmt = conn.prepareStatement("SELECT * FROM PRODUCT");
			
			// executeQuery(); : select 쿼리문 실행 메서드
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String productCd = rs.getString("PRODUCT_CD");
				String productNm = rs.getString("PRODUCT_NM");
				int price        = rs.getInt("PRICE");
				Date regDt       = rs.getDate("REG_DT");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
		
	%>

</body>
</html>