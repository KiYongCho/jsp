<%--
pageContext : javax.servlet.jsp.PageContext
- JSP페이지의 환경정보
- getRequest() : 요청객체 획득
- getResponse() : 응답객체 획득
- getSession() : 세션객체 획득
- getServletContext() : 서블릿 환경정보 획득 (서블릿컨텍스트 = 어플리케이션)
- getServletConfig() : 서블릿 설정정보 획득
- getOut() : 출력객체 획득
- getException() : 예외객체 획득
- getPage() : 서블릿객체 획득
--%>

<%@ page contentType="text/html; charset=UTF-8"%>

<%
	out.print(pageContext.getRequest()+"<br>");
	out.print(pageContext.getResponse()+"<br>");
	out.print(pageContext.getSession()+"<br>");
	out.print(pageContext.getServletContext()+"<br>");
	out.print(pageContext.getServletConfig()+"<br>");
	out.print(pageContext.getOut()+"<br>");
	out.print(pageContext.getException()+"<br>");
	out.print(pageContext.getPage());
%>










