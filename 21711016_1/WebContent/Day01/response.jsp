<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>response 내장객체를 통해 페이지 이동</h2>
신안산대학교 홈페이지로 이동
<%
	response.sendRedirect("http://www.sau.ac.kr");
%>
</body>
</html>