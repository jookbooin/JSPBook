<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean01 tag</title>
</head>
<body>
	<jsp:useBean id ="calc" 
	class="ch04.com.dao.Calculator"/>
	<%
		int res = calc.process(5);
		out.print("res="+res);
	%>
</body>
</html>