<%@ page contentType="text/html; charset=UTF-8"%>

<%
	// 응답 전환 
	// 리다이렉션이 일어나면 클라이언트는 response3.jsp를 다시 호출하게 됨
	// 원래 response2.jsp 호출되면 response2.jsp가 실행되어야 하지만
	// 리다이렉션을 하면 response3.jsp가 실행되어 클라이언트에게 응답함
	
	System.out.println(request);
	// request객체의 속성 변수 설정
	request.setAttribute("name", "홍길동");
	
	// 리다이렉션
	// 클라이언트에게 새로운 요청을 하도록 함 => 주소창의 주소가 변경됨
	// response.sendRedirect("response3.jsp");
	
	// 포워딩
	// 클라이어트는 원래의 요청 밖에 모름 => 주소창의 주소가 변경 안됨
	RequestDispatcher rd = request.getRequestDispatcher("response3.jsp");
	rd.forward(request, response);
%>

<%="response2.jsp"%>





