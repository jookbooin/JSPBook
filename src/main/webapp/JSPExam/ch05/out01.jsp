<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Implicit Objects</title>
</head>
<body>
	<h1>
		<p>
			<%			
				out.println("오늘의 날짜 및 시각 " + "<br>");		
				out.println(java.util.Calendar.getInstance().getTime());
			%>
		</p>
	</h1>
</body>
</html>