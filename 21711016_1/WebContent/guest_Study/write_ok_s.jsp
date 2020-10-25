<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	String content = request.getParameter("content");
	Timestamp reg_date = new Timestamp(System.currentTimeMillis());
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?serverTimeZone=UTC","root","1234");
	
	String sql = "insert into guest(name,pwd,email,content,writeday) values(?,?,?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, pwd);
	pstmt.setString(3, email);
	pstmt.setString(4, content);
	pstmt.setTimestamp(5, reg_date);
	pstmt.executeUpdate();
	pstmt.close();
	conn.close();
	response.sendRedirect("guest_s.jsp");
	
%>
