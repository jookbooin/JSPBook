<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RegisterResult</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String name;
	String password;

	Connection conn = null;
	Statement stmt = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul",
		"root", "worldcup7!");
		if (conn == null)
			throw new Exception("<h1> 데이터베이스에 연결할 수 없습니다.<BR>");
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from userinfo where id = '" + id + "';");

		if (!rs.next())
			throw new Exception("userinfo (" + id + ")에 해당하는 데이터가 없습니다.");

		id = rs.getString("id");
		name = rs.getString("name");
		password = rs.getString("password");

	} finally {
		try {
			stmt.close();
		} catch (Exception ignored) {
		}
		try {
			conn.close();
		} catch (Exception ignored) {
		}
	}

	out.println("<h1> 이름 : " + name + "</h1>");
	out.println("<h1> id : " + id + "</h1>");
	out.println("<h1> password : " + password + "</h1>");
	%>
</body>
</html>