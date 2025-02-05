<%@page import="java.io.FileReader"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.Map"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	String mbti = request.getParameter("ie") + request.getParameter("sn")
						+ request.getParameter("tf") + request.getParameter("pj");
	
	out.print("당신의 MBTI는 " + mbti + " 입니다!<br><br>");
	
	// .properties파일 읽기
	Properties props = new Properties();
	props.load(new FileReader("C:/Users/Administrator/git/repository/jspbasic/src/main/webapp/jsp/mbti/mbti.properties"));
	
	Set entrySet = props.entrySet();
	Iterator it = entrySet.iterator();
	
	while(it.hasNext()) {
		Map.Entry<String, String> entry = (Map.Entry<String, String>)it.next();
		if (entry.getKey().equals(mbti)) out.print(entry.getValue());
	}
%>

<br><br>
<input type="button" onclick="location.href='start.jsp';" value="다시하기">





