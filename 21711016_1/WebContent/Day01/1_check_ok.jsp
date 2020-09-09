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
	String [] color = request.getParameterValues("color");
	out.println("당신이 좋아하는 색상들은");
	for(int i=0; i < color.length; i++)
	{
		out.println(color[i]+",");
	}
%>
</body>
</html>