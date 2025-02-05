<%@ page contentType="text/html; charset=UTF-8"%>

<%
	out.print("설문조사 결과<br>");
	out.print("이름 : " + request.getParameter("name") + "<br>");
	out.print("취미 : " + request.getParameter("hobby"));
%>