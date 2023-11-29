<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현문 태그</title>
</head>
<body>
<p> date: <%= new java.util.Date()%></p>
<%
	int a = 10;
	int b = 20;
	int c = 30;
	
%>
<%=a+b+c %>
</body>
</html>