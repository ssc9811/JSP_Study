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
	String [] a = request.getParameterValues("color");
	out.println(a.length);
	for(int i=0; i<a.length; i++){
		out.println(a[i]);
	}
%>
</body>
</html>