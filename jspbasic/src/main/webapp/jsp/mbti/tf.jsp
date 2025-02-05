<%@ page contentType="text/html; charset=UTF-8"%>

<form name="frm" action="pj.jsp" method="post">
	<input type="hidden" name="ie" value="<%=request.getParameter("ie")%>">
	<input type="hidden" name="sn" value="<%=request.getParameter("sn")%>">
	<input type="radio" name="tf" value="T"> T&nbsp;&nbsp;
	<input type="radio" name="tf" value="F"> F<br>
	<input type="submit" value="다음">
</form>