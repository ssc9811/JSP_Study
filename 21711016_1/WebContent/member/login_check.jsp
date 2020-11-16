<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="euc-kr"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	
	String sid = (String)session.getAttribute("member_id");
	String sname = (String)session.getAttribute("member_name");
	boolean islogin = false;
	if(sid != null)
		islogin=true;
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(islogin){
%>
	<h1>로그인을 축하합니다.</h1>
	
	<%= sid %> 로 로그인한 상태<br>
	<%= sname %> 님 환영합니다.<br><p>
	<a href = "member_info.jsp">나의 정보보기</a><p>
	<a href = "logout.jsp">로그아웃</a>
<% } %>


</body>
</html>
