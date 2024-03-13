<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 페이지</title>
</head>
<body>

	<%
	boolean login = (boolean)request.getAttribute("login");
	String userId = (String)request.getAttribute("userId");
	
	if (login) {
	%> 
	<p><%=userId%>님 반갑습니다.</p>
	<p><a href="logout.jsp">로그아웃하기</a></p>
	<%
	}
	%>
</body>

</html>