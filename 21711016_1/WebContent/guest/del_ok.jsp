<%@ page import = "java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String idx = request.getParameter("idx");
	String pwd = request.getParameter("pwd");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspadb?serverTimezone=UTC","root","1234");
		String strSQL = "select pwd from guest where id = ?";
		PreparedStatement pstmt = conn.prepareStatement(strSQL);
		pstmt.setString(1, idx);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		String goodpass = rs.getString("pwd");
		if(pwd.equals(goodpass)){
			String SQL = "delete from guest where id = ?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, idx);
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