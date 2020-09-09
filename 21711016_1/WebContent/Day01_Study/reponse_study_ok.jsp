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
//	String url = request.getParameter("url");
//	switch(Integer.parseInt(url))
//	{
//	case 1:
//		response.sendRedirect("http://www.naver.com/");
//		break;
//	case 2:
//		response.sendRedirect("http://www.google.com/");
//		break;
//	}

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	String sessionId = session.getId();
	int sessionTime = session.getMaxInactiveInterval();
	
	out.println(id+"<br>");
	out.println(pwd+"<br>");
	out.println(sessionId+"<br>");
	out.println(sessionTime+"<br>");
%>
</body>
</html>