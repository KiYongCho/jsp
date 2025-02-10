<%@ page contentType="text/html; charset=UTF-8"%>

<%
	// application 속성변수 생성
	application.setAttribute("name", "홍길동");

	// application 속성변수 대체
	application.setAttribute("name", "강감찬");
	
	// application 속성변수 삭제
	application.removeAttribute("name");
	
	// session 속성변수 생성
	session.setAttribute("address", "서울");

	// session 속성변수 대체
	session.setAttribute("address", "부산");
	
	// session 속성변수 삭제
	session.removeAttribute("address");	
%>