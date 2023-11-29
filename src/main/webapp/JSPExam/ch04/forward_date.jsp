<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward_date</title>
</head>
<body>
	<h1>forward_date 파일입니다.</h1>
	<p>오늘의 날짜와 시간</p>
	<p><%=(new java.util.Date()).toLocaleString()%></p>
	<p><%=(new java.util.Date())%></p>
	</body>
</html>