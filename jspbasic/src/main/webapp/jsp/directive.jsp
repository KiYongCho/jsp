<%--
Directive (디렉티브) : 페이지 지시자

0. 문법 : <%@ 디렉티브 속성명="속성값" ... %>
1. page : JSP페이지에 대한 정보 설정
2. taglib : JSP페이지에서 사용하는 태그라이브러리 설정
3. include : JSP페이지에 포함되는 다른 문서 설정
                 다른 JSP페이지의 코드를 현재 JSP페이지로 가져와서 같이 컴파일
--%>

<%@ page contentType="text/html; charset=UTF-8"%>

​<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:out value="hello" />

<%@ include file="include.jsp" %>

<%
	// int i = 10; // include.jsp내에 int i 선언했으므로 재선언 불가
%>








