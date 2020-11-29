<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<form action = "admin_ok.jsp" method = "post">
	관리자 ID : <input type = "text" name = "id"><p>
	관리자 비밀번호 : <input type = "password" name ="pwd"><p>
	<input type=submit value="Login">
	</form>
</center>
</body>
</html>