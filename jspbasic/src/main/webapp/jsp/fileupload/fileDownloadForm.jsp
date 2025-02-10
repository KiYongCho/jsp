<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>filedownload</title>
</head>
<body>
<!-- 
실습
1. D:/embededk/uploadfiles 내에 있는 파일들의 다운로드 링크를 생성
2. FileDownloadServlet을 구현
 -->
 <%
 	File downloadDir = new File("D:/embededk/uploadfiles");
 	File[] fileArr = downloadDir.listFiles();
 	for (File file : fileArr) {
 		String fileName = file.getName();
 %>
 <a href="/filedownload?filename=<%=fileName%>"><%=fileName%> 다운로드</a><br>
<%
 	}
%>
</body>
</html>
















