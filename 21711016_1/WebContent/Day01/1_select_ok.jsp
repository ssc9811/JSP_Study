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
	String edu = request.getParameter("edu");
	String [] subject = request.getParameterValues("subject");
	
	out.println("당신은 현재 : "+edu+ "학년 입니다.<br>");
	out.println("당신이 관심있는 분야는");
	for(int i=0; i< subject.length; i++)
	{
		out.println(subject[i]+",");
	}
	out.println(" 입니다.");
%>
</body>
</html>