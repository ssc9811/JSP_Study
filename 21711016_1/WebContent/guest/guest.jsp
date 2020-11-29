<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>GuestBook List</h2>
<a href="write.html">글쓰기</a>
<table border="1" width="500">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspadb?serverTimezone=UTC","root","1234");
String strSql = "select * from guest order by id desc";
PreparedStatement pstmt = conn.prepareStatement(strSql);
ResultSet rs = pstmt.executeQuery();
while(rs.next()){
	int id = rs.getInt("id");
	String name = rs.getString("name");
	String email = rs.getString("email");
	String pwd = rs.getString("pwd");
	Timestamp writeday = rs.getTimestamp("writeday");
	String content = rs.getString("content");
	%>
	<tr>
		<td><a href="mailto":<%=email %>"><%=name %></a>(<%=writeday %>)</td>
		<td><a href="del.jsp?idx=<%=id %>">삭제</a></td>&nbsp;&nbsp;&nbsp;
		<td><a href="edit.jsp?idx=<%=id %>">수정</a></td></tr>
	<tr><td colspan=3><%=content %></td></tr>
	<%
}
	rs.close();
	pstmt.close();
	conn.close();
%>
</table>
</center>
</body>
</html>
