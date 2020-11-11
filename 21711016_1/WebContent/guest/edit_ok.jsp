<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String pwd = request.getParameter("pwd");
	String idx = request.getParameter("idx");	
	String content = request.getParameter("content");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspadb?serverTimezone=UTC","root","1234");
	String sql = "select pwd from guest where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, idx);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	String goodpass = rs.getString("pwd").trim();
	if(pwd.equals(goodpass)){
		String strSql = "update guest set content = ? where id ="+idx;
		pstmt = conn.prepareStatement(strSql);
		pstmt.setString(1, content);
		pstmt.executeUpdate();
		rs.close();
		pstmt.close();
		conn.close();
		response.sendRedirect("guest.jsp");
	}
	else{%>
<script>
alert("비밀번호가 일치하지 않습니다.");
 history.back();
</script>
<%
	}
%>