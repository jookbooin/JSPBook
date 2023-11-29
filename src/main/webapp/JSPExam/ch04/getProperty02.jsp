<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getProperty02.jsp 파일</title>
</head>
<body>
	<jsp:useBean id="heungmin" 
	class="ch04.com.dao.Person">
	</jsp:useBean>
	<jsp:setProperty name="heungmin" 
		property="id" value="20239876" />
	<jsp:setProperty name="heungmin" 
		property="name" value="손흥민" />
	<p>	아이디 : <jsp:getProperty property="id" 
		name="heungmin" />
	<p>	이 름 : <jsp:getProperty property="name" 
		name="heungmin" />
</body>
</html>