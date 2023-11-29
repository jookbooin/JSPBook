<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setProperty.jsp 파일</title>
</head>
<body>
	<jsp:useBean id="gildong" 
	class="ch04.com.dao.Person" scope="request" />
	<jsp:setProperty name="gildong" 
		property="id" value="24681357" />
	<jsp:setProperty name="gildong" 
		property="name" value="홍길동" />
	<p>	아이디 : <% out.println(gildong.getId()); %>
	<p>	이 름 : <% out.println(gildong.getName()); %>
</body>
</html>