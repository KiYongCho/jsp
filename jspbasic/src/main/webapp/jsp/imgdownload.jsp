<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	// 실습 2 : 이미지 다운로드 구현
	InputStream is = application.getResourceAsStream("/img/art.jpg");

	// 다운로드 시 응답헤더 설정
	response.setHeader("Content-Disposition", "attachment; filename=\"art.jpg\"");

	OutputStream os = response.getOutputStream();
	
	byte[] buffer = new byte[1024];
	int readCount = 0;
	while ((readCount=is.read(buffer)) > 0) {
		os.write(buffer, 0, readCount);
	}
%>