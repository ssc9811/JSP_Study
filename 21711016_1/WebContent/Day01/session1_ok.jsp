<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	String sessionId = session.getId();
	int sessionTime = session.getMaxInactiveInterval();
	
	out.println("아이디는 : "+id+"<br>");
	out.println("비밀번호 : "+pwd+"<br>");
	out.println("세션ID : "+sessionId+"<br>");
	out.println("세션유지시간 : "+sessionTime+"<br>");
%>
</body>
</html>