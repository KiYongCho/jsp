<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>

<%!
	public void printSum(int a, int b) {
		System.out.println("합계 : " + (a+b));
	}
%>

<%-- JSP 주석 : tomcat이 java변환 시 빠짐 --%>

<!-- HTML 주석 : web browser에서의 주석 -->

<%="jspbasic index.jsp"%>

<%
	// JAVA 주석
	// 스크립트릿(scriptlet) 내에서 선언한 변수는 _jspService메소드의 지역변수
	// 스크립트릿 내에서는 메소드 선언이 불가능
	int i = 3;
	int j = 5;
	out.print("<br>합계 : " + (i+j));
	
	printSum(i, j);
%>

</body>
</html>





