<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- 
	[서블릿 실습]
	1. SumServlet 클래스 생성
	2. sum.jsp 생성
	3. 두 수를 입력하면 합을 출력
--%>

<form action="/sum" method="POST">
첫번째 수 : <input type="text" name="num1"><br>
두번째 수 : <input type="text" name="num2"><br>
<input type="submit" value="전송">
</form>
