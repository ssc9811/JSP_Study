<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String classNum = request.getParameter("classNum");
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	
	out.println("�й� : "+classNum+"<br>");
	out.println("�̸� : "+name+"<br>");
	out.println("�г� : "+grade+"�г� �Դϴ�.");
%>
</body>
</html>