<%--
쿠키(Cookie)
: 서버에서 생성해서 클라이언트에 저장되는 키와 값으로 구성된 문자열

1. 작동순서
(1) 클라이언트가 서버에 접속
(2) 서버에서 쿠키를 생성
(3) 생성된 쿠키를 클라이언트에 전송 (클라이언트가 쿠키를 허용하는 경우)
(4) 클라이언트는 쿠키를 문자열로 저장
(5) 다음번에 서버에 접속할때 쿠키를 헤더에 실어서 서버에 전송
(6) 서버는 클라이언트가 보낸 쿠키를 해석해서 클라이언트에 대한 정보를 알 수 있음
* 세션은 서버에 저장되는 클라이언트 정보, 쿠키는 클라이언트에 저장되는 클라이언트 정보
* 로그인 구현하려면 서버에 세션이 생성되어야 하는데 세션ID는 클라이언트에 쿠키로 저장이 됨
* JSESSIONID라는 쿠키를 클라이언트에 발행 > 클라이언트가 서버에 접속할때 JSESSIONID 쿠키를 서버에 전송

2. 쿠키 구성
(1) 이름(Name) : 쿠키명
(2) 값(Value) : 쿠키값
(3) 유효시간(Expires) : 쿠키의 지속시간
(4) 도메인(Domain) : 쿠키를 전송할 도메인
(5) 경로(Path) : 쿠키를 전송할 요청 경로

3. 쿠키 메소드
- getName() : 쿠키명 획득
- getValue() : 쿠키값 획득
- setValue() : 쿠키값 설정
- setDomain() : 도메인 설정
- getDomain() : 도메인 획득
- setPath() : 경로 설정
- getPath() : 경로 획득
- setMaxAge() : 유효시간 설정
- getMaxAge() : 유효시간 획득
--%>

<%@ page contentType="text/html; charset=UTF-8"%>

<%
	// 쿠키 생성
	Cookie nameCookie = new Cookie("name", "홍길동");
	Cookie ageCookie = new Cookie("age", "30");
	
	// 쿠키 클라이언트에 전송
	response.addCookie(nameCookie);
	response.addCookie(ageCookie);
	
	// 쿠키 변경
	Cookie newNameCookie = new Cookie("name", "강감찬");
	response.addCookie(newNameCookie);
	
	// 쿠키 삭제 (유효시간을 0으로 설정)
	ageCookie.setMaxAge(0);
	response.addCookie(ageCookie);
	
	// 쿠키 확인
	Cookie[] cookies = request.getCookies();
	for (Cookie cookie : cookies) {
		out.print("쿠키명 : " + cookie.getName() + "<br>");
		out.print("쿠키값 : " + cookie.getValue() + "<br>");
		out.print("도메인 : " + cookie.getDomain() + "<br>");
		out.print("경로 : " + cookie.getPath() + "<br>");
		out.print("유효시간 : " + cookie.getMaxAge() + "<br><br>");
	}
%>

















