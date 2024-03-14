<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("auth");
	String role = (String) session.getAttribute("role");
%>
<nav>
	<a href="index.jsp">홈</a>
	<a href="service.jsp">서비스</a>
	<%
		if (id == null) {
	%>
	<a href="loginform.jsp">로그인</a>
	<a href="signup.jsp">회원가입</a>
	<%
		} else {
	%>
	<a href="logout.jsp">로그아웃</a>
	<%
			if (role !=null && role.equals("ADMIN")) {
				%>
	<a href="admin.jsp">관리자 메뉴로</a>
				<%
			}
		}
	%>
</nav>