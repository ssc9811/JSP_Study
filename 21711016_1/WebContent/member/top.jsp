<%@ page info="left_Frame" errorPage="error.jsp" %>
<%@ page contentType="text/html; charset=euc-kr" %> 
<% request.setCharacterEncoding("euc-kr"); %>
<%
 // ������ �޾ƿɴϴ�. 
 //ȸ�� �̸� ����
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
  <TD align=center> <a href="main.jsp" target="main"><font color="white"> Ȩ <font></a></TD>
  <%
	//ȸ�� ���̵� ���� ������ ���� ���
   if(session.getValue("member_id")==null) { 
 
 %>
  <TD align=center><a href="../member/login.html"  target="main"><font color="white">�α���</a></TD>
<% } 
else{ %>
       <td align=center><a href="../member/logout.jsp"  target="main"><font color="white">�α׾ƿ�<font></a></TD>
       <td align=center><a href="../member/member_info.jsp" target='main'><font color="white">���� ���� ��ȸ<font></a></td>
<%
    } 
%>
       <td align=center><a href="../guest/guest.jsp"  target="main"><font color="white">����<font></a></TD>
       <td align=center><a href="boardList/list.jsp"  target="main"><font color="white">�Խ���<font></a></TD>
       <td align=center><a href="notice_ripple/list.jsp"  target="main"><font color="white">��������<font></a></TD>
       <td align=center><a href="ans_board/list.jsp"  target="main"><font color="white">������ϱ�<font></a></TD>
       <td align=center><a href="pds/list.jsp"  target="main"><font color="white">�ڷ��<font></a></TD>
	  <td align=center><a href="../member/admin.jsp"  target="main"><font color="white">������<font></a></TD>
     </tr>
   </table>      
	</TR>
    </table>
</center>
</body>
</html>
