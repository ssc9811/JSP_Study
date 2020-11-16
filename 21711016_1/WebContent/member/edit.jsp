<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String mem_id = (String)session.getAttribute("member_id");

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspadb?serverTimezone=UTC","root","1234");
	String sql = "select * from member where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,mem_id);
	ResultSet rs = pstmt.executeQuery();
	
	rs.next();
	String id = rs.getString("id");
	String pwd = rs.getString("pwd");
	String name = rs.getString("name");
	String tel = rs.getString("tel");
	String sex = rs.getString("sex");
	String email = rs.getString("email");
	String address = rs.getString("address");
	String writeday = rs.getString("writeday");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
 <center>
	<H2>회원 수정폼</H2>
   <form  name="member_form" method="post" action="edit_ok.jsp">
<TABLE border=1 cellspacing=0 cellpadding=2 bordercolor="cccccc"  width=600 >
<col bgcolor="cccccc"  width=100 >
        <tr>
          <td width=150>▶ 아이디 :</td>
          <td>
             <%=id %>
          </td>
        </tr>
		 <tr><td width=150>▶ 비밀번호 :</td> 
         <td>
            <input type=password size=20 maxlength=16 name=pwd value="<%=pwd %>"> ▶ 영문숫자조합10~16자리</td>
        </tr>
        <tr><td width=150>▶ 비밀번호 확인 :</td>
          <td>
             <input type=password size=20  maxlength=16 name=pwd_confirm value="<%=pwd %>"> </td>
        </tr>
        <tr><td width=150>▶ 이름 :</td>
          <td>
             <input type=text size=20  maxlength=16 name=name value="<%=name %>"> ▶ 실명(한글이름) </td>
        </tr>
        <tr><td width=150>▶ 휴대전화 :</td>
          <td>
             <input type=text size=4 name=tel value=<%=tel %>>
          </td>
        </tr>
		 <tr><td width=150>성별 :</td>
             <%
             	if (sex.equals("남")) {
             %>
           <td>
           		<input type=radio name=sex value='남' checked>남
           		<input type=radio name=sex value='여'>여
           	</td>
           	<%
            	}else{
             %>	
            <td>
             <input type=radio name=sex value='남' >남
         	<input type=radio name=sex value='여' checked>여
          </td>
          <% } %>
        </tr>
		<tr><td width=150>이메일 :</td>
          <td>
             <input type=text size=50 name=email value="<%=email %>"></td>
        </tr>
      <tr><td width=150> 주 소 :</td>
          <td>
             <input type=text size=50 name=address value="<%=address %>"></td>
      </tr>          
    </table>
        <br>
		<input type='submit' OnClick='Check()' value='수정완료'>
		<input type="button" value="취   소"  onClick="javascript:history.go(-1);">
       </form>
   	</center>
  </body>
</html>