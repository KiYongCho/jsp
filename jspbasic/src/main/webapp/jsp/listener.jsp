<%@ page contentType="text/html; charset=UTF-8"%>

<%
	// 세션 객체 획득
	HttpSession sess = request.getSession();

	// 세션 소멸
	sess.invalidate();
%>