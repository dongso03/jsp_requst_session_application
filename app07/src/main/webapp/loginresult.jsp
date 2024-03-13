<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과 페이지</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("id");
	%>
	<jsp:include page="menu.jsp"></jsp:include>
	<p><%= id %>님 환영합니다.</p>
</body>
</html>