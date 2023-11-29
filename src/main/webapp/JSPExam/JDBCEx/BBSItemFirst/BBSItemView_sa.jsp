<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id= "bbsItemOB" class="webdb.jdbc.BBSItem" />

<!--
    1.
     	<h1>순번: <input type="text" name="seq_No"></h1><br> 
		전달 받는 페이지의 name 과 value가 같아야한다.	
		요청url : http://localhost:8080/JSPBook/JSPExam/JDBCEx/BBSItemFirst/BBSItemView_sa.jsp?seq_No=6
		
	2.  
		<h1>순번: <input type="text" name="seqNo"></h1><br> 
		요청url : http://localhost:8080/JSPBook/JSPExam/JDBCEx/BBSItemFirst/BBSItemView_sa.jsp?seqNo=5
 -->
 
<jsp:setProperty  property="seqNo"   value ="${param.seqNo}" name="bbsItemOB" />  
<% bbsItemOB.readDB(); %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BBSitemView.jsp</title>
</head>
<body>
	<h1> bbs게시판 글 읽어오기</h1>
	<!-- getter 불러오는것  -->
	[제목]<jsp:getProperty  property="title" name="bbsItemOB"/><br>
	[작성자]<jsp:getProperty property="writer" name="bbsItemOB"/>
	[작성일시]<jsp:getProperty property="date" name="bbsItemOB"/>


	-------------------------------------------
	<br>
	<jsp:getProperty  property="content" name="bbsItemOB" />
	------------------------------------
	 <br>
	 <H2>게시글 읽기</H2>
	 
     [제목] ${bbsItemOB.title} <BR>
     [작성자] ${bbsItemOB.writer} 
     [작성일시] ${bbsItemOB.date} ${bbsItemOB.time}<BR>
     ------------------------------------------------------------ <BR>
     ${bbsItemOB.content}
        
</body>
</html>