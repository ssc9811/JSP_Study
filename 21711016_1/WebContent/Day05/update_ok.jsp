<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<% request.setCharacterEncoding("euc-kr"); %>

<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC","root","1234");
	String sql = "select id,passwd from mem where id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id); 
	rs = pstmt.executeQuery();
	if(rs.next())
	{
		String rid = rs.getString("id");
		String rpasswd = rs.getString("passwd");
		if(id.equals(rid) && pwd.equals(rpasswd)){
			sql = "update mem set name=? where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
			response.sendRedirect("selectTest.jsp");
		}
		else{
			out.println("패스워드가 일치하지 않습니다.");
		}
	}
	else{
		out.println("아이디가 일치하지 않습니다.");
	}
	}catch(Exception e){
		e.printStackTrace();
	}
	rs.close();
	pstmt.close();
	conn.close();
%>