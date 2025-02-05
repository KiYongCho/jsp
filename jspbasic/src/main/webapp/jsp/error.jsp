<%--
에러처리
- 에러가 발생하면 이동할 페이지 설정 : <%@ page errorPage="errorPage.jsp" %>
--%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="errorPage.jsp" %>

<%
	int i = 10 / 0;

	try {
		int j = 10 / 0;
	} catch (ArithmeticException ae) {
		ae.printStackTrace();
	}
%>