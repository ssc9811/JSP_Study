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
	<h1>�α����� �����մϴ�.</h1>
	
	<%= sid %> �� �α����� ����<br>
	<%= sname %> �� ȯ���մϴ�.<br><p>
	<a href = "member_info.jsp">���� ��������</a><p>
	<a href = "logout.jsp">�α׾ƿ�</a>
<% } %>


</body>
</html>
