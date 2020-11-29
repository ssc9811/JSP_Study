<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>

<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String sex = request.getParameter("sex");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String phone = phone1 +""+ phone2+""+ phone3;

	String check_ok = "yes";
	
	if(id == "")
		check_ok = "no";
	if (pwd == "")
		check_ok = "no";
	if (name == "")
		check_ok = "no";
		
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC","root","1234");
	String sql = "select id from member where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	ResultSet rs = pstmt.executeQuery();
	
	if (!rs.next())
		check_ok="yes";
	else
		check_ok="no";
		
	if (check_ok == "yes"){
	String strSQL = "insert into member(id,pwd,name,tel,sex,email,address,writeday) values(?,?,?,?,?,?,?,now())";
		pstmt=conn.prepareStatement(strSQL);
		pstmt.setString(1,id);
		pstmt.setString(2,pwd);
		pstmt.setString(3,name);
		pstmt.setString(4,phone);
		pstmt.setString(5,sex);
		pstmt.setString(6,email);
		pstmt.setString(7,address);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
%>
<html>
<head>
</head>
<body>
	<center>
		<font size='3'><b>회원 가입 성공</b></font>
		<table border='0' width='600' cellpadding='0' cellsapcing='0'>
			<tr>
				<td><hr size='1' noshade></td>
			</tr>
		</table>
		<table cellspacing='0' cellpadding='10' align='center' border='0'>
			<tr>
				<td align='center'><font size='2'>회원가입을 축하합니다.<br>로그인
						하세요.
				</font></td>
			</tr>
			<tr>
				<td align='center'><font size='2'><a href="login.html">
							[로그인]</a></font></td>
			</tr>
		</table>
	</center>
</body>
</html>
<%
	} else{
%>
<html>
<head>
<title>회원 등록 실패</title>
</head>
<body>
	<center>
		<font size='3'><b>회원 가입 실패</b></font>
	<table border = '0' width='600' cellpadding ='0' cellspacing='0'>
		<tr><td><hr size='1' noshade></td></tr>
	</table>
	<table cellspacing='0' cellpadding='10' align='center' border='0'>
			<tr>
				<td align='center'><font size='2'>회원 가입에 실패 했습니다.<br>다시 가입서를 작성해 주세요.
						하세요.
				</font></td>
			</tr>
	<tr>
				<td align='center'><font size='2'><a href="member_form.html">
							[회원 가입서 작성]</a></font></td>
			</tr>
		</table>
	</center>
</body>
</html>
<% } %>