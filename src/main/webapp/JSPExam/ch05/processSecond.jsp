<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%		
		request.setCharacterEncoding("utf-8");
		String pname = request.getParameter("myname");		
	%>
	<h1>
		<p>이름 : <%=pname %>	
		<p>요청 정보 길이 : <%=request.getContentLength() %>
		<p>클라이언트 전송 방식 : <%=request.getMethod() %>
		<p>요청 URI : <%=request.getRequestURI() %>
		<p>서버이름  : <%=request.getServerName() %>
	    <p>서버포트  : <%=request.getServerPort() %>	    
	</h1>
	
</body>
</html>