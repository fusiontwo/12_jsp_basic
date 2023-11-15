<%@page import="_05_bean.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanPro</title>
</head>
<body>

	<%
	
		request.setCharacterEncoding("utf-8");
		
		ProductDTO productDTO1 = new ProductDTO();
	
		productDTO1.setPdCd(request.getParameter("pdCd"));
		productDTO1.setPdNm(request.getParameter("pdNm"));
		productDTO1.setDeptCd(request.getParameter("deptCd"));
		productDTO1.setDeptNm(request.getParameter("deptNm"));
		productDTO1.setMgrCd(request.getParameter("mgrCd"));
		productDTO1.setMgrNm(request.getParameter("mgrNm"));
	
		System.out.println("productDTO1 : " + productDTO1);
		
	%>
	
	
	<jsp:useBean id="productDTO2" class="_05_bean.ProductDTO">
		<jsp:setProperty property="pdCd"   name="productDTO2"/>
		<jsp:setProperty property="pdNm"   name="productDTO2"/>
		<jsp:setProperty property="deptCd" name="productDTO2"/>
		<jsp:setProperty property="deptNm" name="productDTO2"/>
		<jsp:setProperty property="mgrCd"  name="productDTO2"/>
		<jsp:setProperty property="mgrNm"  name="productDTO2"/>
	</jsp:useBean>
	
	<% 
		System.out.println("productDTO2 : " + productDTO2);
	%>

	<jsp:useBean id="productDTO3" class="_05_bean.ProductDTO">
		<jsp:setProperty property="*" name="productDTO3"/>
	</jsp:useBean>

	<% 
		System.out.println("productDTO3 : " + productDTO3);
	%>
	
	

</body>
</html>



