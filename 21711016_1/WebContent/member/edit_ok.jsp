<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String mem_id = (String)session.getAttribute("member_id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String phone = request.getParameter("tel");
	String sex = request.getParameter("sex");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC","root","1234");
	String sql = "update member set pwd=?, name=?, tel=?, sex=?, email=?, address=? where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,pwd);
	pstmt.setString(2,name);
	pstmt.setString(3,phone);
	pstmt.setString(4,sex);
	pstmt.setString(5,email);
	pstmt.setString(6,address);
	pstmt.setString(7,mem_id);
	pstmt.executeUpdate();
	response.sendRedirect("login.html");
pstmt.close();
conn.close();
	
	
%>
