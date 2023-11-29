<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>responseRefresh</title>
</head>
<body>
	<h1><p>이 페이지는 5초마다 새로고침 됩니다.</p></h1>
	<%
		response.setIntHeader("Refresh", 5);
	%>
	<h1><p><%=(new java.util.Date())%></h1>
</body>
</html>