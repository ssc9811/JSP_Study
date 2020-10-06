<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="euc-kr">
<title>Insert title here</title>
</head>
<body>
<h2>멤버테이블에 레코드 삭제(아이디와 비밀번호 일치시 삭제)</h2>
<form method="post" action="del_ok.jsp">
	아이디 : <input type="text" name="id"><p>
	비밀번호 : <input type="password" name="pwd"><p><p>
	<input type="submit" value="삭제">
</form>
</body>
</html>