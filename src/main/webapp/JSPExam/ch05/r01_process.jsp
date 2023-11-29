<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> r01_process.jsp 파일</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String userid = 
				request.getParameter("id");
		String password = 
				request.getParameter("passwd");
	%>
	<h1>
		<p>아이디 : <%=userid%>
		<p>비밀번호 : <%=password%>
	</h1>
</body>
</html>



