<%@ page contentType="text/html; charset=UTF-8"%>

<%
	request.setAttribute("name", request.getParameter("name"));
	request.setAttribute("hobby", request.getParameterValues("hobby"));
	request.getRequestDispatcher("surveyresult.jsp").forward(request, response);
%>