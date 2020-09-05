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
	String num = request.getParameter("num");
	String [] subject = request.getParameterValues("subject");
	out.println("당신의 학년은 : "+num);
	
	for(int i=0; i<subject.length;i++){
		out.println("당신이 좋아하는 과목은 : "+ subject[i]);
	}
%>
</body>
</html>