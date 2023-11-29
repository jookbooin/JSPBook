<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>include 페이지</h1>
<jsp:include page="include_date.jsp" flush="false"/>
<h1><p>--include.jsp 마지막 부분</h1>
</body>
</html>