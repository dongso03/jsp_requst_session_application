<%@page import="java.util.Map"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력 폼</title>
</head>
<body>
	<form action="signupprogress.jsp" method="post">
		<label>아이디<input type="text" name="id"></label>
		<label>비번<input type="password" name="password"></label>
		<label>비번 확인<input type="password" name="pwConfirm"></label>
		<input type="submit" value= "회원가입">
	</form>
	
	<%
	Map<String,String>map =(Map) session.getAttribute("map");
	//messgae=URLDecoder.decode(message,"UTF-8");
	session.removeAttribute("map");
	%>
	<%
	if(map !=null){
		for(String value:map.values()){	
	%>
		<p><%= value %></p>	
	<%
		}
	}
	%>	
	
</body>
</html>