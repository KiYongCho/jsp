<%@ page contentType="text/html; charset=UTF-8"%>

<%
	// 리다이렉션이 일어나면 클라이언트는 response3.jsp를 다시 호출하게 됨
	// 그러므로 response2.jsp의 request객체와 response3.jsp의 request객체는 다른 객체
	// => request 유지가 안된다.
	System.out.println(request);
	
	// request객체의 속성 변수 획득
	System.out.println(request.getAttribute("name"));
%>

<%="response3.jsp"%>