<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="app07.content.Content"%>
<%@page import="app07.content.ContentRepo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제 페이지 (미구현)</title>
</head>
<body>
	<%
		
		ContentRepo repo = ContentRepo.getInstance();
		Content content = 
		List<Content> list = new ArrayList<>();
		repo.getAll(list);
		
		String no = request.getParameter("no");
		if(no.equals(list.)){
			
		}
	
	%>
</body>
</html>