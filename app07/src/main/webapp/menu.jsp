<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav>
	<a href="index.jsp">홈</a> <a href="service.jsp">서비스</a>
	<%
	Object id = session.getAttribute("id");
	if (id == null) {
	%>
	<a href="loginform.jsp">로그인</a>
	<%
	} else {
	%>
	<a href="logout.jsp">로그아웃</a>
	<%
	}
	%>
</nav>