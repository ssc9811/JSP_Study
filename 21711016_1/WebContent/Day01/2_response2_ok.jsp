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
	String strsite = request.getParameter("down");
	switch(Integer.parseInt(strsite))
	{
	case 1:
		response.sendRedirect("http://www.sau.ac.kr");
		break;
	case 2:
		response.sendRedirect("http://www.google.com");
		break;
	case 3:
		response.sendRedirect("http://www.naver.com");
		break;
	case 4:
		response.sendRedirect("http://www.daum.net");
		break;
	}
%>
</body>
</html>