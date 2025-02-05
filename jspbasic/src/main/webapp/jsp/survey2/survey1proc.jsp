<%@ page contentType="text/html; charset=UTF-8"%>

<jsp:forward page="survey2.jsp">
	<jsp:param name="name" value="<%=request.getParameter(\"name\")%>" />
</jsp:forward>