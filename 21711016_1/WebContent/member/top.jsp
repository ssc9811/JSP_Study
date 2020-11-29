<%@ page info="left_Frame" errorPage="error.jsp" %>
<%@ page contentType="text/html; charset=euc-kr" %> 
<% request.setCharacterEncoding("euc-kr"); %>
<%
 // 세션을 받아옵니다. 
 //회원 이름 정보
 Object mem_name  = session.getAttribute("member_name"); 
 Object mem_id = session.getAttribute("member_id"); 
 session.setAttribute("member_id",mem_id);
%>
<html>
<head>
<style type='text/css'>
<!--
	a:link		{font-family:"";color:black;text-decoration:none;}
	a:visited	{font-family:"";color:black;text-decoration:none;}
	a:hover		{font-family:"";color:black;text-decoration:underline;}	
-->
</style>
</head>
<body>
<center>
 <table border="1" cellspacing="0" cellpadding="5" width=800 bgcolor="black">        
 <tr>
  <TD align=center> <a href="main.jsp" target="main"><font color="white"> 홈 <font></a></TD>
  <%
	//회원 아이디에 대한 세션이 없을 경우
   if(session.getValue("member_id")==null) { 
 
 %>
  <TD align=center><a href="../member/login.html"  target="main"><font color="white">로그인</a></TD>
<% } 
else{ %>
       <td align=center><a href="../member/logout.jsp"  target="main"><font color="white">로그아웃<font></a></TD>
       <td align=center><a href="../member/member_info.jsp" target='main'><font color="white">개인 정보 조회<font></a></td>
<%
    } 
%>
       <td align=center><a href="../guest/guest.jsp"  target="main"><font color="white">방명록<font></a></TD>
       <td align=center><a href="boardList/list.jsp"  target="main"><font color="white">게시판<font></a></TD>
       <td align=center><a href="notice_ripple/list.jsp"  target="main"><font color="white">공지사항<font></a></TD>
       <td align=center><a href="ans_board/list.jsp"  target="main"><font color="white">묻고답하기<font></a></TD>
       <td align=center><a href="pds/list.jsp"  target="main"><font color="white">자료실<font></a></TD>
	  <td align=center><a href="../member/admin.jsp"  target="main"><font color="white">관리자<font></a></TD>
     </tr>
   </table>      
	</TR>
    </table>
</center>
</body>
</html>
