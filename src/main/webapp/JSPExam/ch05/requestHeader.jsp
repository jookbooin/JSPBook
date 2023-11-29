<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> Implicit Objects </title> 
</head>
<body>
	<%
		String hostValue = request.getHeader("host");
		String alValue = request.getHeader("accept-language");
			out.println("<h1>" + "호스트 명  : " + 
		hostValue + "<br>" + "</h1>");
			out.println("<h1>" + "설정된 언어  : " + alValue + 
				"<br>" + "</h1>");
	%>		
   <!-- weight라고 불리는 상대적 품질 값 (en-US)을 사용해 
   표현되는 선호도에 따라 대체되는 값. -->
</body>
</html>