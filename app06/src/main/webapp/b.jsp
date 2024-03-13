<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><%=session.getAttribute("mySession")%></p>
	<p><%=request.getAttribute("myRequest")%></p>

	<p>세션 정보 확인</p>
	<p><%=session.getId()%></p>
	<p><%=new Date(session.getCreationTime())%></p>
	<p><%=new Date(session.getLastAccessedTime())%></p>
</body>
</html>