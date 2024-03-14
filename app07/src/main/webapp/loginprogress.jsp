<%@page import="app07.User"%>
<%@page import="app07.UserRepo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	//입력값 유효확인 필요.
	
	UserRepo repo = UserRepo.getInstance();
	User find = repo.findUser(new User(id , password));
	
	if(find != null){
		session.setAttribute("auth", id);
		session.setAttribute("role", find.getRole());
	}
	response.sendRedirect("index.jsp");	
	
	
%>