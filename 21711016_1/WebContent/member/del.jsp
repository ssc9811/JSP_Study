<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>

<%
	String mem_id = (String)session.getAttribute("member_id");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>탈퇴하십니까?</h3>
	<form action="del_ok.jsp" methon="post">
	<input type="submit" value="확 인">
	<input type="button" value="취 소"  onClick="javascript:history.go(-1);">
	</form>
</body>
</html>