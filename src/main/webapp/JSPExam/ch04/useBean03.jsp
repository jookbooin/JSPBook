<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean03.jsp 파일</title>
</head>
<body>
	<jsp:useBean id="gildong" 
	class="ch04.com.dao.Person" scope="request" />
		<p> 아이디: <%=gildong.getId() %>
		<p> 이름: <%=gildong.getName() %>
		
		<%		
			gildong.setId(13579);
			gildong.setName("임꺽정");
		%>		
	
		<jsp:include  page="useBean02.jsp" />
</body>
</html>

