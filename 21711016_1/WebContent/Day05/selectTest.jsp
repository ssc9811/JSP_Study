<%@page import= "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>member 테이블에 레코드 표시</h2>
	<table border ="1" width="600">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>가입일자</td>
		</tr>
		<%
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC","root","1234");
				String sql = "select * from mem order by reg_date desc";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next()){
					String id = rs.getString("id");
					String passwd = rs.getString("passwd");
					String name = rs.getString("name");
					Timestamp register = rs.getTimestamp("reg_date");
		%>
		<tr>
			<td><%=id %></td>
			<td><%=passwd %></td>
			<td><%=name %></td>
			<td><%=register %></td>
		</tr>
		<%		}
				
			}catch(Exception e)
		{
				e.printStackTrace();
		}
		%>
	</table><p>
<a href ="inputForm.jsp">멤버입력</a>&nbsp;
<a href ="update.jsp">멤버수정</a>&nbsp;
<a href ="del.jsp">멤버삭제</a>

</body>
</html>