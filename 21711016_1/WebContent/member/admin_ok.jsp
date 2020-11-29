<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String ad_id = "ssc";
	String ad_pwd = "1234";
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	if((id.equals(ad_id)&&(pwd.equals(ad_pwd)))) {
		session.setAttribute("member_id","ssc");
	}
	else{ %>
			<script>
				alert("로그인 실패");
				history.back()
			</script>
	<%
		
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<b>관리자 인증</b><br>
관리자 로그인이 승인되었습니다.<p>

<a href = "member_list.jsp">[회원 리스트로]</a>
</center>
</body>
</html>