<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC","root","1234");
	String strSQL = "select * from member where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(strSQL);
	pstmt.setString(1,id);
	ResultSet rs = pstmt.executeQuery();
	if(!rs.next()){%>
		<script>
			alert("등록된 회원이 아닙니다. \n 회원으로 가입해 주십시요");
			history.back()
		</script><%
	}else{
		String logid = rs.getString("id");
		String logpass = rs.getString("pwd");
		String username = rs.getString("name");
	if(!(pwd.equals(logpass))){
			%>
		<script>
			alert("비밀번호가 틀립니다.");
			history.back()
		</script>
		<%
	}else{
		session.setAttribute("member_id",logid);
		session.setAttribute("member_name",username);
		%>
		<script language="javascript">
			location.href="main.jsp";
		</script>
<%		}
	}
%>