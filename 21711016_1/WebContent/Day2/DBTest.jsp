<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%> 

<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC","root","1234");
		if(conn != null){
			out.println("webdb 데이터베이스로 연결했습니다.<BR>");
			conn.close();
			out.println("webdb 데이터베이스로의 연결을 끊었습니다. <BR>");
		}
		else{
			out.println("webdb 데이터베이스로 연결할 수 없습니다. <BR>");
		}
%>

