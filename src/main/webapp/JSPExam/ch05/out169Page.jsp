<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Implicit Objects</title>
</head>
<body>
	<h1>
		<%
			out.println("Hello!") ;
			out.println("Java Server Pages �Դϴ�.") ;
		%>
		
		<%
			out.println("<br>");
			out.println("Hello!" + "<br>") ;
			out.println("Java Server Pages �Դϴ�.") ;
		%>
	</h1>
</body>
</html>