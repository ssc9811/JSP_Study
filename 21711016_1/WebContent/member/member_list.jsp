<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>

<%
	String mem_id = (String)session.getAttribute("member_id");

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC","root","1234");
	String sql = "select* from member order by num desc";
	PreparedStatement pstm = conn.prepareStatement(sql);
	ResultSet rs = pstm.executeQuery();
		
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="500" border="0" cellpading="3" cellspacing="0" align="center">
<tr align="center">
<td>번호</td>
	<td>글쓴이</td>
	<td>아이디</td>
	<td>전화번호</td>
	<td>상세보기</td>
</tr>
<%
	while(rs.next()){
	int num = rs.getInt("num");
	String name = rs.getString("name");
	String id = rs.getString("id");
	String tel = rs.getString("tel");
 %>
 <tr>
 <td><%=num %></td>
 <td><%=name %></td>
 <td><%=id %></td> 
 <td><%=tel %></td>
 <td><a href = "member_all.jsp?idx=<%=num %>">보기</a></td>
 </tr>
 <% } %>
</table>

</body>
</html>