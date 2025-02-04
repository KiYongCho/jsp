<%--
Scriptlet(스크립트릿)
- 스크립트조각
- tomcat에서는 _jspService 메소드 내에 Java코드가 위치
- 스크립트릿내에서 선언한 변수는 _jspService 메소드의 지역 변수
- 형식 : <% %>
 --%>

<%@page import="java.text.SimpleDateFormat"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%@page import="java.util.Date"%>

<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	out.print(sdf.format(date));
%>

<%--
Expression (표현식)
- 출력 => out.print()와 같음
- 형식 : <%= %>
 --%>
 <%="hello"%>
 <%
 	out.print("hello");
 %>
 
 <%--
 Declaration (선언식)
 - JSP내에 메소드나 멤버변수 선언
 - 형식 : <%! %>
 --%>
<%!
	int i = 1; // non-static member variable
	int j = 2;
	public int add(int a, int b) {
		return a + b;
	}
%>
<%
	out.print(add(i, j));
%>
 









