<%@page import="app07.content.Content"%>
<%@page import="java.util.List"%>
<%@page import="app07.content.ContentRepo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 콘텐츠 제공 페이지</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<%
		String id = (String) session.getAttribute("auth");
		if (id != null) {
	%>
	<p><%= id %>님 반갑습니다.</p>
	<%
			ContentRepo repo = new ContentRepo();
			List<Content> list = repo.getAll();
			for (Content c : list) {		
	%>
	<article>
		<h3><%= c.getNo() %>: <%= c.getHeading() %></h3>
		<p><%= c.getText() %></p>
	</article>
	<%
			}
		} else {
	%>
	<p>로그인을 먼저 해주세요.</p>
	<%
		}
	%>
</body>
</html>




