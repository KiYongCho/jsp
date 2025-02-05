<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.util.Properties"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	// .properties파일 읽기
	Properties props = new Properties();
	props.load(new FileReader("C:/Users/Administrator/git/repository/jspbasic/src/main/webapp/jsp/mbti/mbti.properties"));
	
	Set entrySet = props.entrySet();
	Iterator it = entrySet.iterator();
	
	while(it.hasNext()) {
		Map.Entry<String, String> entry = (Map.Entry<String, String>)it.next();
		System.out.println(entry.getKey());
		System.out.println(entry.getValue());
	}
%>









