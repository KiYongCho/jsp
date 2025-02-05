<%@ page contentType="text/html; charset=UTF-8"%>

<%
// 속성변수값 획득

// page가 변경되면 사라짐
out.print(pageContext.getAttribute("pageAttr1") + "<br>");

// 새로운 request가 발생하면 사라짐 
out.print(request.getAttribute("requestAttr1") + "<br>");

//세션 무효화
session.invalidate();

// session 만료되면 사라짐
// java.lang.IllegalStateException : 세션 무효화되면 속성변수 접근 불가
// out.print(session.getAttribute("sessionAttr1") + "<br>");

// application 종료되면 사라짐
out.print(application.getAttribute("applicationAttr1") + "<br>");
%>