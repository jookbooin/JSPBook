<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>tag lib 연습</title>

</head>
<body>
	<c:forEach var="k" begin="1" end="10" step="1">
		<c:out value="${k}"/>
	</c:forEach>
</body>
</html>