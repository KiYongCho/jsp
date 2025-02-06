<%--
세션(Session) : 서버에 저장되는 클라이언트 정보
- 클라이언트가 서버에 접속하면 자동으로 서버에 세션객체가 생성
- Tomcat서버는 JSESSIONID라는 쿠키를 발행해서 클라이언트에 전송
- 클라이언트가 다음 접속시에 JSESSIONID라는 쿠키를 서버에 전송
- 서버는 클라이언트가 전송한 JSESSIONID 쿠키를 읽어서 클라이언트의
  세션객체를 검색
  
- 세션 메소드
(1) setAttribute() : 속성변수 설정
(2) getAttribute() : 속성변수 값 획득
(3) getId() : 세션아이디 획득
(4) getCreationTime() : 세션 생성시간 획득
(5) getLastAccessedTime() : 최종접속시간 획득
--%>

<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	// 세션 속성 변수 설정
	session.setAttribute("id", "hong");
	session.setAttribute("name", "홍길동");
	session.setAttribute("age", 20);
	
	// 세션 속성 변수 획득
	out.print("id : " + session.getAttribute("id") + "<br>");
	out.print("name : " + session.getAttribute("name") + "<br>");
	out.print("age : " + session.getAttribute("age") + "<br>");
	
	out.print("세션아이디 : " + session.getId() + "<br>");
	out.print("생성시간 : " + new Date(session.getCreationTime()) + "<br>");
	out.print("최종접속시간 : " + new Date(session.getLastAccessedTime()) + "<br>");
	
	// 세션 만료 = 세션 무효화 (로그아웃)
	session.invalidate();
%>






