<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="./DBError.jsp"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>goodsInfo 테이블 내용 불러오기</title>
</head>
<body>

	<%
	String code, title, writer;
	int price = 0;
	//int mycode = 10002;
	int mycode = Integer.parseInt(request.getParameter("code"));
	Connection conn = null;
	Statement stmt = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul",
		"root", "worldcup7!");

		if (conn == null)
			throw new Exception("<h1>DB에 연결불가<BR>");

		stmt = conn.createStatement();

		//ResultSet rs = stmt.executeQuery(
		//		"select * from goodsinfo;") ;
		ResultSet rs = stmt.executeQuery("select * from goodsinfo where code= '" + mycode + "';");

		if (!rs.next()) {
			throw new Exception("상품이 전혀없음.");
		}

		code = rs.getString("code");
		title = rs.getString("title");
		writer = rs.getString("writer");
		price = rs.getInt("price");

		request.setAttribute("CODE", code);
		request.setAttribute("TITLE", title);
		request.setAttribute("WRITER", writer);
		request.setAttribute("PRICE", new Integer(price));

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

	/*response.sendRedirect("GoodsInfoViewer.jsp?code=" + code + "&title=" + title + "&writer=" + writer + "&price=" + price);*/

	RequestDispatcher dispatcher = request.getRequestDispatcher("EditForm.jsp");
	dispatcher.forward(request, response);
	%>

</body>
</html>