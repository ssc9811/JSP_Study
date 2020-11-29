<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String id = request.getParameter("id");
	if(id == ""){%>
		아이디를 입력하세요<br>
		<a href=javascript:close()>닫기</a>
	<% }else{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspadb?serverTimezone=UTC", "root", "1234");
	String sql = "select id from member where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	ResultSet rs = pstmt.executeQuery();
	if(!rs.next()){
%>
		<%= id %>는 사용할 수 있는아이디. <br><a href=javascript:close()>닫기</a>
<%	}else{ %>
	<%= id %>는 중복된 아이디 입니다.<br><a href=javascript:close()>닫기</a>
<%} }%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>