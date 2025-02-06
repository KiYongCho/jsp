<%@ page contentType="text/html; charset=UTF-8"%>

<%
	if (session!=null) {
		session.invalidate(); // 로그아웃
	}
	response.sendRedirect("loginForm.jsp");
%>