<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>

    <%
      Class.forName("com.mysql.jdbc.Driver");
     Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspadb?serverTimezone=UTC", "root", "1234");
        if (conn != null) {
            out.println("webdb �����ͺ��̽��� �����߽��ϴ�.<BR>");
            conn.close();
            out.println("webdb �����ͺ��̽����� ������ �������ϴ�.<BR>");
        }
        else {
            out.println("webdb �����ͺ��̽��� ������ �� �����ϴ�.<BR>");
        }
    %>
				