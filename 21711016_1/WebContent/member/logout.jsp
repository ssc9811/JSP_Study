<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	session.invalidate();
	
%>
		<script language="javascript">
			location.href="main.jsp";
		</script>