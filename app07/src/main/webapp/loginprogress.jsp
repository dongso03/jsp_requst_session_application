<%@page import="app07.User"%>
<%@page import="app07.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	UserService service = UserService.getInstance();
	User user = service.login(id, password);
	
	if (user != null) {
		session.setAttribute("id", user.getId());
		request.getRequestDispatcher("loginresult.jsp")
			.forward(request, response);
	} else {
		response.sendRedirect("loginform.jsp?message=fail");
	}
%>