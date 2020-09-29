<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String Masterid = (String)session.getAttribute("Master");   
	boolean islogin = false;
	if(Masterid != null){
		 islogin = true;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(islogin){
%>
<%= Masterid %>로 로그인상태<p>
<a href ="logout.jsp">로그아웃</a>
<%
	}else{
%>
로그인 하지 않은 살태
<%} %>
</body>
</html>