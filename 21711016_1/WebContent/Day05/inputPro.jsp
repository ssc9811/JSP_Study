<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import= "java.sql.*"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	Timestamp reg_date= new Timestamp(System.currentTimeMillis());
	String str = "";
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC","root","1234");
		String sql ="insert into mem values(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		pstmt.setTimestamp(4, reg_date);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
		str="mem 테이블에 새로운 레코드가 추가되었습니다.";
		
	}catch(Exception e)
	{
		e.printStackTrace();
		str="mem 테이블에 새로운 레코드가 추가가 실패하였습니다.";
	}
	response.sendRedirect("selectTest.jsp");
%>