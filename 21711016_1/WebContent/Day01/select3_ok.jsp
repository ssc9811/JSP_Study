<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String[] subject = request.getParameterValues("subject");
	out.println("당신이 좋아하는 과목은");
	for(int i=0;i<subject.length;i++){out.println(subject[i]);}
%>
</body>
</html>