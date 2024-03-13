<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	System.out.println("사용자 요청 처리 흐름 확인");
	System.out.println("첫번째 처리 흐름");

	int sum = 0 ;
	for(int i = 0; i< 10;i++){
		sum+=i;
	}
	request.setAttribute("sum", sum);
	
/*	request.getRequestDispatcher("step2.jsp")
		.forward(request, response);  //이렇게 써도되고 아래 처럼 써도 된다
*/
%>
<jsp:forward page="step2.jsp"></jsp:forward> 