<%--
application : javax.servlet.jsp.ServletContext
- 어플리케이션 초기화 파라미터
  : 어플리케이션 초기화 될때 저장되는 변수, 전체 서블릿들이 값을 공유하는 변수
- getInitParameter(파라미터명) : 어플리케이션 초기화 파라미터 값 획득
- getInitParameterNames() : 어플리케이션 초기화 파라미터명들을 획득
- getRealPath(경로) : 경로에 해당하는 파일의 서버상 실제 위치 (파일다운로드 시 사용)
- getResourceAsStream(경로) : 경로에 해당하는 파일의 InputStream 획득 (파일다운로드 시 사용)
--%>

<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	out.print(application.getInitParameter("appname") + "<br>");

	Enumeration en = application.getInitParameterNames();
	while (en.hasMoreElements()) {
		String element = (String)en.nextElement();
		out.print("변수명 : " + element + ", ");
		out.print("변수값 : " + application.getInitParameter(element)+"<br>");
	}
	
	out.print(application.getRealPath("/jsp/application.jsp") + "<br>");
	
	InputStream is = application.getResourceAsStream("/jsp/application.jsp");
	
	// 실습 1 : 파일의 문자들을 화면에 출력해 보기
	InputStreamReader isr = new InputStreamReader(is); // 바이트 입력스트림을 문자 입력스트림으로 변환
	BufferedReader br = new BufferedReader(isr);
	String line = "";
	while ((line=br.readLine()) != null) {
		System.out.print(line + "<br>");
	}
	
%>

<button onclick="location.href='/jsp/imgdownload.jsp';">이미지다운로드</button>








































