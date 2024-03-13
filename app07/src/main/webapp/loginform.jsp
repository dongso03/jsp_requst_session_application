<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<%
	String message = request.getParameter("message");
	if (message != null) {
		String text = null;
		if (message.equals("fail")) {
			text = "아이디, 비밀번호를 확인해주세요";
		} else if (message.equals("needlogin")) {
			text = "로그인이 필요합니다.";
		}
		out.println("<p>" + text + "</p>");
	}
	%>
	<form action="loginprogress.jsp" method="post">
		<fieldset>
			<legend>사용자 정보 입력</legend>
			<label>아이디<input type="text" name="id" required></label> <label>비밀번호<input
				type="password" name="password" required></label>
		</fieldset>
		<input type="submit" value="로그인">
	</form>
</body>
</html>