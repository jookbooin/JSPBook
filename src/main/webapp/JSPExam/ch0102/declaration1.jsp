<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tda</title>
</head>
<body>
<%!int data = 50;
	String makeItLower(String data){
		return data.toLowerCase();
	}
%>
<% 
out.println(data+"<br>"); 
out.println(makeItLower("MAKEITLOWER")); 
%>


</body>
</html>