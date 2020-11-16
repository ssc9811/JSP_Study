<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String mem_id = (String)session.getAttribute("member_id");

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspadb?serverTimezone=UTC","root","1234");
	String sql = "select * from member where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,mem_id);
	ResultSet rs = pstmt.executeQuery();
	
	rs.next();
	String id = rs.getString("id");
	String pwd = rs.getString("pwd");
	String name = rs.getString("name");
	String tel = rs.getString("tel");
	String sex = rs.getString("sex");
	String email = rs.getString("email");
	String address = rs.getString("address");
	String writeday = rs.getString("writeday");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="500" border="0" cellpading="3" cellspacing="0" align="center">
<tr align="center">
<td> <%=name %> 님 환영합니다</td>
</tr>
</table>

<table width="500" border="1" cellpading="3" cellspacing="0" align="center">
<tr>
<td width = "30%" align="center" bgcolor=silver>아이디</td>
<td width = "70%"><%=id %></td>
</tr>
</table>
<table width="500" border="1" cellpading="3" cellspacing="0" align="center">
<tr>
<td width = "30%" align="center" bgcolor=silver>이름</td>
<td width = "70%"><%=name %></td>
</tr>
</table>
<table width="500" border="1" cellpading="3" cellspacing="0" align="center">
<tr>
<td width = "30%" align="center" bgcolor=silver>비밀번호</td>
<td width = "70%"><%=pwd %></td>
</tr>
</table>
<table width="500" border="1" cellpading="3" cellspacing="0" align="center">
<tr>
<td width = "30%" align="center" bgcolor=silver>Email</td>
<td width = "70%"><%=email %></td>
</tr>
</table>
<table width="500" border="1" cellpading="3" cellspacing="0" align="center">
<tr>
<td width = "30%" align="center" bgcolor=silver>성별</td>
<td width = "70%"><%=sex %></td>
</tr>
</table>
<table width="500" border="1" cellpading="3" cellspacing="0" align="center">
<tr>
<td width = "30%" align="center" bgcolor=silver>전화번호</td>
<td width = "70%"><%=tel %></td>
</tr>
</table>
<table width="500" border="1" cellpading="3" cellspacing="0" align="center">
<tr>
<td width = "30%" align="center" bgcolor=silver>주소</td>
<td width = "70%"><%=address %></td>
</tr>
</table>
<table width="500" border="1" cellpading="3" cellspacing="0" align="center">
<tr>
<td width = "30%" align="center" bgcolor=silver>가입일</td>
<td width = "70%"><%=writeday %></td>
</tr>
</table>
<table width="500" border="0" cellpading="3" cellspacing="0" align="center">
<tr>
<td align="center">
<input type="button" value="확인" onclick="location='login_check.jsp'">
<input type="button" value = "회원 수정" onclick="location='edit.jsp'">
<input type="button" value = "회원 탈퇴" onclick="location='del.jsp'">
</td>
</tr>
</table>
</body>
</html>

<%
	 rs.close();
	 conn.close();
%>