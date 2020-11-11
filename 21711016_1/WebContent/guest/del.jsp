<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String idx = request.getParameter("idx");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>글삭제
<form method = "post" action="del_ok.jsp">
	  <input type= "hidden" name = "idx" value=<%=idx %>>
	  비밀번호를 입력하세요!<p>
	  비밀번호 :  <input type="password" name="pwd" size="8">
	  <input type="submit" value= "삭제"> &nbsp; [<a href = "guest.jsp">목록보기</a>]
</form>
</center>
</body>
</html>