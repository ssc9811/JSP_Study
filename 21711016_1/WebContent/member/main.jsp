<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.sql.*" %>
<% request.setCharacterEncoding("euc-kr"); %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC","root","1234");
Statement stmt = conn.createStatement();

String strSQL = "select * from guest order by id desc limit 4";
ResultSet rs = stmt.executeQuery(strSQL);
%>
 <HTML>
 <HEAD>
  <TITLE> New Document </TITLE>
  
 </HEAD>

  <body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
   <center>
  <h2>main 페이지</h2>

 <table border="1" width="450">
        <tr>
          <td>:::방명록 :::</td></tr>
<%
while(rs.next()){
int num = rs.getInt("id");
String title = rs.getString("content");
%>
 <tr>
       <td>
        + <a href="../guest/guest.jsp?idx=<%=num%>"><%=title%></a></a>
	 </td>
  </tr>

  <%
 }%>
    <tr>
          <td align="right"><a href="../guest/guest.jsp">more...</a></td>
        </tr>

  </center>
 </BODY>
</HTML>
