<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("id","ssc");
	session.setAttribute("pwd","1234");
	
	String gid = (String)session.getAttribute("id");
	String gpwd = (String)session.getAttribute("pwd");
	
	out.println("아이디 값 : "+gid+"<br>");
	out.println("비밀번호 값 : "+gpwd+"<br>");
%>