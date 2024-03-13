<%@page import="app07.User"%>
<%@page import="app07.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Object id = session.getAttribute("id");
if (id != null) {
	request.getRequestDispatcher("content.jsp").forward(request, response);
} else {
	response.sendRedirect("loginform.jsp?message=needlogin");
}
%>