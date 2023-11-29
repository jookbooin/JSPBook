<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="DBError.jsp"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodsInfoReader.jsp 파일</title>
</head>
<body>
	<h2>GoodsInfoReader.jsp 파일</h2>

	<%
	request.setCharacterEncoding("UTF-8");
	String gcode = request.getParameter("code");
	String title;
	String writer;
	int price;
	//int mycode = 10005 ;

	Connection conn = null;
	Statement stmt = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul",
		"root", "worldcup7!");
		if (conn == null)
			throw new Exception("<h1> 데이터베이스에 연결할 수 없습니다.<BR>");
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from goodsinfo where code = '" + gcode + "';");

		if (!rs.next())
			throw new Exception("상품코드(" + gcode + ")에 해당하는 데이터가 없습니다.");

		gcode = rs.getString("code");
		title = rs.getString("title");
		writer = rs.getString("writer");
		//writer= rs.getString(writer) ;
		price = rs.getInt("price");
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

	response.sendRedirect(
			"GoodsInfoViewer.jsp?code=" + gcode + "&title=" + title + "&writer=" + writer + "&price=" + price);
	%>


</body>
</html>