<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String idx = request.getParameter("idx");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspadb?serverTimezone=UTC","root","1234");
	String strSql="select * from guest where id ="+idx;
	PreparedStatement pstm = conn.prepareStatement(strSql);
	ResultSet rs = pstm.executeQuery();
	rs.next();
		int id = rs.getInt("id");
		String name = rs.getString("name");
		String email = rs.getString("email");
		String pwd = rs.getString("pwd");
		String content = rs.getString("content");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<font size=5>방명록수정</font>
		<p>
		<form action="edit_ok.jsp" method="post">
			<input type= "hidden" name = "idx" value=<%=idx %>>
			<table border=0 cellsapcing=0 cellpadding=0>
				<tr>
					<td>이름 : &nbsp;&nbsp;&nbsp;<input type="text" name="name" value=<%=name %>>&nbsp;
						비밀번호 : <input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td>E-mail : <input type="text" name="email" size=54 value=<%=email %>></td>
				</tr>
				<tr>
					<td><textarea wrap="hard" rows="10" cols="70" name="content"><%=content %></textarea></td>
				</tr>
			</table>
			<p>
				<input type="submit" value="글 수정">
		</form>
	</center>
</body>
</html>