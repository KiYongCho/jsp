<%--
JSP Action Tag
- <jsp:include> : 다른 JSP페이지를 컴파일해서 현재 JSP페이지에 포함시킴
                           <%@ include (인클루드 디렉티브)는 코드를 가져와서 같이 컴파일 
- <jsp:param> : <jsp:include>, <jsp:forward> 시에 파라미터변수를 설정
- <jsp:forward> : 다른 JSP페이지로 포워딩
 --%>

<%@ page contentType="text/html; charset=UTF-8"%>

<%
	int i = 10;
%>

<%--
<jsp:include page="includePage.jsp">
	<jsp:param name="a" value="1"/>
	<jsp:param name="b" value="2"/>
</jsp:include>
 --%>

<jsp:forward page="forwardPage.jsp">
	<jsp:param name="a" value="1"/>
	<jsp:param name="b" value="2"/>
</jsp:forward>




