<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 서비스 페이지</title>
</head>
<body>
	<%
	boolean login = (boolean)request.getAttribute("login");
	String userId = (String)request.getAttribute("userId");
	if (login) {
	%>
	<p>로그인을 해야만 사용가능한 페이지 2</p>
	<p><%=userId%>님 반갑습니다.</p>
	<p><a href="logout.jsp">로그아웃하기</a></p>
	<%
	} else {
	%>
	<p>로그인 먼저해주세요.</p>
	<p><a href="loginform.html">로그인하러가기</a></p>
	<%
	}
	%>
</body>
</html>