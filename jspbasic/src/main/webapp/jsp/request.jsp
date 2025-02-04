<%--
request 내장객체
- 요청 객체 : 클라이언트가 서버에 보내는 요청 정보를 가진 객체
- JSP가 Servlet Java파일로 변환될때 생성되는 객체
- javax.servlet.http.HttpServletRequest 인터페이스 타입
--%>

<%@ page contentType="text/html; charset=UTF-8"%>

<%
	out.print(request.getRemoteAddr()+"<br>"); // 클라이언트 IP 주소
	out.print(request.getContentLength()+"<br>"); // 컨텐트 길이
	out.print(request.getCharacterEncoding()+"<br>"); // 인코딩
	out.print(request.getContentType()+"<br>"); // 컨텐트 타입
	out.print(request.getProtocol()+"<br>"); // 프로토콜
	out.print(request.getMethod()+"<br>"); // 요청 메소드
	out.print(request.getRequestURI()+"<br>"); // URI
	out.print(request.getRequestURL()+"<br>"); // URL
	out.print(request.getContextPath()+"<br>"); // 컨텍스트루트 = 어플리케이션루트
	out.print(request.getServerName()+"<br>"); // 서버명
	out.print(request.getServerPort()+"<br>"); // 서버포트
%>

<%--
request parameter (요청 파라미터)
- 요청시에 서버에 전송하는 데이터를 저장하는 변수
- GET방식 요청시에는 주소 뒤에 ?변수명=값&변수명=값... 식으로 전달
- POST방식 요청시에는 request body에 변수와 값이 표함되어 전달
 --%>
 
 <a href="request.jsp?var1=1&var2=2">GET방식 전송</a><br>
 <%
 	// 요청 파라미터 값 획득
 	String var1 = request.getParameter("var1");
 	String var2 = request.getParameter("var2");
 	out.print("var1변수의 값 : " + var1 + "<br>");
 	out.print("var2변수의 값 : " + var2 + "<br>");
 %>
 
 <form action="request.jsp" method="POST">
 	이름 : <input type="text" name="name"><br>
 	<input type="submit" value="POST방식 전송">
 </form>
 <%
 	String name = request.getParameter("name");
 	out.print("name변수의 값 : " + name);
 %>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 













