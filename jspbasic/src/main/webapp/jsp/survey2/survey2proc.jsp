<%@ page contentType="text/html; charset=UTF-8"%>

<%
	String[] hobbies = (String[])request.getParameterValues("hobby");
	String strHobbies = "";
	for (String hobby : hobbies) {
		switch (hobby) {
			case "game": hobby="게임"; break;  
			case "youtube": hobby="유튜브"; break;  
			case "sleeping": hobby="잠자기";   
		}
		strHobbies += hobby + " ";
	}
%>

<jsp:forward page="surveyresult.jsp">
	<jsp:param name="name" value="<%=request.getParameter(\"name\")%>" />
	<jsp:param name="hobby" value="<%=strHobbies%>" />
</jsp:forward>