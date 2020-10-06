<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
</head>
<body>
<h2>멤버테이블에 레코드 수정(아이디와 비밀번호 일치시 이름수정)</h2>
<form method="post" action="update_ok.jsp">
	아이디 : <input type="text" name="id"><p>
	비밀번호 : <input type="password" name="pwd"><p>
	이름 : <input type="text" name="name"><p>
	<input type="submit" value="수정">
</form>
</body>
</html>