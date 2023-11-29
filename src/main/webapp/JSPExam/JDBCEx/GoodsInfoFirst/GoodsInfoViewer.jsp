<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodsInfo 테이블 내용 보여주기</title>
</head>
<body>
	<H1>GoodsInfo 테이블의 상품 정보</H1>

	<%
	request.setCharacterEncoding("UTF-8");
	String codeRes = request.getParameter("code");
	String titleRes = request.getParameter("title");
	String writerRes = request.getParameter("writer");
	String priceRes = request.getParameter("price");
	out.println("<h1> code : " + codeRes + "</h1>");
	out.println("<h1> title : " + titleRes + "</h1>");
	out.println("<h1> writer : " + writerRes + "</h1>");
	out.println("<h1> price : " + priceRes + "</h1>");
	%>

</BODY>
</html>