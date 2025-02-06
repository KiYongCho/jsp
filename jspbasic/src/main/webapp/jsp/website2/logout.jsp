<%@ page contentType="text/html; charset=UTF-8"%>

<%
	if (session!=null) {
		session.invalidate();
	}
	response.sendRedirect("main.jsp");
%>