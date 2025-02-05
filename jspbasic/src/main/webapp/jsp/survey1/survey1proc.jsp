<%@ page contentType="text/html; charset=UTF-8"%>

<%
	request.setAttribute("name", request.getParameter("name"));
	request.getRequestDispatcher("survey2.jsp").forward(request, response);
%>