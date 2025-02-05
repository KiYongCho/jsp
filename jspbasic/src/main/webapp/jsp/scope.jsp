<%--
웹어플리케이션 객체 영역 : 변수의 스코프
- page : JSP페이지 영역
- request : 요청 영역
- session : 세션 영역
- application : 어플리케이션 영역
- setAttribute(변수명, 변수값) : 속성변수 설정
- getAttribute(변수명) : 속성변수값 획득
- removeAttribute(변수명) : 속성변수 제거
- getAttributeNames() : 속성변수명들 획득
--%>

<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%

	// 속성변수 설정
	
	// page scope
	pageContext.setAttribute("pageAttr1", "pageVal1");
	pageContext.setAttribute("pageAttr2", "pageVal2");
	
	// 속성변수 제거
	pageContext.removeAttribute("pageAttr2");
	out.print(pageContext.getAttribute("pageAttr2") + "<br>");
	
	// request scope
	request.setAttribute("requestAttr1", "requestVal1");
	request.setAttribute("requestAttr2", "requestVal2");
	
	// 속성변수명들 획득
	Enumeration en = request.getAttributeNames();
	while (en.hasMoreElements()) {
		out.print(request.getAttribute((String)en.nextElement()) + "<br>");
	}	
	
	// session scope
	session.setAttribute("sessionAttr1", "sessionVal1");
	session.setAttribute("sessionAttr2", "sessionVal2");

	// application scope
	application.setAttribute("applicationAttr1", "applicationVal1");
	application.setAttribute("applicationAttr2", "applicationVal2");
	
	// 속성변수값 획득
	out.print(pageContext.getAttribute("pageAttr1") + "<br>");
	out.print(request.getAttribute("requestAttr1") + "<br>");
	out.print(session.getAttribute("sessionAttr1") + "<br>");
	out.print(application.getAttribute("applicationAttr1") + "<br>");

%>

<%
	// redirection
	// response.sendRedirect("scope2.jsp");

	// forwarding
	// RequestDispatcher rd = request.getRequestDispatcher("scope2.jsp");
	// rd.forward(request, response);
%>






















