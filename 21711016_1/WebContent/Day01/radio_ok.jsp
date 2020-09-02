<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String color = request.getParameter("color");
%>
당신이 선택한 색상은 : <%=color %> 입니다.
</body>
</html>