<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String mem_id = (String)session.getAttribute("member_id");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC","root","1234");
	String sql = "delete from member where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,mem_id);
	pstmt.executeUpdate();
	pstmt.close();
	conn.close();
	session.invalidate();
	response.sendRedirect("login.html");
%>
