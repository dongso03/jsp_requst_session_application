<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 전용 페이지</title>
</head>
<body>
	<%
		String role = (String) session.getAttribute("role");
		if (role.equals("ADMIN")) {
	%>
	<a href="contentcontrol.jsp">서비스 내용 수정,삭제,추가</a>
	<%
		} else {
	%>
	<p>권한이 없습니다.</p>
	<%
		}
	%>
</body>
</html>