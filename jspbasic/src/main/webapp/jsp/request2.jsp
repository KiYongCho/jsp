<%--
request내장객체의 요청 파라미터 메소드
1. getParameter() : 값 하나
2. getParameterValues() : 값 여러개
3. getParameterNames() : 변수명 여러개
4. getParameterMap() : 변수명과 값을 맵 엔트리로 여러개
 --%>

<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<form action="request2.jsp" method="GET">
이름 : <input type="text" name="name"><br>
나이 : <input type="text" name="age"><br>
취미 : <input type="checkbox" name="hobby" value="mountain"> 등산&nbsp;
	    <input type="checkbox" name="hobby" value="fishing"> 낚시&nbsp;
	    <input type="checkbox" name="hobby" value="reading"> 독서<br>
<input type="submit" value="전송">	     
</form>

<%
	// 변수에 값이 하나인 경우
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	out.print("이름 : " + name + "<br>");
	out.print("나이 : " + age + "<br>");
	
	// 변수에 값이 여러개인 경우
	String[] hobbies = request.getParameterValues("hobby");
	if (hobbies!=null) {
		for (String hobby : hobbies) {
			out.print(hobby + " ");
		}
		out.print("<br>");
	}
	
	// 변수명들
	Enumeration en = request.getParameterNames();
	while (en.hasMoreElements()) {
		out.print(en.nextElement() + " ");
	}
	out.print("<br>");
	
	// 변수명과 값을 맵으로
	Map<String, String[]> paramMap = request.getParameterMap();
	Set<Map.Entry<String, String[]>> paramSet =  paramMap.entrySet();
	for (Map.Entry<String, String[]> entry : paramSet) {
		String key = entry.getKey(); // 변수명
		String[] values = entry.getValue(); // 값
		out.print("변수명 : " + key + ", " + "값 : " + getString(values) + "<br>");
	}
%>

<%!
	private String getString(String[] values) {
		String returnStr = "";
		if (values!=null) {
			for (String str : values) {
				returnStr += str + " ";
			}
		}
		return returnStr;
	}
%>























