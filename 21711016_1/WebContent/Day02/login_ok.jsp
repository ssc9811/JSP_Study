<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String masterid = "admin";
	String masterpwd = "1234";
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	if(id.equals(masterid) && pwd.equals(masterpwd)){
		session.setAttribute("Master",id);

%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 에 성공<p>
<a href="logincheck.jsp">로그인 체크</a>
</body>
</html>
<%
} else if(id.equals(masterid)){
%>
	<script>
		alert("패스워드가 다릅니다.");
		history.go(-1);
	</script>
<%} else {%>
<script>
	alert("아이디가 일치하지 않습니다.");
	history.go(-1);
</script>
<%}
%>
