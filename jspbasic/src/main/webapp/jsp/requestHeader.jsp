<%--
request header 정보
1. getHeader() : 헤더 정보 하나
2. getHeaders() : 헤더 정보 여러개
3. getHeaderNames() : 헤더 이름 여러개
4. getIntHeader() : 정수 헤더 하나
5. getDateHeader() : 데이트 헤더 하나
 --%>

<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	out.print(request.getHeader("User-Agent")+"<br>");

	Enumeration en = request.getHeaders("Accept-Encoding");
	while (en.hasMoreElements()) {
		out.print(en.nextElement());
	}
	out.print("<br>");
	
	int dnt = request.getIntHeader("Dnt");
	out.print(dnt);
	out.print("<br>");
	
	long ms = request.getDateHeader("If-Modified-Since");
	out.print(ms);
	out.print("<br>");
	
	Enumeration en2 = request.getHeaderNames();
	while (en2.hasMoreElements()) {
		String header = (String)en2.nextElement();
		out.print("헤더명 : " + header + ", 헤더값 : " + request.getHeader(header));
		out.print("<br>");
	}
	
%>












