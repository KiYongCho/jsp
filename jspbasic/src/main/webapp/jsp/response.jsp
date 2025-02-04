<%--
response : 서버 응답 정보를 저장하고 있는 객체
1. 응답헤더
(1) addHeader(헤더명, 헤더값) : 응답 헤더 추가
(2) setHeader(헤더명, 헤더값) : 응답 헤더 변경
2. 응답 리다이렉션(redirection) : 응답을 다른 쪽으로 전환
 --%>

<%@ page contentType="text/html; charset=UTF-8"%>

<%
	// 웹브라우져는 최초 요청시에 응답받은 데이터를 로컬에 저장(캐싱)해서
	// 다음번 같은 요청에 서버로 부터 응답받는 것이 아니라 로컬에 저장된 캐시를 사용하여
	// 속도를 증가시킴
	
	// 웹브라우져에게 응답데이터를 캐싱처리 하지 말라고 지시
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "No-cache");
	response.setDateHeader("Expires", 1L);
	
	// 응답헤더 변경
	response.setHeader("Content-Type", "text/plain");
%>

<!DOCTYPE html>
<html>
<head>
<title>제목</title>
</head>
<body>
	<p>Hello</p>
</body>
</html>














