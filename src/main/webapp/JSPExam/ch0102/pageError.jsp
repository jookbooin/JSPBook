<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="page_isErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>ErrorPage 디렉티브 태그</h4>
	에러가 발생했습니다.
	<%
		String str = null;
		out.println(str.toString());
	%>
</body>
</html>