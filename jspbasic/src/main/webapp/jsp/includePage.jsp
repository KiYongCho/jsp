<%@ page contentType="text/html; charset=UTF-8"%>

<%
	int i = 10;

	String a = request.getParameter("a");
	String b = request.getParameter("b");
	
	out.print("합계 : " + (Integer.parseInt(a) + Integer.parseInt(b)));
%>